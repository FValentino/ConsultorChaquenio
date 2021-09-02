USE [master]
GO
/****** Object:  Database [ConsultorChaquenio]    Script Date: 1/9/2021 17:35:44 ******/
CREATE DATABASE [ConsultorChaquenio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ConsultorChaquenio', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ConsultorChaquenio.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ConsultorChaquenio_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ConsultorChaquenio_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ConsultorChaquenio] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ConsultorChaquenio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ConsultorChaquenio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET ARITHABORT OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ConsultorChaquenio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ConsultorChaquenio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ConsultorChaquenio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ConsultorChaquenio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ConsultorChaquenio] SET  MULTI_USER 
GO
ALTER DATABASE [ConsultorChaquenio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ConsultorChaquenio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ConsultorChaquenio] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ConsultorChaquenio] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ConsultorChaquenio] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ConsultorChaquenio] SET QUERY_STORE = OFF
GO
USE [ConsultorChaquenio]
GO
/****** Object:  Table [dbo].[auth_group]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_group_permissions]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_group_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_permission]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[content_type_id] [int] NOT NULL,
	[codename] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorias_categoria]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorias_categoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoria] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_admin_log]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_admin_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action_time] [datetime2](7) NOT NULL,
	[object_id] [nvarchar](max) NULL,
	[object_repr] [nvarchar](200) NOT NULL,
	[action_flag] [smallint] NOT NULL,
	[change_message] [nvarchar](max) NOT NULL,
	[content_type_id] [int] NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_content_type]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_content_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app_label] [nvarchar](100) NOT NULL,
	[model] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_migrations]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_migrations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[applied] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_session]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_session](
	[session_key] [nvarchar](40) NOT NULL,
	[session_data] [nvarchar](max) NOT NULL,
	[expire_date] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[session_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[juego_funcionamiento]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[juego_funcionamiento](
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[preguntas_pregunta]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[preguntas_pregunta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enunciado] [nvarchar](max) NOT NULL,
	[categoria_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ranking_ranking]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ranking_ranking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime2](7) NOT NULL,
	[puntaje_total] [numeric](2, 2) NOT NULL,
	[id_usuario_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[respuestas_respuesta]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[respuestas_respuesta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[respuestas] [nvarchar](max) NOT NULL,
	[respuesta_correcta] [bit] NOT NULL,
	[pregunta_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_usuario]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[password] [nvarchar](128) NOT NULL,
	[last_login] [datetime2](7) NULL,
	[is_superuser] [bit] NOT NULL,
	[username] [nvarchar](150) NOT NULL,
	[first_name] [nvarchar](30) NOT NULL,
	[last_name] [nvarchar](150) NOT NULL,
	[email] [nvarchar](254) NOT NULL,
	[is_staff] [bit] NOT NULL,
	[is_active] [bit] NOT NULL,
	[date_joined] [datetime2](7) NOT NULL,
	[localidad] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_usuario_groups]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_usuario_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_usuario_user_permissions]    Script Date: 1/9/2021 17:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_usuario_user_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[auth_permission] ON 

INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (1, N'Can add log entry', 1, N'add_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (2, N'Can change log entry', 1, N'change_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (3, N'Can delete log entry', 1, N'delete_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (4, N'Can view log entry', 1, N'view_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (5, N'Can add permission', 2, N'add_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (6, N'Can change permission', 2, N'change_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (7, N'Can delete permission', 2, N'delete_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (8, N'Can view permission', 2, N'view_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (9, N'Can add group', 3, N'add_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (10, N'Can change group', 3, N'change_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (11, N'Can delete group', 3, N'delete_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (12, N'Can view group', 3, N'view_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (13, N'Can add content type', 4, N'add_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (14, N'Can change content type', 4, N'change_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (15, N'Can delete content type', 4, N'delete_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (16, N'Can view content type', 4, N'view_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (17, N'Can add session', 5, N'add_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (18, N'Can change session', 5, N'change_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (19, N'Can delete session', 5, N'delete_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (20, N'Can view session', 5, N'view_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (21, N'Can add user', 6, N'add_usuario')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (22, N'Can change user', 6, N'change_usuario')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (23, N'Can delete user', 6, N'delete_usuario')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (24, N'Can view user', 6, N'view_usuario')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (25, N'Can add categoria', 7, N'add_categoria')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (26, N'Can change categoria', 7, N'change_categoria')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (27, N'Can delete categoria', 7, N'delete_categoria')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (28, N'Can view categoria', 7, N'view_categoria')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (29, N'Can add pregunta', 8, N'add_pregunta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (30, N'Can change pregunta', 8, N'change_pregunta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (31, N'Can delete pregunta', 8, N'delete_pregunta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (32, N'Can view pregunta', 8, N'view_pregunta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (33, N'Can add respuesta', 9, N'add_respuesta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (34, N'Can change respuesta', 9, N'change_respuesta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (35, N'Can delete respuesta', 9, N'delete_respuesta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (36, N'Can view respuesta', 9, N'view_respuesta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (37, N'Can add funcionamiento', 10, N'add_funcionamiento')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (38, N'Can change funcionamiento', 10, N'change_funcionamiento')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (39, N'Can delete funcionamiento', 10, N'delete_funcionamiento')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (40, N'Can view funcionamiento', 10, N'view_funcionamiento')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (41, N'Can add ranking', 11, N'add_ranking')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (42, N'Can change ranking', 11, N'change_ranking')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (43, N'Can delete ranking', 11, N'delete_ranking')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (44, N'Can view ranking', 11, N'view_ranking')
SET IDENTITY_INSERT [dbo].[auth_permission] OFF
GO
SET IDENTITY_INSERT [dbo].[categorias_categoria] ON 

INSERT [dbo].[categorias_categoria] ([id], [categoria]) VALUES (1, N'Cultura y arte')
INSERT [dbo].[categorias_categoria] ([id], [categoria]) VALUES (2, N'Historia')
INSERT [dbo].[categorias_categoria] ([id], [categoria]) VALUES (3, N'Deporte')
INSERT [dbo].[categorias_categoria] ([id], [categoria]) VALUES (4, N'Geografía')
INSERT [dbo].[categorias_categoria] ([id], [categoria]) VALUES (5, N'Economía')
INSERT [dbo].[categorias_categoria] ([id], [categoria]) VALUES (6, N'Ciencia y Educación')
INSERT [dbo].[categorias_categoria] ([id], [categoria]) VALUES (7, N'Entretenimiento')
SET IDENTITY_INSERT [dbo].[categorias_categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[django_admin_log] ON 

INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (1, CAST(N'2021-09-01T19:53:06.0092620' AS DateTime2), N'1', N'Cultura y arte', 1, N'[{"added": {}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (2, CAST(N'2021-09-01T19:53:17.3070360' AS DateTime2), N'2', N'Historia', 1, N'[{"added": {}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (3, CAST(N'2021-09-01T19:53:27.8217060' AS DateTime2), N'3', N'Deporte', 1, N'[{"added": {}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (4, CAST(N'2021-09-01T19:53:37.2495270' AS DateTime2), N'4', N'Geografía', 1, N'[{"added": {}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (5, CAST(N'2021-09-01T19:54:08.9693850' AS DateTime2), N'5', N'Economía', 1, N'[{"added": {}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (6, CAST(N'2021-09-01T19:54:19.0203380' AS DateTime2), N'6', N'Ciencia y Educación', 1, N'[{"added": {}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (7, CAST(N'2021-09-01T19:54:28.2507990' AS DateTime2), N'7', N'Entretenimiento', 1, N'[{"added": {}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (8, CAST(N'2021-09-01T19:54:55.0517190' AS DateTime2), N'1', N'Resistencia es conocida como:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (9, CAST(N'2021-09-01T19:55:31.2473690' AS DateTime2), N'1', N'La ciudad de las esculturas', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (10, CAST(N'2021-09-01T19:55:39.3403990' AS DateTime2), N'2', N'Ciudad Museo', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (11, CAST(N'2021-09-01T19:55:48.3906250' AS DateTime2), N'3', N'Ciudad Capital', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (12, CAST(N'2021-09-01T19:59:08.3758730' AS DateTime2), N'2', N'¿Cuántas esculturas hay en Resistencia?', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (13, CAST(N'2021-09-01T19:59:21.8901850' AS DateTime2), N'4', N'200', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (14, CAST(N'2021-09-01T19:59:30.6883290' AS DateTime2), N'5', N'700', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (15, CAST(N'2021-09-01T19:59:41.4244050' AS DateTime2), N'6', N'600', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (16, CAST(N'2021-09-01T20:00:07.7910990' AS DateTime2), N'3', N'En la bandera del Chaco hay un arado rodeado de 25 estrellas ¿Qué representan?', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (17, CAST(N'2021-09-01T20:00:25.2325450' AS DateTime2), N'7', N'Los departamentos provinciales', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (18, CAST(N'2021-09-01T20:00:37.6990680' AS DateTime2), N'8', N'Las ciudades principales', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (19, CAST(N'2021-09-01T20:00:48.1236080' AS DateTime2), N'9', N'Grandes personajes que forzaron Chaco', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (20, CAST(N'2021-09-01T20:01:20.5835130' AS DateTime2), N'4', N'En un emblemático edificio de la ciudad de Resistencia se encuentra un mural del reconocido pintor Emilio Pettoruti ¿Dónde se encuentra emplazado?', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (21, CAST(N'2021-09-01T20:01:37.5128790' AS DateTime2), N'10', N'La Municipalidad de la Ciudad', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (22, CAST(N'2021-09-01T20:01:57.5005480' AS DateTime2), N'11', N'El Fogón de los Arrieros', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (23, CAST(N'2021-09-01T20:02:09.7399700' AS DateTime2), N'12', N'Casa de Gobierno', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (24, CAST(N'2021-09-01T20:02:30.9503820' AS DateTime2), N'5', N'La Fiesta Nacional del Algodón se desarrolla en:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (25, CAST(N'2021-09-01T20:02:48.2078110' AS DateTime2), N'13', N'Charata', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (26, CAST(N'2021-09-01T20:02:55.4880820' AS DateTime2), N'14', N'Gancedo', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (27, CAST(N'2021-09-01T20:03:06.5310310' AS DateTime2), N'15', N'Presidencia Roque Sáenz Peña', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (28, CAST(N'2021-09-01T20:04:29.0332020' AS DateTime2), N'6', N'La palabra Chacú del cual deriva el nombre de nuestra provincia, tenía un significado ¿Cuál era?', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (29, CAST(N'2021-09-01T20:04:44.0229170' AS DateTime2), N'16', N'Caza comunal de animales', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (30, CAST(N'2021-09-01T20:04:55.2306640' AS DateTime2), N'17', N'Nombre de un árbol que abunda en la región', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (31, CAST(N'2021-09-01T20:05:06.4099840' AS DateTime2), N'18', N'Nombre de un animal', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (32, CAST(N'2021-09-01T20:05:26.1164180' AS DateTime2), N'7', N'¿Quién fue el primer gobernador del Territorio Nacional del Chaco?', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (33, CAST(N'2021-09-01T20:05:39.8283600' AS DateTime2), N'19', N'Gral. Lorenzo Winter', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (34, CAST(N'2021-09-01T20:05:47.8779590' AS DateTime2), N'20', N'Gral. Julio de Vedia', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (35, CAST(N'2021-09-01T20:05:57.0310300' AS DateTime2), N'21', N'Gral. Antonio Dónovan', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (36, CAST(N'2021-09-01T20:06:17.3870010' AS DateTime2), N'8', N'El Puente General Belgrano que une las provincias de Chaco y Corrientes se terminó de construir en:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (37, CAST(N'2021-09-01T20:06:31.5390230' AS DateTime2), N'22', N'1973', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (38, CAST(N'2021-09-01T20:06:42.9603930' AS DateTime2), N'23', N'1974', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (39, CAST(N'2021-09-01T20:06:51.4520170' AS DateTime2), N'24', N'1976', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (40, CAST(N'2021-09-01T20:07:08.5558780' AS DateTime2), N'9', N'Desde cuándo existe la Provincia del Chaco:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (41, CAST(N'2021-09-01T20:07:21.8016140' AS DateTime2), N'25', N'8 de Agosto de 1951', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (42, CAST(N'2021-09-01T20:07:30.2590300' AS DateTime2), N'26', N'8 de Agosto de 1958', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (43, CAST(N'2021-09-01T20:07:39.4151980' AS DateTime2), N'27', N'8 de Agosto de 1955', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (44, CAST(N'2021-09-01T20:07:59.0644430' AS DateTime2), N'10', N'La primera ciudad colonial del Chaco fue:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (45, CAST(N'2021-09-01T20:08:20.3721450' AS DateTime2), N'28', N'Esteco', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (46, CAST(N'2021-09-01T20:08:30.9972630' AS DateTime2), N'29', N'Concepción del Bermejo', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (47, CAST(N'2021-09-01T20:08:39.8996590' AS DateTime2), N'30', N'San Fernando del Río Negro', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (48, CAST(N'2021-09-01T20:08:59.2960600' AS DateTime2), N'11', N'En el ámbito automovilístico deportivo Chaco tiene un exponente a nivel nacional e internacional, ¿Quién es?', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (49, CAST(N'2021-09-01T20:09:17.1499990' AS DateTime2), N'31', N'Juan Manuel Silva', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (50, CAST(N'2021-09-01T20:09:24.6875060' AS DateTime2), N'32', N'Giorgio Carrara', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (51, CAST(N'2021-09-01T20:09:32.6177370' AS DateTime2), N'33', N'Marcos Siebert', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (52, CAST(N'2021-09-01T20:10:08.4684330' AS DateTime2), N'12', N'En el ámbito de los juegos olímpicos, el Chaco tiene un medallista en:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (53, CAST(N'2021-09-01T20:10:26.5669230' AS DateTime2), N'34', N'Básquet', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (54, CAST(N'2021-09-01T20:10:36.7818470' AS DateTime2), N'35', N'Fútbol', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (55, CAST(N'2021-09-01T20:10:49.9847580' AS DateTime2), N'36', N'Jockey', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (56, CAST(N'2021-09-01T20:11:13.8431690' AS DateTime2), N'13', N'Marcela Gómez, chaqueña, participó en los Juegos Olímpicos de Tokio en:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (57, CAST(N'2021-09-01T20:11:35.1484760' AS DateTime2), N'37', N'Natación', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (58, CAST(N'2021-09-01T20:11:44.3445640' AS DateTime2), N'38', N'Remo', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (59, CAST(N'2021-09-01T20:11:53.8964710' AS DateTime2), N'39', N'Atletismo', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (60, CAST(N'2021-09-01T20:12:13.5994620' AS DateTime2), N'14', N'El club de fútbol más antiguo del Chaco es:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (61, CAST(N'2021-09-01T20:12:28.9822080' AS DateTime2), N'40', N'For Ever', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (62, CAST(N'2021-09-01T20:12:43.8026650' AS DateTime2), N'41', N'Sarmiento', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (63, CAST(N'2021-09-01T20:12:52.4114830' AS DateTime2), N'42', N'Don Orione', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (64, CAST(N'2021-09-01T20:13:16.2050830' AS DateTime2), N'15', N'La ciudad de las Breñas logró jugar en el Campeonato Argentino de Clubes en:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (65, CAST(N'2021-09-01T20:13:31.0356990' AS DateTime2), N'43', N'Baloncesto', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (66, CAST(N'2021-09-01T20:13:39.9575610' AS DateTime2), N'44', N'Fútbol', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (67, CAST(N'2021-09-01T20:13:50.5094660' AS DateTime2), N'45', N'Natación', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (68, CAST(N'2021-09-01T20:14:11.7220800' AS DateTime2), N'16', N'¿En qué sectores se divide geográficamente la provincia del Chaco?', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (69, CAST(N'2021-09-01T20:14:29.3037370' AS DateTime2), N'46', N'Litoral Chaqueño, centro Chaqueño e Impenetrable Chaqueño', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (70, CAST(N'2021-09-01T20:14:39.1191730' AS DateTime2), N'47', N'Litoral Chaqueño e Impenetrable Chaqueño', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (71, CAST(N'2021-09-01T20:14:48.3743050' AS DateTime2), N'48', N'Chaco Boreal y Chaco Austral', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (72, CAST(N'2021-09-01T20:15:04.9143640' AS DateTime2), N'17', N'Al norte el límite natural establecido entre la Provincia de Chaco y Formosa es:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (73, CAST(N'2021-09-01T20:15:20.9385690' AS DateTime2), N'49', N'Pilcomayo', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (74, CAST(N'2021-09-01T20:15:31.8308680' AS DateTime2), N'50', N'Paraná', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (75, CAST(N'2021-09-01T20:15:41.1959960' AS DateTime2), N'51', N'Bermejo', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (76, CAST(N'2021-09-01T20:15:59.9662430' AS DateTime2), N'18', N'La superficie total de la provincia del Chaco es de:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (77, CAST(N'2021-09-01T20:16:16.2264850' AS DateTime2), N'52', N'99.633 Km²', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (78, CAST(N'2021-09-01T20:16:26.6325940' AS DateTime2), N'53', N'32.565 Km²', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (79, CAST(N'2021-09-01T20:16:38.2579320' AS DateTime2), N'54', N'29.900 Km²', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (80, CAST(N'2021-09-01T20:16:54.8857750' AS DateTime2), N'19', N'¿Cuántos departamentos tiene la provincia del Chaco?', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (81, CAST(N'2021-09-01T20:17:08.1691510' AS DateTime2), N'55', N'25', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (82, CAST(N'2021-09-01T20:17:18.6689830' AS DateTime2), N'56', N'20', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (83, CAST(N'2021-09-01T20:17:39.6800360' AS DateTime2), N'57', N'10', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (84, CAST(N'2021-09-01T20:17:53.4573180' AS DateTime2), N'20', N'¿Cuántas rutas nacionales recorren la provincia?', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (85, CAST(N'2021-09-01T20:18:10.6590160' AS DateTime2), N'58', N'5', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (86, CAST(N'2021-09-01T20:18:21.4739110' AS DateTime2), N'59', N'4', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (87, CAST(N'2021-09-01T20:18:31.6169620' AS DateTime2), N'60', N'3', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (88, CAST(N'2021-09-01T20:19:45.7598480' AS DateTime2), N'21', N'La producción destacada chaqueña que perdura en la memoria y porla cual se la reconoce a la provincia fue:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (89, CAST(N'2021-09-01T20:20:00.7685830' AS DateTime2), N'61', N'Caña de azúcar', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (90, CAST(N'2021-09-01T20:20:11.7306070' AS DateTime2), N'62', N'Algodón', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (91, CAST(N'2021-09-01T20:20:23.0208510' AS DateTime2), N'63', N'Producción de tanino', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (92, CAST(N'2021-09-01T20:20:40.7304010' AS DateTime2), N'22', N'A inicios del siglo XX, la actividad económica más importante del territorio era:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (93, CAST(N'2021-09-01T20:20:56.9688200' AS DateTime2), N'64', N'Algodón', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (94, CAST(N'2021-09-01T20:21:06.8616350' AS DateTime2), N'65', N'Pesca', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (95, CAST(N'2021-09-01T20:21:17.4392200' AS DateTime2), N'66', N'Caza', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (96, CAST(N'2021-09-01T20:21:46.1908990' AS DateTime2), N'23', N'El tanino se desarrolló en:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (97, CAST(N'2021-09-01T20:22:01.2184300' AS DateTime2), N'67', N'Resistencia', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (98, CAST(N'2021-09-01T20:22:14.7747380' AS DateTime2), N'68', N'Puerto Tirol', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (99, CAST(N'2021-09-01T20:22:28.2070440' AS DateTime2), N'69', N'Vicentini', 1, N'[{"added": {}}]', 9, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (100, CAST(N'2021-09-01T20:24:02.4503500' AS DateTime2), N'24', N'Una de las localidades algodoneras fue:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (101, CAST(N'2021-09-01T20:24:20.5820380' AS DateTime2), N'70', N'Resistencia', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (102, CAST(N'2021-09-01T20:24:29.2963360' AS DateTime2), N'71', N'Margarita Belén', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (103, CAST(N'2021-09-01T20:24:45.8703200' AS DateTime2), N'72', N'Quitilipi', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (104, CAST(N'2021-09-01T20:25:36.6586380' AS DateTime2), N'25', N'Una de las Reservas Naturales del Chaco es:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (105, CAST(N'2021-09-01T20:25:52.4036800' AS DateTime2), N'73', N'Reserva Natural Provincial Fuerte Esperanza', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (106, CAST(N'2021-09-01T20:26:02.1142040' AS DateTime2), N'74', N'Campo del Cielo', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (107, CAST(N'2021-09-01T20:26:10.9649090' AS DateTime2), N'75', N'Villa Río Bermejito', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (108, CAST(N'2021-09-01T20:26:35.0377850' AS DateTime2), N'26', N'La población actual del Chaco oscila entre:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (109, CAST(N'2021-09-01T20:26:50.6383830' AS DateTime2), N'76', N'300.000', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (110, CAST(N'2021-09-01T20:27:00.7629680' AS DateTime2), N'77', N'2.000.000', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (111, CAST(N'2021-09-01T20:27:10.5518470' AS DateTime2), N'78', N'1.000.000', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (112, CAST(N'2021-09-01T20:27:26.2960900' AS DateTime2), N'27', N'Un escritor reconocido en el ámbito chaqueño recibió el Premio Pionero de la Letras Chaqueñas, otorgado por la provincia del Chaco y la SADE local en 1985. ¿Quién fue?', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (113, CAST(N'2021-09-01T20:27:41.5004750' AS DateTime2), N'79', N'Tony Zalazar', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (114, CAST(N'2021-09-01T20:27:53.2261990' AS DateTime2), N'80', N'Aledo Luis Meloni', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (115, CAST(N'2021-09-01T20:28:06.4760050' AS DateTime2), N'81', N'Tete Romero', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (116, CAST(N'2021-09-01T20:28:24.8616460' AS DateTime2), N'28', N'¿Cuál es la flor provincial del Chaco?', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (117, CAST(N'2021-09-01T20:28:39.8937650' AS DateTime2), N'82', N'Flor del cardo', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (118, CAST(N'2021-09-01T20:28:51.5892550' AS DateTime2), N'83', N'Flor del Ceibo', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (119, CAST(N'2021-09-01T20:29:03.1328920' AS DateTime2), N'84', N'Flor rosada del palo borracho', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (120, CAST(N'2021-09-01T20:29:23.8248980' AS DateTime2), N'29', N'La ley 1532 divido a la Gobernación del Chaco en:', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (121, CAST(N'2021-09-01T20:29:42.2593010' AS DateTime2), N'85', N'Dos Gobernaciones (Chaco Austral y Chaco Central)', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (122, CAST(N'2021-09-01T20:29:55.0170320' AS DateTime2), N'86', N'Tres Gobernaciones', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (123, CAST(N'2021-09-01T20:30:05.7284890' AS DateTime2), N'87', N'Cuatro Gobernaciones', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (124, CAST(N'2021-09-01T20:30:25.3604150' AS DateTime2), N'30', N'¿Qué Parques Nacionales existen en el Chaco?', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (125, CAST(N'2021-09-01T20:31:13.8099780' AS DateTime2), N'88', N'Parque Nacional Chaco', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (126, CAST(N'2021-09-01T20:31:28.8864970' AS DateTime2), N'89', N'Parque Nacional El Impenetrable', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (127, CAST(N'2021-09-01T20:31:40.9913670' AS DateTime2), N'90', N'Parque Nacional Iberá', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (128, CAST(N'2021-09-01T20:32:08.0501140' AS DateTime2), N'31', N'Por Decreto N° 1491 el Gobierno de la Provincia del Chaco se declaró a un instrumento musical como “Patrimonio Cultural de la provincia del Chaco”, ¿Cuál es?', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (129, CAST(N'2021-09-01T20:32:27.7977030' AS DateTime2), N'91', N'Acordeón', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (130, CAST(N'2021-09-01T20:32:40.4645250' AS DateTime2), N'92', N'N´viké', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (131, CAST(N'2021-09-01T20:32:52.4455000' AS DateTime2), N'93', N'Charango', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (132, CAST(N'2021-09-01T20:33:08.3372360' AS DateTime2), N'32', N'Un conjunto coral chaqueño fue reconocido como “Patrimonio Cultural Viviente” ¿Cuál es?', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (133, CAST(N'2021-09-01T20:33:22.3998070' AS DateTime2), N'94', N'El coro polifónico de Resistencia', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (134, CAST(N'2021-09-01T20:33:32.3763060' AS DateTime2), N'95', N'El coro de niños', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (135, CAST(N'2021-09-01T20:33:43.1044260' AS DateTime2), N'96', N'El coro Chelaalapí', 1, N'[{"added": {}}]', 9, 1)
SET IDENTITY_INSERT [dbo].[django_admin_log] OFF
GO
SET IDENTITY_INSERT [dbo].[django_content_type] ON 

INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (1, N'admin', N'logentry')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (3, N'auth', N'group')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (2, N'auth', N'permission')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (7, N'categorias', N'categoria')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (4, N'contenttypes', N'contenttype')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (10, N'juego', N'funcionamiento')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (8, N'preguntas', N'pregunta')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (11, N'ranking', N'ranking')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (9, N'respuestas', N'respuesta')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (5, N'sessions', N'session')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (6, N'usuarios', N'usuario')
SET IDENTITY_INSERT [dbo].[django_content_type] OFF
GO
SET IDENTITY_INSERT [dbo].[django_migrations] ON 

INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (1, N'contenttypes', N'0001_initial', CAST(N'2021-09-01T19:49:53.6480450' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (2, N'contenttypes', N'0002_remove_content_type_name', CAST(N'2021-09-01T19:49:54.8468370' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (3, N'auth', N'0001_initial', CAST(N'2021-09-01T19:49:54.9374700' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (4, N'auth', N'0002_alter_permission_name_max_length', CAST(N'2021-09-01T19:49:54.9929450' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (5, N'auth', N'0003_alter_user_email_max_length', CAST(N'2021-09-01T19:49:55.0185420' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (6, N'auth', N'0004_alter_user_username_opts', CAST(N'2021-09-01T19:49:55.0422510' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (7, N'auth', N'0005_alter_user_last_login_null', CAST(N'2021-09-01T19:49:55.0682600' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (8, N'auth', N'0006_require_contenttypes_0002', CAST(N'2021-09-01T19:49:55.0807630' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (9, N'auth', N'0007_alter_validators_add_error_messages', CAST(N'2021-09-01T19:49:55.1054400' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (10, N'auth', N'0008_alter_user_username_max_length', CAST(N'2021-09-01T19:49:55.1296290' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (11, N'auth', N'0009_alter_user_last_name_max_length', CAST(N'2021-09-01T19:49:55.1523090' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (12, N'auth', N'0010_alter_group_name_max_length', CAST(N'2021-09-01T19:49:56.2531450' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (13, N'auth', N'0011_update_proxy_permissions', CAST(N'2021-09-01T19:49:56.2792880' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (14, N'usuarios', N'0001_initial', CAST(N'2021-09-01T19:49:56.3328730' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (15, N'admin', N'0001_initial', CAST(N'2021-09-01T19:49:56.4233210' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (16, N'admin', N'0002_logentry_remove_auto_add', CAST(N'2021-09-01T19:49:56.4743730' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (17, N'admin', N'0003_logentry_add_action_flag_choices', CAST(N'2021-09-01T19:49:56.5076670' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (18, N'categorias', N'0001_initial', CAST(N'2021-09-01T19:49:56.5312730' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (19, N'juego', N'0001_initial', CAST(N'2021-09-01T19:49:56.5582790' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (20, N'preguntas', N'0001_initial', CAST(N'2021-09-01T19:49:56.5806910' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (21, N'ranking', N'0001_initial', CAST(N'2021-09-01T19:49:56.6153690' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (22, N'ranking', N'0002_ranking_id_usuario', CAST(N'2021-09-01T19:49:56.6601640' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (23, N'respuestas', N'0001_initial', CAST(N'2021-09-01T19:49:56.6966740' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (24, N'sessions', N'0001_initial', CAST(N'2021-09-01T19:49:56.7280310' AS DateTime2))
SET IDENTITY_INSERT [dbo].[django_migrations] OFF
GO
SET IDENTITY_INSERT [dbo].[preguntas_pregunta] ON 

INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (1, N'Resistencia es conocida como:', 1)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (2, N'¿Cuántas esculturas hay en Resistencia?', 1)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (3, N'En la bandera del Chaco hay un arado rodeado de 25 estrellas ¿Qué representan?', 1)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (4, N'En un emblemático edificio de la ciudad de Resistencia se encuentra un mural del reconocido pintor Emilio Pettoruti ¿Dónde se encuentra emplazado?', 1)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (5, N'La Fiesta Nacional del Algodón se desarrolla en:', 1)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (6, N'La palabra Chacú del cual deriva el nombre de nuestra provincia, tenía un significado ¿Cuál era?', 2)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (7, N'¿Quién fue el primer gobernador del Territorio Nacional del Chaco?', 2)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (8, N'El Puente General Belgrano que une las provincias de Chaco y Corrientes se terminó de construir en:', 2)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (9, N'Desde cuándo existe la Provincia del Chaco:', 2)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (10, N'La primera ciudad colonial del Chaco fue:', 2)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (11, N'En el ámbito automovilístico deportivo Chaco tiene un exponente a nivel nacional e internacional, ¿Quién es?', 3)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (12, N'En el ámbito de los juegos olímpicos, el Chaco tiene un medallista en:', 3)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (13, N'Marcela Gómez, chaqueña, participó en los Juegos Olímpicos de Tokio en:', 3)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (14, N'El club de fútbol más antiguo del Chaco es:', 3)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (15, N'La ciudad de las Breñas logró jugar en el Campeonato Argentino de Clubes en:', 3)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (16, N'¿En qué sectores se divide geográficamente la provincia del Chaco?', 4)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (17, N'Al norte el límite natural establecido entre la Provincia de Chaco y Formosa es:', 4)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (18, N'La superficie total de la provincia del Chaco es de:', 4)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (19, N'¿Cuántos departamentos tiene la provincia del Chaco?', 4)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (20, N'¿Cuántas rutas nacionales recorren la provincia?', 4)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (21, N'La producción destacada chaqueña que perdura en la memoria y porla cual se la reconoce a la provincia fue:', 5)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (22, N'A inicios del siglo XX, la actividad económica más importante del territorio era:', 5)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (23, N'El tanino se desarrolló en:', 5)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (24, N'Una de las localidades algodoneras fue:', 5)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (25, N'Una de las Reservas Naturales del Chaco es:', 5)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (26, N'La población actual del Chaco oscila entre:', 6)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (27, N'Un escritor reconocido en el ámbito chaqueño recibió el Premio Pionero de la Letras Chaqueñas, otorgado por la provincia del Chaco y la SADE local en 1985. ¿Quién fue?', 6)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (28, N'¿Cuál es la flor provincial del Chaco?', 6)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (29, N'La ley 1532 divido a la Gobernación del Chaco en:', 6)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (30, N'¿Qué Parques Nacionales existen en el Chaco?', 6)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (31, N'Por Decreto N° 1491 el Gobierno de la Provincia del Chaco se declaró a un instrumento musical como “Patrimonio Cultural de la provincia del Chaco”, ¿Cuál es?', 7)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (32, N'Un conjunto coral chaqueño fue reconocido como “Patrimonio Cultural Viviente” ¿Cuál es?', 7)
SET IDENTITY_INSERT [dbo].[preguntas_pregunta] OFF
GO
SET IDENTITY_INSERT [dbo].[respuestas_respuesta] ON 

INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (1, N'La ciudad de las esculturas', 1, 1)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (2, N'Ciudad Museo', 0, 1)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (3, N'Ciudad Capital', 0, 1)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (4, N'200', 0, 2)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (5, N'700', 0, 2)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (6, N'600', 1, 2)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (7, N'Los departamentos provinciales', 1, 3)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (8, N'Las ciudades principales', 0, 3)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (9, N'Grandes personajes que forzaron Chaco', 0, 3)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (10, N'La Municipalidad de la Ciudad', 0, 4)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (11, N'El Fogón de los Arrieros', 0, 4)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (12, N'Casa de Gobierno', 1, 4)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (13, N'Charata', 0, 5)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (14, N'Gancedo', 0, 5)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (15, N'Presidencia Roque Sáenz Peña', 1, 5)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (16, N'Caza comunal de animales', 1, 6)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (17, N'Nombre de un árbol que abunda en la región', 0, 6)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (18, N'Nombre de un animal', 0, 6)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (19, N'Gral. Lorenzo Winter', 0, 7)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (20, N'Gral. Julio de Vedia', 1, 7)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (21, N'Gral. Antonio Dónovan', 0, 7)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (22, N'1973', 0, 8)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (23, N'1974', 1, 8)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (24, N'1976', 0, 8)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (25, N'8 de Agosto de 1951', 1, 9)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (26, N'8 de Agosto de 1958', 0, 9)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (27, N'8 de Agosto de 1955', 0, 9)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (28, N'Esteco', 0, 10)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (29, N'Concepción del Bermejo', 1, 10)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (30, N'San Fernando del Río Negro', 0, 10)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (31, N'Juan Manuel Silva', 1, 11)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (32, N'Giorgio Carrara', 0, 11)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (33, N'Marcos Siebert', 0, 11)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (34, N'Básquet', 1, 12)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (35, N'Fútbol', 0, 12)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (36, N'Jockey', 0, 12)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (37, N'Natación', 0, 13)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (38, N'Remo', 0, 13)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (39, N'Atletismo', 1, 13)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (40, N'For Ever', 0, 14)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (41, N'Sarmiento', 1, 14)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (42, N'Don Orione', 0, 14)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (43, N'Baloncesto', 1, 15)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (44, N'Fútbol', 0, 15)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (45, N'Natación', 0, 15)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (46, N'Litoral Chaqueño, centro Chaqueño e Impenetrable Chaqueño', 1, 16)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (47, N'Litoral Chaqueño e Impenetrable Chaqueño', 0, 16)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (48, N'Chaco Boreal y Chaco Austral', 0, 16)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (49, N'Pilcomayo', 0, 17)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (50, N'Paraná', 0, 17)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (51, N'Bermejo', 1, 17)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (52, N'99.633 Km²', 1, 18)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (53, N'32.565 Km²', 0, 18)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (54, N'29.900 Km²', 0, 18)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (55, N'25', 1, 19)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (56, N'20', 0, 19)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (57, N'10', 0, 19)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (58, N'5', 0, 20)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (59, N'4', 0, 20)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (60, N'3', 1, 20)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (61, N'Caña de azúcar', 0, 21)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (62, N'Algodón', 1, 21)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (63, N'Producción de tanino', 0, 21)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (64, N'Algodón', 1, 22)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (65, N'Pesca', 0, 22)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (66, N'Caza', 0, 22)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (67, N'Resistencia', 0, 23)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (68, N'Puerto Tirol', 0, 23)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (69, N'Vicentini', 1, 23)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (70, N'Resistencia', 0, 24)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (71, N'Margarita Belén', 0, 24)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (72, N'Quitilipi', 1, 24)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (73, N'Reserva Natural Provincial Fuerte Esperanza', 1, 25)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (74, N'Campo del Cielo', 0, 25)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (75, N'Villa Río Bermejito', 0, 25)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (76, N'300.000', 0, 26)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (77, N'2.000.000', 0, 26)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (78, N'1.000.000', 1, 26)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (79, N'Tony Zalazar', 0, 27)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (80, N'Aledo Luis Meloni', 1, 27)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (81, N'Tete Romero', 0, 27)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (82, N'Flor del cardo', 0, 28)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (83, N'Flor del Ceibo', 0, 28)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (84, N'Flor rosada del palo borracho', 1, 28)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (85, N'Dos Gobernaciones (Chaco Austral y Chaco Central)', 1, 29)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (86, N'Tres Gobernaciones', 0, 29)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (87, N'Cuatro Gobernaciones', 0, 29)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (88, N'Parque Nacional Chaco', 1, 30)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (89, N'Parque Nacional El Impenetrable', 0, 30)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (90, N'Parque Nacional Iberá', 0, 30)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (91, N'Acordeón', 0, 31)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (92, N'N´viké', 1, 31)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (93, N'Charango', 0, 31)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (94, N'El coro polifónico de Resistencia', 0, 32)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (95, N'El coro de niños', 0, 32)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (96, N'El coro Chelaalapí', 1, 32)
SET IDENTITY_INSERT [dbo].[respuestas_respuesta] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios_usuario] ON 

INSERT [dbo].[usuarios_usuario] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined], [localidad]) VALUES (1, N'pbkdf2_sha256$180000$uvzJBRToZpk0$TppcCbmBJkP6WOiylRDRwA2dA8ErVV1PpHrLysvESdE=', CAST(N'2021-09-01T19:52:22.1554510' AS DateTime2), 1, N'gfive', N'', N'', N'g@gmail.com', 1, 1, CAST(N'2021-09-01T19:50:40.6087230' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[usuarios_usuario] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_group_name_a6ea08ec_uniq]    Script Date: 1/9/2021 17:35:45 ******/
ALTER TABLE [dbo].[auth_group] ADD  CONSTRAINT [auth_group_name_a6ea08ec_uniq] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_b120cbf9]    Script Date: 1/9/2021 17:35:45 ******/
CREATE NONCLUSTERED INDEX [auth_group_permissions_group_id_b120cbf9] ON [dbo].[auth_group_permissions]
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_permission_id_0cd325b0_uniq]    Script Date: 1/9/2021 17:35:45 ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_group_permissions_group_id_permission_id_0cd325b0_uniq] ON [dbo].[auth_group_permissions]
(
	[group_id] ASC,
	[permission_id] ASC
)
WHERE ([group_id] IS NOT NULL AND [permission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_permission_id_84c5c92e]    Script Date: 1/9/2021 17:35:45 ******/
CREATE NONCLUSTERED INDEX [auth_group_permissions_permission_id_84c5c92e] ON [dbo].[auth_group_permissions]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_permission_content_type_id_2f476e4b]    Script Date: 1/9/2021 17:35:45 ******/
CREATE NONCLUSTERED INDEX [auth_permission_content_type_id_2f476e4b] ON [dbo].[auth_permission]
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_permission_content_type_id_codename_01ab375a_uniq]    Script Date: 1/9/2021 17:35:45 ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_permission_content_type_id_codename_01ab375a_uniq] ON [dbo].[auth_permission]
(
	[content_type_id] ASC,
	[codename] ASC
)
WHERE ([content_type_id] IS NOT NULL AND [codename] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_admin_log_content_type_id_c4bce8eb]    Script Date: 1/9/2021 17:35:45 ******/
CREATE NONCLUSTERED INDEX [django_admin_log_content_type_id_c4bce8eb] ON [dbo].[django_admin_log]
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_admin_log_user_id_c564eba6]    Script Date: 1/9/2021 17:35:45 ******/
CREATE NONCLUSTERED INDEX [django_admin_log_user_id_c564eba6] ON [dbo].[django_admin_log]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [django_content_type_app_label_model_76bd3d3b_uniq]    Script Date: 1/9/2021 17:35:45 ******/
CREATE UNIQUE NONCLUSTERED INDEX [django_content_type_app_label_model_76bd3d3b_uniq] ON [dbo].[django_content_type]
(
	[app_label] ASC,
	[model] ASC
)
WHERE ([app_label] IS NOT NULL AND [model] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_session_expire_date_a5c62663]    Script Date: 1/9/2021 17:35:45 ******/
CREATE NONCLUSTERED INDEX [django_session_expire_date_a5c62663] ON [dbo].[django_session]
(
	[expire_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [preguntas_pregunta_categoria_id_92882307]    Script Date: 1/9/2021 17:35:45 ******/
CREATE NONCLUSTERED INDEX [preguntas_pregunta_categoria_id_92882307] ON [dbo].[preguntas_pregunta]
(
	[categoria_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [ranking_ranking_id_usuario_id_2bbc7a34]    Script Date: 1/9/2021 17:35:45 ******/
CREATE NONCLUSTERED INDEX [ranking_ranking_id_usuario_id_2bbc7a34] ON [dbo].[ranking_ranking]
(
	[id_usuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [respuestas_respuesta_pregunta_id_9d0b4a96]    Script Date: 1/9/2021 17:35:45 ******/
CREATE NONCLUSTERED INDEX [respuestas_respuesta_pregunta_id_9d0b4a96] ON [dbo].[respuestas_respuesta]
(
	[pregunta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__usuarios__F3DBC5725DE8FE3B]    Script Date: 1/9/2021 17:35:45 ******/
ALTER TABLE [dbo].[usuarios_usuario] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_groups_group_id_e77f6dcf]    Script Date: 1/9/2021 17:35:45 ******/
CREATE NONCLUSTERED INDEX [usuarios_usuario_groups_group_id_e77f6dcf] ON [dbo].[usuarios_usuario_groups]
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_groups_usuario_id_7a34077f]    Script Date: 1/9/2021 17:35:45 ******/
CREATE NONCLUSTERED INDEX [usuarios_usuario_groups_usuario_id_7a34077f] ON [dbo].[usuarios_usuario_groups]
(
	[usuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_groups_usuario_id_group_id_4ed5b09e_uniq]    Script Date: 1/9/2021 17:35:45 ******/
CREATE UNIQUE NONCLUSTERED INDEX [usuarios_usuario_groups_usuario_id_group_id_4ed5b09e_uniq] ON [dbo].[usuarios_usuario_groups]
(
	[usuario_id] ASC,
	[group_id] ASC
)
WHERE ([usuario_id] IS NOT NULL AND [group_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_user_permissions_permission_id_4e5c0f2f]    Script Date: 1/9/2021 17:35:45 ******/
CREATE NONCLUSTERED INDEX [usuarios_usuario_user_permissions_permission_id_4e5c0f2f] ON [dbo].[usuarios_usuario_user_permissions]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_user_permissions_usuario_id_60aeea80]    Script Date: 1/9/2021 17:35:45 ******/
CREATE NONCLUSTERED INDEX [usuarios_usuario_user_permissions_usuario_id_60aeea80] ON [dbo].[usuarios_usuario_user_permissions]
(
	[usuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_user_permissions_usuario_id_permission_id_217cadcd_uniq]    Script Date: 1/9/2021 17:35:45 ******/
CREATE UNIQUE NONCLUSTERED INDEX [usuarios_usuario_user_permissions_usuario_id_permission_id_217cadcd_uniq] ON [dbo].[usuarios_usuario_user_permissions]
(
	[usuario_id] ASC,
	[permission_id] ASC
)
WHERE ([usuario_id] IS NOT NULL AND [permission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[auth_permission]  WITH CHECK ADD  CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[auth_permission] CHECK CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_user_id_c564eba6_fk_usuarios_usuario_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[usuarios_usuario] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_user_id_c564eba6_fk_usuarios_usuario_id]
GO
ALTER TABLE [dbo].[preguntas_pregunta]  WITH CHECK ADD  CONSTRAINT [preguntas_pregunta_categoria_id_92882307_fk_categorias_categoria_id] FOREIGN KEY([categoria_id])
REFERENCES [dbo].[categorias_categoria] ([id])
GO
ALTER TABLE [dbo].[preguntas_pregunta] CHECK CONSTRAINT [preguntas_pregunta_categoria_id_92882307_fk_categorias_categoria_id]
GO
ALTER TABLE [dbo].[ranking_ranking]  WITH CHECK ADD  CONSTRAINT [ranking_ranking_id_usuario_id_2bbc7a34_fk_usuarios_usuario_id] FOREIGN KEY([id_usuario_id])
REFERENCES [dbo].[usuarios_usuario] ([id])
GO
ALTER TABLE [dbo].[ranking_ranking] CHECK CONSTRAINT [ranking_ranking_id_usuario_id_2bbc7a34_fk_usuarios_usuario_id]
GO
ALTER TABLE [dbo].[respuestas_respuesta]  WITH CHECK ADD  CONSTRAINT [respuestas_respuesta_pregunta_id_9d0b4a96_fk_preguntas_pregunta_id] FOREIGN KEY([pregunta_id])
REFERENCES [dbo].[preguntas_pregunta] ([id])
GO
ALTER TABLE [dbo].[respuestas_respuesta] CHECK CONSTRAINT [respuestas_respuesta_pregunta_id_9d0b4a96_fk_preguntas_pregunta_id]
GO
ALTER TABLE [dbo].[usuarios_usuario_groups]  WITH CHECK ADD  CONSTRAINT [usuarios_usuario_groups_group_id_e77f6dcf_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[usuarios_usuario_groups] CHECK CONSTRAINT [usuarios_usuario_groups_group_id_e77f6dcf_fk_auth_group_id]
GO
ALTER TABLE [dbo].[usuarios_usuario_groups]  WITH CHECK ADD  CONSTRAINT [usuarios_usuario_groups_usuario_id_7a34077f_fk_usuarios_usuario_id] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuarios_usuario] ([id])
GO
ALTER TABLE [dbo].[usuarios_usuario_groups] CHECK CONSTRAINT [usuarios_usuario_groups_usuario_id_7a34077f_fk_usuarios_usuario_id]
GO
ALTER TABLE [dbo].[usuarios_usuario_user_permissions]  WITH CHECK ADD  CONSTRAINT [usuarios_usuario_user_permissions_permission_id_4e5c0f2f_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[usuarios_usuario_user_permissions] CHECK CONSTRAINT [usuarios_usuario_user_permissions_permission_id_4e5c0f2f_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[usuarios_usuario_user_permissions]  WITH CHECK ADD  CONSTRAINT [usuarios_usuario_user_permissions_usuario_id_60aeea80_fk_usuarios_usuario_id] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuarios_usuario] ([id])
GO
ALTER TABLE [dbo].[usuarios_usuario_user_permissions] CHECK CONSTRAINT [usuarios_usuario_user_permissions_usuario_id_60aeea80_fk_usuarios_usuario_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_action_flag_a8637d59_check] CHECK  (([action_flag]>=(0)))
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_action_flag_a8637d59_check]
GO
USE [master]
GO
ALTER DATABASE [ConsultorChaquenio] SET  READ_WRITE 
GO
