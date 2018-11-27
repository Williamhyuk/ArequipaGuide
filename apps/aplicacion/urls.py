from django.conf.urls import url, include
from apps.aplicacion.views import info2,IndexAplicacion

from django.urls import path


app_name = 'apps'
urlpatterns=[


	path('Result/',info2, name = 'result2'),
	path('indexApl/',IndexAplicacion, name = 'indexApl'),

]