
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth import login, authenticate,logout
from apps.Usuario.forms import UserForm,CustomUserCreationForm
from django.contrib.auth.forms import UserCreationForm
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.views.generic import CreateView

from django.core.files.storage import FileSystemStorage
from django.core.files.storage import Storage
from django.core.files.base import ContentFile
from django.contrib.auth.models import User
from apps.Usuario.models import ImagenInfo,HistorialUsuario
from django.urls import reverse_lazy


#Api Google
import io
import os

# Imports the Google Cloud client library
from google.cloud import vision
from google.cloud.vision import types

# Create your views here.
def IndexAplicacion(request):
	print("llegue")
	return render(request,'Aplicacion/index.html')


def info2(request):

	os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = "melvin-afa24119e798.json"	
	vision_client = vision.ImageAnnotatorClient()

	myfile = request.FILES["file1"]

	fs = FileSystemStorage()
	filename = fs.save(myfile.name, myfile)
	file_name = fs.url(filename)

	
	with io.open(file_name,"rb") as image_file:
		content = image_file.read()
		image = types.Image(content=content)
	fs.delete(filename)
	response = vision_client.web_detection(image = image)
	#response2 = vision_client.web_detection(image = image)
	annotations = response.web_detection

	label_data =""
	if annotations.web_entities:	
			c = 0
			print('Labels: ')
			for label in annotations.web_entities:
				if(c==0):

					label_data = label_data + label.description
				else:
					break
				c = c+1
	token = ImagenInfo.objects.filter(nombreimagen=label_data).exists()
	if token == True:

		token2 = ImagenInfo.objects.filter(nombreimagen=label_data)
	


		return render(request,'Aplicacion/resultAplicacion.html',{"labels":label_data , "image":annotations,"informacion" : token2})
	else:
		
		return render(request,'Aplicacion/resultAplicacion.html',{"labels":label_data , "image":annotations})

#------------------------------------------------------------------------------------------------------------