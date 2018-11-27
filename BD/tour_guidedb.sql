-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2018 a las 04:41:59
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tour_guidedb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add imagen info', 7, 'add_imageninfo'),
(20, 'Can change imagen info', 7, 'change_imageninfo'),
(21, 'Can delete imagen info', 7, 'delete_imageninfo'),
(22, 'Can add historial usuario', 8, 'add_historialusuario'),
(23, 'Can change historial usuario', 8, 'change_historialusuario'),
(24, 'Can delete historial usuario', 8, 'delete_historialusuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$XfjyBKzo3uTi$FoFfM5uOrl31cOKj1qsSywFeXrZeZfEUC6kJvOYOKY4=', '2018-07-12 02:41:32.907504', 1, 'admin', 'Renzo', 'Lopez', 'rmzo.cc@gmail.com', 1, 1, '2018-06-25 22:52:12.417547'),
(7, 'pbkdf2_sha256$100000$jGEdt4Q73Fem$viFbHYOh+kn3wsmyYwVpr1fRNPACGc3PpW1kDvf0yhw=', '2018-07-08 02:23:48.775201', 0, 'admin5', 'Neymar', 'da Silva Santos JúniorJúnior', 'admin5@gmail.com', 0, 1, '2018-07-08 00:56:00.453503'),
(8, 'pbkdf2_sha256$100000$CkTlc60gB4CS$9BxRmwAa8s5aAZRqSttQn5sfHC5f5+FMU9MoASovYdo=', '2018-07-08 02:44:42.043613', 0, 'admin7', 'Lionel', 'Messi ', 'admin7@gmail.com', 0, 1, '2018-07-08 01:05:50.183260'),
(9, 'pbkdf2_sha256$100000$dplgKvUgy80H$X2IsBst22jxdWQlp4lw2XwXY5+kwr+15xiUszOVz6Vw=', '2018-07-10 02:45:59.732191', 0, 'admin8', 'qwewqe', 'qweqwe', 'admin8@gmail.com', 0, 1, '2018-07-10 02:45:48.762704');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-06-25 22:54:00.740645', '2', 'dartz', 1, '[{\"added\": {}}]', 3, 1),
(2, '2018-06-25 22:54:23.748246', '2', 'dartz', 2, '[{\"changed\": {\"fields\": [\"email\"]}}]', 3, 1),
(3, '2018-06-25 22:54:43.653341', '2', 'dartz', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\"]}}]', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'Usuario', 'historialusuario'),
(7, 'Usuario', 'imageninfo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-06-25 22:20:43.733483'),
(2, 'auth', '0001_initial', '2018-06-25 22:20:48.169358'),
(3, 'admin', '0001_initial', '2018-06-25 22:20:50.565815'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-06-25 22:20:50.597839'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-06-25 22:20:51.171919'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-06-25 22:20:51.820869'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-06-25 22:20:52.497816'),
(8, 'auth', '0004_alter_user_username_opts', '2018-06-25 22:20:52.544863'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-06-25 22:20:52.831587'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-06-25 22:20:52.849576'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-06-25 22:20:52.869564'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-06-25 22:20:53.547444'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-06-25 22:20:53.964358'),
(14, 'sessions', '0001_initial', '2018-06-25 22:20:54.217317'),
(15, 'Usuario', '0001_initial', '2018-06-26 00:08:57.817901');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0asoh424e1ua0mawic93lhjt8zk8kd56', 'NDhmYmRmOGFhMmVmOThjNjk5ZDdlZmE4NDRiNWU4MGE1ZjdlODYzNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-15 05:26:20.022262'),
('138ostfl7j1n6vpcc3q5ozrzuvwbk1o8', 'MmQ5OTY1MzdiZDlkYjQ2NmI0YWZjNzE1ZDZkNDA4NDRhMjI3NjNhYTp7fQ==', '2018-07-15 04:00:10.681197'),
('2mknyg1arogozv64s8785owe1g28kk4j', 'NDJkNzU5ZGJmODg0ZmM0MDlkMWEwY2ExMjg4MTUzYmQ2NWZjN2I2Njp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIwMjUwZDU3NjAxNGNjZTJhYzc3ODQ4ZmUwMjYwYWM2MjE4NGJmMTg2In0=', '2018-07-16 01:51:15.505410'),
('6yuwzrnkwxxl5onewvnxwsz2nfp3pino', 'Yzg1MzY3MjUwZDk4MjUxYzc5MWY4MjFlY2ZkYWNiY2MzYmRiZDRiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy5Vc3VhcmlvLmJhY2tlbmRzLkVtYWlsQXV0aEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMjUwZDU3NjAxNGNjZTJhYzc3ODQ4ZmUwMjYwYWM2MjE4NGJmMTg2In0=', '2018-07-16 04:19:18.693222'),
('846kl68s8om4sflk64x48lcda5lzzzt4', 'NDJkNzU5ZGJmODg0ZmM0MDlkMWEwY2ExMjg4MTUzYmQ2NWZjN2I2Njp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIwMjUwZDU3NjAxNGNjZTJhYzc3ODQ4ZmUwMjYwYWM2MjE4NGJmMTg2In0=', '2018-07-21 05:29:57.729485'),
('9izm640c0z2n0gbhfe2lvs0vl7r9qw1u', 'NGMxNmJlZDYzZWQ0NjQ0NzcyNWMzNzE0YmFmYjI5NzEwMmE1NzI4Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDI1MGQ1NzYwMTRjY2UyYWM3Nzg0OGZlMDI2MGFjNjIxODRiZjE4NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-19 23:11:12.934145'),
('anecbrihrftnj7zhnc0pi4m79m3wp8c6', 'NDUzYmE2NGExZDQ3OTJhMDc1YWY4NjM3OGRjMjM4OTI1YTlmNzZhMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhcHBzLlVzdWFyaW8uYmFja2VuZHMuRW1haWxBdXRoQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-07-15 03:09:52.603617'),
('apwfmmeldzf7s9yoac6fd3dzm9tg6o95', 'NDhmYmRmOGFhMmVmOThjNjk5ZDdlZmE4NDRiNWU4MGE1ZjdlODYzNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-15 14:36:41.333848'),
('d5ffbqpuod1iv0j1wi00pde1lh6tvrlq', 'NDJkNzU5ZGJmODg0ZmM0MDlkMWEwY2ExMjg4MTUzYmQ2NWZjN2I2Njp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIwMjUwZDU3NjAxNGNjZTJhYzc3ODQ4ZmUwMjYwYWM2MjE4NGJmMTg2In0=', '2018-07-15 04:51:11.042966'),
('fz8fnqeuehep1u9a5ykledfgz4ie6zsd', 'MmQ5OTY1MzdiZDlkYjQ2NmI0YWZjNzE1ZDZkNDA4NDRhMjI3NjNhYTp7fQ==', '2018-07-15 04:01:20.212749'),
('n7jnfwrpw41f1siendsl88kqfn5zbxxw', 'NDhmYmRmOGFhMmVmOThjNjk5ZDdlZmE4NDRiNWU4MGE1ZjdlODYzNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-15 14:41:09.458773'),
('peoj3ppfi1p1s7c0crewfgsif41gi1qm', 'MmQ5OTY1MzdiZDlkYjQ2NmI0YWZjNzE1ZDZkNDA4NDRhMjI3NjNhYTp7fQ==', '2018-07-15 04:02:16.590154'),
('pqvf3wuyzfl2lvy6cdoby7p4ymc8pl38', 'NDhmYmRmOGFhMmVmOThjNjk5ZDdlZmE4NDRiNWU4MGE1ZjdlODYzNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-15 04:22:52.984735'),
('pvwbsn3op7pxf3mocdy1ejkzjtarhg7a', 'NDUzYmE2NGExZDQ3OTJhMDc1YWY4NjM3OGRjMjM4OTI1YTlmNzZhMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhcHBzLlVzdWFyaW8uYmFja2VuZHMuRW1haWxBdXRoQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-07-23 20:36:23.199195'),
('rnl5kj9fsfi8yf27l3h3yx1vi7kvr0tk', 'NDhmYmRmOGFhMmVmOThjNjk5ZDdlZmE4NDRiNWU4MGE1ZjdlODYzNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-15 15:00:59.879777'),
('t6iz14nhd83p2ybvzzeae6wqx4ps6nqx', 'NDhmYmRmOGFhMmVmOThjNjk5ZDdlZmE4NDRiNWU4MGE1ZjdlODYzNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyNTBkNTc2MDE0Y2NlMmFjNzc4NDhmZTAyNjBhYzYyMTg0YmYxODYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-15 04:28:25.734955'),
('vli7wdr2b6gyi9dg4c5vv9c5x9xkwg3t', 'Yzg1MzY3MjUwZDk4MjUxYzc5MWY4MjFlY2ZkYWNiY2MzYmRiZDRiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy5Vc3VhcmlvLmJhY2tlbmRzLkVtYWlsQXV0aEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMjUwZDU3NjAxNGNjZTJhYzc3ODQ4ZmUwMjYwYWM2MjE4NGJmMTg2In0=', '2018-07-15 03:40:51.251085'),
('ytrmcei4s05fmrruwgqpanrmt9muhnzf', 'NmZkZTg0YzM4ZjAwZmY0NWRkM2Y5ZmQ0ZGNhMzFiZGIxY2UyODdlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjg1MGE2YmE4MmU3ZmIzNTViMDA0OWZlMzBmYWMwOTY4MWI5MmY3NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIn0=', '2018-07-26 02:41:32.929490'),
('zmaij17mqxs9nu4rhdxd66cx67sp2l5g', 'NDJkNzU5ZGJmODg0ZmM0MDlkMWEwY2ExMjg4MTUzYmQ2NWZjN2I2Njp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMuVXN1YXJpby5iYWNrZW5kcy5FbWFpbEF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIwMjUwZDU3NjAxNGNjZTJhYzc3ODQ4ZmUwMjYwYWM2MjE4NGJmMTg2In0=', '2018-07-15 04:58:26.034959');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_historialusuario`
--

CREATE TABLE `usuario_historialusuario` (
  `id` int(11) NOT NULL,
  `Register_date` datetime(6) NOT NULL,
  `ImagenInfo_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_historialusuario`
--

INSERT INTO `usuario_historialusuario` (`id`, `Register_date`, `ImagenInfo_id`, `user_id`) VALUES
(1, '2018-07-06 00:00:00.000000', 1, 1),
(2, '2018-07-07 04:54:29.113623', 1, 1),
(3, '2018-07-07 04:57:35.419764', 1, 1),
(4, '2018-07-07 05:24:28.229503', 1, 1),
(5, '2018-07-07 05:30:05.067191', 1, 1),
(6, '2018-07-07 05:30:19.980667', 1, 1),
(7, '2018-07-07 05:31:35.484644', 1, 1),
(8, '2018-07-07 05:32:12.169219', 1, 1),
(9, '2018-07-07 05:32:26.466864', 1, 1),
(10, '2018-07-07 05:32:46.822381', 1, 1),
(11, '2018-07-07 14:05:50.195583', 1, 1),
(12, '2018-07-07 16:08:56.225182', 1, 1),
(13, '2018-07-07 16:10:53.127963', 1, 1),
(14, '2018-07-07 16:38:20.820322', 4, 1),
(15, '2018-07-07 18:00:20.349697', 1, 1),
(16, '2018-07-07 18:02:24.749441', 1, 1),
(17, '2018-07-08 02:24:13.724716', 1, 7),
(18, '2018-07-09 20:20:30.556866', 1, 1),
(19, '2018-07-09 20:20:45.125225', 1, 1),
(20, '2018-07-09 20:21:20.191314', 1, 1),
(21, '2018-07-09 20:23:32.588011', 1, 1),
(22, '2018-07-09 20:25:46.564324', 1, 1),
(23, '2018-07-09 20:28:57.382506', 1, 1),
(24, '2018-07-09 20:30:12.373639', 1, 1),
(25, '2018-07-09 20:32:41.351870', 1, 1),
(26, '2018-07-09 20:33:10.191381', 1, 1),
(27, '2018-07-09 20:36:31.536954', 1, 1),
(28, '2018-07-09 20:37:45.692767', 1, 1),
(29, '2018-07-09 20:38:30.833647', 1, 1),
(30, '2018-07-09 20:38:47.634101', 1, 1),
(31, '2018-07-09 20:39:14.347933', 1, 1),
(32, '2018-07-09 20:39:29.124743', 1, 1),
(33, '2018-07-09 20:44:38.357537', 1, 1),
(34, '2018-07-09 20:45:17.612815', 1, 1),
(35, '2018-07-09 20:46:06.732952', 1, 1),
(36, '2018-07-09 20:47:05.579621', 1, 1),
(37, '2018-07-09 20:47:45.545325', 1, 1),
(38, '2018-07-09 20:49:26.014176', 1, 1),
(39, '2018-07-09 20:51:52.331840', 1, 1),
(40, '2018-07-09 20:52:13.691709', 1, 1),
(41, '2018-07-09 21:01:22.112032', 1, 1),
(42, '2018-07-09 21:02:15.267947', 1, 1),
(43, '2018-07-09 21:02:56.309582', 1, 1),
(44, '2018-07-09 21:05:04.787558', 1, 1),
(45, '2018-07-09 21:05:27.591456', 1, 1),
(46, '2018-07-09 21:05:59.927748', 1, 1),
(47, '2018-07-09 21:06:13.128495', 1, 1),
(48, '2018-07-09 21:08:55.878743', 1, 1),
(49, '2018-07-09 21:13:38.654262', 1, 1),
(50, '2018-07-09 21:16:56.740194', 1, 1),
(51, '2018-07-09 21:18:31.488449', 1, 1),
(52, '2018-07-09 21:18:45.273749', 1, 1),
(53, '2018-07-09 21:19:40.120290', 1, 1),
(54, '2018-07-09 21:19:52.280906', 1, 1),
(55, '2018-07-09 21:21:16.989408', 1, 1),
(56, '2018-07-09 21:25:00.063961', 1, 1),
(57, '2018-07-09 21:25:17.172960', 1, 1),
(58, '2018-07-09 21:29:07.753640', 1, 1),
(59, '2018-07-09 21:29:45.686187', 1, 1),
(60, '2018-07-10 02:36:43.805598', 1, 1),
(61, '2018-07-10 02:46:15.323579', 1, 9),
(62, '2018-07-10 02:55:11.146791', 4, 1),
(63, '2018-07-10 02:55:37.749734', 1, 1),
(64, '2018-07-10 02:56:02.796571', 1, 1),
(65, '2018-07-11 21:49:38.719607', 1, 1),
(66, '2018-07-11 21:59:14.997671', 2, 1),
(67, '2018-07-11 22:01:19.237265', 2, 1),
(68, '2018-07-11 22:50:50.343898', 1, 1),
(69, '2018-07-11 22:53:41.014420', 1, 1),
(70, '2018-07-11 22:54:03.536449', 1, 1),
(71, '2018-07-11 22:54:43.396988', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_imageninfo`
--

CREATE TABLE `usuario_imageninfo` (
  `idimagen` int(11) NOT NULL,
  `nombreimagen` varchar(65) NOT NULL,
  `ciudad` varchar(15) NOT NULL,
  `provincia` varchar(15) NOT NULL,
  `distrito` varchar(15) NOT NULL,
  `direccion` varchar(15) NOT NULL,
  `longitud` varchar(45) NOT NULL,
  `latitud` varchar(45) NOT NULL,
  `description` longtext NOT NULL,
  `construccion` varchar(20) DEFAULT NULL,
  `estilo_arquitectonico` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_imageninfo`
--

INSERT INTO `usuario_imageninfo` (`idimagen`, `nombreimagen`, `ciudad`, `provincia`, `distrito`, `direccion`, `longitud`, `latitud`, `description`, `construccion`, `estilo_arquitectonico`) VALUES
(1, 'Yanahuara District', 'Arequipa', 'Arequipa', 'Yahanhuara', '', '-71.5421', '-16.387378', 'Yanahuara posee una población de 20.021 habitantes, con una densidad de 9100.5 hab/km2, distribuidas en alrededor de 5 áreas, llámense, Yanahuara tradicional (Yanahuara vieja), el área antigua del distrito caracterizado por su pintoresco aspecto español; Juan XXIII y Umacollo, áreas de época repúblicana con alta densidad poblacional; Piedra Santa el área más moderna de del distrito, con lujosos condominios y apartamentos; Pampa de Camarones, un pueblo tardicional alejado de la Yanahuara Vieja, y rodeado por la campiña Arequipeña, en general la población de Yanahuara tiene una mayor calidad de vida que el resto de Arequipa, principalmente debido a la situación económica de sus residentes, que son atraídos por las características del distrito.', NULL, NULL),
(2, 'Monastery of Santa Catalina de Siena, Arequipa', 'Arequipa', 'Arequipa', 'Cercado', 'SanaCatalina301', '-71.536792', '-16.395207', 'La ciudadela se ubicó al sur del Perú en la ciudad de Arequipa fundada el 10 de septiembre de 1579 y ubicada en una zona que destaca por su belleza natural, clima acogedor y que dispone de un gran material con el cual se construye y se sigue haciendo la arquitectura de esta ciudad, el Sillar. En el monasterio existen dos tipos, el sillar blanco que proviene del Volcán Chachani y el rosado del Misti, este último emblema de la ciudad. La ciudadela ocupa un terreno de 20.000 metros cuadrados y está absolutamente aislada de la ciudad a pesar de que se ubica en el corazón de ésta. Un gran y sólido muro de 4 metros de altura aislaba la vida de las mujeres que habitaban el monasterio.', NULL, 'arquitectura colonial de Arequipa.'),
(4, 'Plaza de Armas Arequipa', 'Arequipa', 'Arequipa', 'Cercado', '', '-71.536906', '-16.3988', 'Cuando se fundó la ciudad el 15 de agosto de 1540 por García Manuel de Carvajal en el valle del río Chili como \"Villa de la Asunción de Nuestra Señora del Valle Hermoso de Arequipala\" la ciudad empezó a construirse con ella la plaza mayor.\r\n\r\nAl poco tiempo de fundada la villa, Carlos V de Alemania y I de España la elevó a la categoría de ciudad, por real cédula fechada en Fuensalida (Toledo), el 22 de septiembre de 1541.\r\n\r\nEn 1844 hubo un gran incendio destruyó casi toda la antigua Catedral, los Portales de Arequipa entre otros por lo que fue obligado a reconstruir. La reconstrucción fue el último gran cambio que tuvo', '1540-1656', 'Neorrenacentista'),
(5, 'Basilica Cathedral of Arequipa', 'Arequipa', 'Arequipa', 'Cercado', '', '-71.536906', '-16.3988', 'La Catedral de Arequipa se encuentra ubicada frente a la Plaza de Armas de Arequipa. El estilo predominante en la edificación es el neorrenacentista y el gótico. En el interior de la iglesia pueden observarse dos torres estilizadas, una bóveda y un gran órgano de Loret de Bélgica, tallado en madera por Boisini-Rigot en 1879.\r\n\r\nCatedral de Arequipa\r\nCatedral de ArequipaLa construcción de la Catedral originalmente comenzó en 1612 y fue terminada en 1656, debido a desastres naturales, la Catedral fue reconstruida un par de veces. Actualmente, la Catedral cuenta con una espléndida sillería, fachadas a base de sillar blanco y tallas en mármol de Carrara. El arquitecto encargado del diseño original de la Catedral fue el Lucas Poblete.\r\nLos horarios de visita son de lunes a sábado de 07:00 a 11:30 horas y desde las 17:00 hasta las 19:30 horas. Los domingos a partir de las 7:00 hasta las 13:00 Horas y de 17:00 a 19 horas.', '1612', ' neorrenacentista y el gótico'),
(6, 'Church of the Company', 'Arequipa', 'Arequipa', 'Cercado', '', '-71.536506', '-16.399811', 'La construcción de la Iglesia de la Compañía se inicia en el año de 1590, estuvo bajo la dirección del hermano Felipe y fue terminada de construir en 1698.\r\n\r\nAl igual que en otros edificios de Arequipa, el material para su construcción procede de las canteras del volcán Misti. Las propiedades físicas de esta roca volcánica la convierten en una piedra muy fácil de labrar pero dificultan la talla en profundidad por su textura porosa. Esto dio lugar al desarrollo de un tipo de decoración superficial que, como en el caso de la iglesia de la Compañía, traspasa los límites de la portada y cubre parcialmente el resto del paramento formando un gran tapiz en piedra.', '1590', 'Barroco'),
(7, 'Barrio de San Lázaro', 'Arequipa', 'Arequipa', 'Cercado', '', '-71.5350442', '-16.3932582', 'Ubicarse en el centro histórico de la ciudad de Arequipa, es apreciar toda la belleza arquitectónica de sus casonas, templos, museos, teatros y la Plaza de Armas, construidas de sillar.\r\n\r\nEmpero uno de los lugares que impresiona y que actualmente, es visitado también por turistas, es el barrio de San Lázaro, que fue el primer y uno de los barrios más antiguos que tuvo la Ciudad Blanca antes de su fundación en 1540.\r\n\r\nSus angostas calles, sus casonas de sillar, su pequeño templo y su plaza de campo redondo, hacen de San Lázaro un simpático barriecito ubicado en pleno centro histórico de la ciudad, considerado Patrimonio Cultural de la Humanidad.\r\n\r\nEste barrio está ubicado entre las calles Jerusalén, Puente Grau y avenida Juan de la Torre, y actualmente ha sido recuperado casi en su totalidad.', NULL, NULL),
(8, 'Sabandía mill', 'Arequipa', 'Arequipa', 'Sabandia', '', '-71.5017851', '-16.4567343', 'Este impresionante Molino , se encuentra en perfecto estado de conservación y puede ser visitado y ver su funcionamiento.\r\nEstá rodeado de centenarios arboles, tiene una bella cascada de agua, cuya fuerza mueve las pesadas piedras para moler.\r\nAsimismo, se pueden apreciar una linda colección de cactus y Suculentas, diversas flores y plantas locales.\r\nUn gran toro de pelea Arequipeño, vicuñas,  llamas , alpacas, cuyes, gallos y otras aves representativas de la zona.\r\nEsta ubicado en el distrito de Sabandia, a unos 20 minutos del centro de la ciudad de Arequipa.', '1621', NULL),
(9, 'Salinas y Aguada Blanca National Reserve', 'Arequipa', 'Arequipa', 'Salinas', '', '-71.219', '-16.1021', 'La Reserva Nacional Salinas y Aguada Blanca fue creada el 9 de agosto de 1979. Está ubicada en los departamentos peruanos de Arequipa y Moquegua y tiene una superficie de 366.936 hectáreas.\r\nLa zona comprende varios volcanes como el Misti, el Pichu Pichu, el Chachani, el Tacune y el Ubinas, montañas y lagunas, entre ellas la laguna de Salinas.\r\nHay una gran variedad de especies de aves y mamíferos (flamenco, parihuana, taruca, vicuña).', NULL, NULL),
(10, 'Casa del Moral', 'Arequipa', 'Arequipa', 'Cercado', 'Moral 308', '-71.537778', '-16.396944', 'Uno de los monumentos más antiguos de la arquitectura arequipeña lo encontramos en la Casa del Moral, de estilo barroco y del siglo XVIII. Es la primera casa que se reconstruyó e inauguró como museo, dando muestra que era la casa típica de Arequipa.\r\n\r\nEl nombre de esta casa se debe a un añejo árbol de mora que crece en el patio principal y pertenece al Banco de Crédito. Toda persona puede acercarse a conocerla pues hoy en día funciona como museo.\r\n\r\nEn su fachada se puede apreciar una portada de gran tamaño hecho a base de sillar, donde dos ángeles sostienen una corona sobre un escudo, que a su vez está compuesto por un castillo, un puma, un ave y dos llaves cruzadas. Y esto es completado con labradas ventanas.\r\n\r\nEn el interior se han puesto en exhibición muebles coloniales y del Perú republicano. Sus grandes habitaciones poseen bóvedas de sillar con tallados, así como las puertas, ventanas y anagramas de Jesús, José y María también tallados en el centro de estas bóvedas.', '1730', 'Barroco'),
(11, 'Colca Canyon', 'Arequipa', 'Caylloma ', 'Chivay', '', '-71.879167', '-15.597222', 'Colca es uno de los mayores destinos turísticos del Perú; ubicado al extremo noreste de Arequipa en la Provincia de Caylloma. Colca proviene de las palabras Collaguas y Cabanas, dos etnias que habitaban a lo largo del Río Colca. Este cañón tiene una profundidad de 4160 metros.\r\n\r\nLa provincia de Caylloma, designada genéricamente como “Colca”, forma parte del departamento de Arequipa en el Perú y está ubicada en el extremo noreste de esta región. La provincia tiene como escenario principal el Cañón del Colca y es en su entorno que se han asentado las poblaciones que la identifican.\r\n\r\nCaylloma, cuyo nombre proviene de uno de los pueblos del lugar, tiene una superficie de 11 990,24 km² y limita con el departamento del Cuzco por el norte, con las provincias de Camaná y Arequipa por el sur, con el departamento de Puno por el este, con la provincia de Castilla por el oeste y con la provincia de Condesuyos por el noroeste.', NULL, NULL),
(12, 'Casona Tristan del Pozo', 'Arequipa', 'Arequipa', 'Cercado', '', '-71.535928', '-16.398109', 'Casa Tristán del Pozo es un edificio que para muchos estudiosos de la arquitectura, el frontón de la fachada de esta casona es el mejor exponente de la ornamentación típica de Arequipa, en el Perú.\r\n\r\nUbicada en la primera cuadra de la calle San Francisco, la casona restaurada en diversas oportunidades tiene como fecha de construcción la de 1738. El general Domingo Carlos Tristán del Pozo y su esposa Ana María Carazas, adquirieron el solar donde se levanta la casona de Andrés de Rosas y hermanos el 24 de junio de 1736.\r\n\r\nA partir de esa fecha la casona ha sido propiedad del José Joaquín Tristán; del obispo Manuel Abad Yllana, de la Orden de San Camilo, así como del coronel Raymundo Gutiérrez de Otero, las familias Gutiérrez y Cossio y, Ugarteche y Gutiérrez, Manuel Ballón, Juana Gómez Ballón, Joaquín del Carpio, Juana Manuela Gómez, Roberto Reinecke, José Domingo Montesinos y la sociedad comercial Guillermo Ricketts e hijos. Actualmente es la sede de la sucursal del Banco Continental.', '1738', NULL),
(13, 'Casa Goyeneche', 'Arequipa', 'Arequipa', 'Sachaca', '', '-71.567007', '-16.42992', 'El Palacio de Goyeneche es una de las construcciones civiles más conocidas y turísticas de Arequipa. Situada en la confluencia de las Calles de la Merced y del Palacio Viejo, sobre un solar que figuraba en la primitiva traza urbana que, antes de la fundación de Arequipa, aprobó Francisco Pizarro.\r\n\r\nConstruyó esta casona el arquitecto Gaspar Báez en el siglo XVIII sobre las ruinas de un antiguo palacete (palacio viejo) construido en 1558 por Bernardino de Ávila. Sin embargo, el terremoto de 1782 dañó enormemente su estructura.\r\n\r\nEn situación de casi derribo, el predio fue adquirido por Juan de Goyeneche y Aguerrevere, quien lo restaura para residencia de su familia. Años más tarde, el Arzobispo Goyeneche, Obispo de Arequipa desde 1818 y más tarde Arzobispo de Lima, encarga al famoso Lucas Poblete en 1837 la tarea de reedificar la casona tras haberle confiado la traza de la Iglesia Catedral de Arequipa. En 1840 queda terminada la mansión.', '1558', NULL),
(14, 'Basilica', 'Arequipa', 'Arequipa', 'Cercado', 'Calle Zela 103', '-16.395151', '-71.534623', 'Fue fundada en 1552. Fue fundado gracias a la donación de los terrenos por parte de Don Lucas Martínez Begazo. La construcción quedo a cargo el padre Fr. Alonso Rincón. En 1569 el arquitecto Gaspar Báez traza el plano de edificación. En 1978 fue abierto al publico.\r\n\r\nSe caracteriza por sus muros de sillar y la bóveda de ladrillo con una sola nave, además de su estilo mestizo.', '1552', NULL),
(15, 'Basilica and Convent of Santo Domingo', 'Arequipa', 'Arequipa', 'Cercado', '', '-71.5346028', '-16.4004849', 'La Iglesia y Convento de Santo Domingo es un conjunto religioso, que fue construido durante la época Colonial. Aquel se encuentra en el Centro Histórico de la ciudad de Arequipa, en la provincia y departamento homónimo.\r\n\r\nLa Iglesia y el convento, son edificaciones que fueron hechas en los primeros años de la Colonia; la construcción, desde sus inicios, estuvo a cargo de la orden de los dominicos, los primeros religiosos en llegar a esta zona del país. Se sabe, que parte de la estructura del templo actual, que ha llegado hasta nosotros, es originaria del año 1634, aunque se tiene conocimiento, de que antes de este templo, existió una construcción religiosa menor, también adjudicada a la orden dominicana.\r\n\r\nSe dice, que para aproximadamente el año 1544, existió en el lugar  una vicaria dominica, que en ese entonces, fue elevada a convento y que devino en la edificación de una estructura sencilla, hecha a base de adobe, que se vio acompañada de un también sencillo templo; pese a que esta construcción de mitad del siglo XVI, fue el primer edificio de la historia de la Iglesia y Convento de Santo Domingo, su endeble material, hizo que para 1582, cuando sucedió un terrible terremoto en la zona, no quedara nada de  aquellos; y los miembros de la orden, en conjunto con los feligreses, se vieron en la necesidad de construir un segundo templo que recién fuera concluido en el siglo XVII.', '1634', NULL),
(16, 'Monasterio de la Recoleta', 'Arequipa', 'Arequipa', 'Yanahuara', '', '-71.5420416', '-16.393896', 'El Convento de la Recoleta es un convento y museo en Arequipa. Fue construido en el año 1648 en el barrio de Antiquilla, pero recién abrió sus puertas al público en 1978. Este convento posee claustros de estilo virreinal local. Uno de ellos, rectangular y denominado Alcantarino, es el mejor conservado.\r\n\r\nLos estilos arquitectónicos que conserva este sencillo y humilde convento van desde el romántico hasta el neogótico, debido a la serie de reformas que se han dado durante el paso de los siglos. El interior del convento cuenta con cuatro claustros y once ambientes, entre ellos, se destaca el Museo Arqueológico y Antropológico de Historia Natural y de Arte Religioso, el último con una colección rica de la escuela cuzqueña de pinturas al lienzo.\r\n\r\nOtra atracción del convento es su biblioteca, con 25.000 libros, muchos de ellos de los siglos XVI hasta el XVIII. Además, cuenta con una pinacoteca de la Escuela cusqueña de pintura.', '1648', NULL),
(17, 'Casa Irriberry', 'Arequipa', 'Arequipa', 'Cercado', '', '-71.539583', '-16.3979991', 'Bajo este nombre se agrupan dos bellas casonas del centro de la ciudad, que son ambas propiedad de la Universidad Nacional de San Agustín, y que ademas mantienen comunicación por el fondo con otras dos propiedades universitarias.\r\nLa llamada Casa Arróspide, o también Iriberry, ubicada en la esquina que forman las salles San Agustín y Santa Catalina, es la base del Complejo Cultural Chávez de la Rosa.\r\nEsta casona, denominada por algunos como parlante, por las diferentes inscripciones que luce, se vincula por un costado con otra casona cuya fachada se encuentra en la primera cuadra de la calle San Agustín.\r\nLuce en su portada la jaculatoria del Viernes Santo: \"Santus Deus, Santus Fortis, Santus Inmortalys, Miserere Nobis. Amen\".\r\nSobre una de las portadas del Primer Patio se puede leer otra jaculatoria: \"Alabado sea el Santísimo Sacramento del Altar\", y en el pórtico que separa el primero del segundo patio se puede leer en alto relieve la inscripción de la fecha de la construcción de la casa, y de un pedido del anónimo constructor: \"Esta casa se hizo el año de 1743. Por Dios le pido al que viviere en ella, un Padre Nuestro\".', NULL, NULL),
(18, 'Selva Alegre Park', 'Arequipa', 'Arequipa', 'Selva Alegre ', '', '-71.532284', '-16.389404', 'El Parque Selva Alegre es un parque ubicado en Arequipa. Es utilizado como espacio de relajación. Cuenta con un lago artificial para paseos en bote, áreas de juegos para niños y un zoológico.\r\n\r\nEl parque es administrado por la Municipalidad Provincial de Arequipa. La laguna se caracteriza por ser verdosa y con algas. La laguna es alimentada por una acequia.1​\r\n\r\nEn el 2014 los juegos para niños fue clausurado por la fiscalía.2​\r\n\r\nDesde febrero del 2012 el ingreso al parque cuesta un sol.3​ En el 2016 cuesta 1.50 soles por persona.4​', NULL, NULL),
(19, '	\r\nMisti', 'Arequipa', 'Arequipa', '', '', '-71.408889', '-16.294444', 'El Misti es un estratovolcán ubicado en el sur del Perú, a 18 km al NE de la Plaza de Armas de la ciudad de Arequipa donde viven cerca de 1.3 millones de habitantes. Es considerado como uno de los 16 volcanes activos y/o potencialmente activos de esta parte de la cordillera de los Andes. Es monitoreado por el Observatorio Vulcanológico del Sur (OVS) del Instituto Geofísico del Perú (IGP) y por el Observatorio Vulcanológico del INGEMMET (OVI), cuyos resultados se muestran en sus respectivas páginas institucionales. Durante la época colonial la mayor parte de las casas fueron construidas con el sillar, piedra blanca formada con la deposición de cenizas y lapilli durante las erupciones piroclásticas del volcán. La última vez que el Misti demostró algún tipo de actividad relevante, como por ejemplo grandes fumarolas, fue en 1870. Durante una expedición dirigida por los arqueólogos José Antonio Chávez y Johan Reinhard en 1998 se encontraron cerca de la cumbre seis esqueletos incaicos, que se presume, fueron sacrificios humanos.', NULL, NULL),
(20, 'National University of Saint Augustine', 'Arequipa', 'Arequipa', '', '', ' -71.537028', '-16.397194', ' Fueron los Padres Dominicos quienes, después de arduas y constantes gestiones, lograron que el rey Felipe V concediera Licencia de Universidad Real y Pontificia “Intra Claustra” en el Convento de Santo Domingo, por cédula de 22 de enero de 1714, la que quedó inaugurada solemnemente en 1719 y que luego paralizó su vida por no poder el Convento sostenerla, según aparece en el trabajo del recordado maestro arequipeño don Federico M. Ugarte, publicado en la Revista Universitaria en 1929.\r\n\r\nMás tarde es la Comunidad Mercedaria que siempre anduvo rivalizando con los Dominicos y Jesuitas en propagar la instrucción, que en el Capítulo Provincial de la Orden, celebrado en esta ciudad en el mes de Julio de 1765, acordó la fundación de un Colegio Real y la Universidad Pontificia constituida según las normas de la célebre Universidad de Alcalá de Henares, tal como aparece de los Documentos para la Historia de la Universidad del historiador arequipeño Padre Víctor M. Barriga publicados en la Revista Nro. 37 de la UNSA. Lamentablemente el expediente inicial se perdió en las Oficinas de Cámara y los trámites quedaron paralizados', '1828', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `usuario_historialusuario`
--
ALTER TABLE `usuario_historialusuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Usuario_historialusu_ImagenInfo_id_0b0ee534_fk_Usuario_i` (`ImagenInfo_id`),
  ADD KEY `Usuario_historialusuario_user_id_c0696fe8_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `usuario_imageninfo`
--
ALTER TABLE `usuario_imageninfo`
  ADD PRIMARY KEY (`idimagen`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuario_historialusuario`
--
ALTER TABLE `usuario_historialusuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `usuario_imageninfo`
--
ALTER TABLE `usuario_imageninfo`
  MODIFY `idimagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `usuario_historialusuario`
--
ALTER TABLE `usuario_historialusuario`
  ADD CONSTRAINT `Usuario_historialusu_ImagenInfo_id_0b0ee534_fk_Usuario_i` FOREIGN KEY (`ImagenInfo_id`) REFERENCES `usuario_imageninfo` (`idimagen`),
  ADD CONSTRAINT `Usuario_historialusuario_user_id_c0696fe8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
