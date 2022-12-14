USE [master]
GO
/****** Object:  Database [19ip125]    Script Date: 17.11.2022 9:28:57 ******/
CREATE DATABASE [19ip125]
 CONTAINMENT = NONE
GO
ALTER DATABASE [19ip125] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [19ip125].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [19ip125] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [19ip125] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [19ip125] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [19ip125] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [19ip125] SET ARITHABORT OFF 
GO
ALTER DATABASE [19ip125] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [19ip125] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [19ip125] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [19ip125] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [19ip125] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [19ip125] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [19ip125] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [19ip125] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [19ip125] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [19ip125] SET  ENABLE_BROKER 
GO
ALTER DATABASE [19ip125] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [19ip125] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [19ip125] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [19ip125] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [19ip125] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [19ip125] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [19ip125] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [19ip125] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [19ip125] SET  MULTI_USER 
GO
ALTER DATABASE [19ip125] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [19ip125] SET DB_CHAINING OFF 
GO
ALTER DATABASE [19ip125] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [19ip125] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [19ip125] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [19ip125] SET QUERY_STORE = OFF
GO
USE [19ip125]
GO
/****** Object:  User [YXMT\Преподаватели ЯПЭК]    Script Date: 17.11.2022 9:28:57 ******/
/****** Object:  Table [dbo].[Client]    Script Date: 17.11.2022 9:28:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id client] [int] NOT NULL,
	[Second name] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Phone number] [nvarchar](11) NOT NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[Date of birthday] [date] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Complex service]    Script Date: 17.11.2022 9:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complex service](
	[Id complex] [int] NOT NULL,
	[Id service] [int] NOT NULL,
	[Id type device] [int] NOT NULL,
 CONSTRAINT [PK_Complex service] PRIMARY KEY CLUSTERED 
(
	[Id complex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 17.11.2022 9:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device](
	[Id device] [int] NOT NULL,
	[Id type device] [int] NOT NULL,
	[Name device] [nvarchar](50) NOT NULL,
	[Serial number] [nvarchar](250) NOT NULL,
	[Cause of failure] [nvarchar](500) NULL,
	[Id client] [int] NOT NULL,
	[Crash] [nvarchar](150) NOT NULL,
	[Date of crash] [date] NULL,
 CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
(
	[Id device] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 17.11.2022 9:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id employee] [int] NOT NULL,
	[Second name] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Date of birthday] [date] NOT NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[Phone number] [nvarchar](11) NOT NULL,
	[Id post] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 17.11.2022 9:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id post] [int] NOT NULL,
	[Name post] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id post] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase structure]    Script Date: 17.11.2022 9:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase structure](
	[Id spares] [int] NOT NULL,
	[Id record] [int] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_Purchase structure] PRIMARY KEY CLUSTERED 
(
	[Id spares] ASC,
	[Id record] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration for the provision of services]    Script Date: 17.11.2022 9:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration for the provision of services](
	[Id record] [int] NOT NULL,
	[Id sevice] [int] NOT NULL,
	[Id device] [int] NOT NULL,
	[Id employee] [int] NOT NULL,
	[acceptance date device] [date] NOT NULL,
	[Work plan] [nvarchar](500) NOT NULL,
	[Date start work] [date] NOT NULL,
	[Date end work] [date] NOT NULL,
	[Id закупки] [int] NOT NULL,
 CONSTRAINT [PK_Registration for the provision of services] PRIMARY KEY CLUSTERED 
(
	[Id record] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 17.11.2022 9:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id service] [int] NOT NULL,
	[Name service] [nvarchar](50) NOT NULL,
	[Cost service] [money] NOT NULL,
	[Image service] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[Id service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shares]    Script Date: 17.11.2022 9:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shares](
	[Id shares] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Serial number] [nvarchar](150) NOT NULL,
	[Cost] [money] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_Shares] PRIMARY KEY CLUSTERED 
(
	[Id shares] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type device]    Script Date: 17.11.2022 9:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type device](
	[Id type device] [int] NOT NULL,
	[Name type device] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Type device] PRIMARY KEY CLUSTERED 
(
	[Id type device] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([Id employee], [Second name], [Name], [Surname], [Date of birthday], [Mail], [Phone number], [Id post], [Login], [Password]) VALUES (1, N'Иванов', N'Иван', N'Иваныч', CAST(N'2000-05-01' AS Date), N'Ivan@mail.ru', N'89211233456', 1, N'Ivan', N'qwe123')
INSERT [dbo].[Employee] ([Id employee], [Second name], [Name], [Surname], [Date of birthday], [Mail], [Phone number], [Id post], [Login], [Password]) VALUES (2, N'Петров', N'Петр', N'Петрович', CAST(N'1980-10-10' AS Date), N'Petr@gmail.com', N'89111112233', 2, N'Petr', N'asd456')
INSERT [dbo].[Employee] ([Id employee], [Second name], [Name], [Surname], [Date of birthday], [Mail], [Phone number], [Id post], [Login], [Password]) VALUES (3, N'Тестовы', N'Тест', N'Тестыч', CAST(N'1970-09-25' AS Date), N'Test@mail.ru', N'89234569724', 2, N'Test', N'Test000')
GO
INSERT [dbo].[Post] ([Id post], [Name post]) VALUES (1, N'Администратор')
INSERT [dbo].[Post] ([Id post], [Name post]) VALUES (2, N'Менеджер')
GO
ALTER TABLE [dbo].[Complex service]  WITH CHECK ADD  CONSTRAINT [FK_Complex service_Service] FOREIGN KEY([Id service])
REFERENCES [dbo].[Service] ([Id service])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Complex service] CHECK CONSTRAINT [FK_Complex service_Service]
GO
ALTER TABLE [dbo].[Complex service]  WITH CHECK ADD  CONSTRAINT [FK_Complex service_Type device] FOREIGN KEY([Id type device])
REFERENCES [dbo].[Type device] ([Id type device])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Complex service] CHECK CONSTRAINT [FK_Complex service_Type device]
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [FK_Device_Client] FOREIGN KEY([Id client])
REFERENCES [dbo].[Client] ([Id client])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [FK_Device_Client]
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [FK_Device_Type device] FOREIGN KEY([Id type device])
REFERENCES [dbo].[Type device] ([Id type device])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [FK_Device_Type device]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Post] FOREIGN KEY([Id post])
REFERENCES [dbo].[Post] ([Id post])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Post]
GO
ALTER TABLE [dbo].[Purchase structure]  WITH CHECK ADD  CONSTRAINT [FK_Purchase structure_Registration for the provision of services] FOREIGN KEY([Id record])
REFERENCES [dbo].[Registration for the provision of services] ([Id record])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Purchase structure] CHECK CONSTRAINT [FK_Purchase structure_Registration for the provision of services]
GO
ALTER TABLE [dbo].[Purchase structure]  WITH CHECK ADD  CONSTRAINT [FK_Purchase structure_Shares] FOREIGN KEY([Id spares])
REFERENCES [dbo].[Shares] ([Id shares])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Purchase structure] CHECK CONSTRAINT [FK_Purchase structure_Shares]
GO
ALTER TABLE [dbo].[Registration for the provision of services]  WITH CHECK ADD  CONSTRAINT [FK_Registration for the provision of services_Device] FOREIGN KEY([Id device])
REFERENCES [dbo].[Device] ([Id device])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Registration for the provision of services] CHECK CONSTRAINT [FK_Registration for the provision of services_Device]
GO
ALTER TABLE [dbo].[Registration for the provision of services]  WITH CHECK ADD  CONSTRAINT [FK_Registration for the provision of services_Employee] FOREIGN KEY([Id employee])
REFERENCES [dbo].[Employee] ([Id employee])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Registration for the provision of services] CHECK CONSTRAINT [FK_Registration for the provision of services_Employee]
GO
ALTER TABLE [dbo].[Registration for the provision of services]  WITH CHECK ADD  CONSTRAINT [FK_Registration for the provision of services_Service] FOREIGN KEY([Id sevice])
REFERENCES [dbo].[Service] ([Id service])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Registration for the provision of services] CHECK CONSTRAINT [FK_Registration for the provision of services_Service]
GO
USE [master]
GO
ALTER DATABASE [19ip125] SET  READ_WRITE 
GO
