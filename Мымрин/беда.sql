USE [19ip125]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 30.11.2022 18:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id_client] [int] IDENTITY(1,1) NOT NULL,
	[Second_name] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Phone_number] [nvarchar](11) NOT NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[Date_of_birthday] [date] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Complex service]    Script Date: 30.11.2022 18:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complex service](
	[Id_complex] [int] IDENTITY(1,1) NOT NULL,
	[Id_service] [int] NOT NULL,
	[Id_type_device] [int] NOT NULL,
 CONSTRAINT [PK_Complex service] PRIMARY KEY CLUSTERED 
(
	[Id_complex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 30.11.2022 18:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device](
	[Id_device] [int] IDENTITY(1,1) NOT NULL,
	[Id_type_device] [int] NOT NULL,
	[Name_device] [nvarchar](50) NOT NULL,
	[Serial_number] [nvarchar](250) NOT NULL,
	[Cause_of_failure] [nvarchar](500) NULL,
	[Id_client] [int] NOT NULL,
	[Crash] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
(
	[Id_device] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 30.11.2022 18:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id_employee] [int] IDENTITY(1,1) NOT NULL,
	[Second_name] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Date_of_birthday] [date] NOT NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[Phone_number] [nvarchar](11) NOT NULL,
	[Id_post] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](250) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id_employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 30.11.2022 18:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id_post] [int] IDENTITY(1,1) NOT NULL,
	[Name_post] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id_post] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase structure]    Script Date: 30.11.2022 18:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase structure](
	[Id_spares] [int] NOT NULL,
	[Id_record] [int] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_Purchase structure] PRIMARY KEY CLUSTERED 
(
	[Id_spares] ASC,
	[Id_record] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration for the provision of services]    Script Date: 30.11.2022 18:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration for the provision of services](
	[Id_record] [int] IDENTITY(1,1) NOT NULL,
	[Id_sevice] [int] NOT NULL,
	[Id_device] [int] NOT NULL,
	[Id_employee] [int] NOT NULL,
	[Acceptance_date_device] [date] NOT NULL,
	[Work_plan] [nvarchar](500) NOT NULL,
	[Date_start_work] [date] NOT NULL,
	[Date_end_work] [date] NOT NULL,
	[Id_закупки] [int] NOT NULL,
 CONSTRAINT [PK_Registration for the provision of services] PRIMARY KEY CLUSTERED 
(
	[Id_record] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 30.11.2022 18:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id_service] [int] IDENTITY(1,1) NOT NULL,
	[Name_service] [nvarchar](50) NOT NULL,
	[Cost_service] [money] NOT NULL,
	[Image_service] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[Id_service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shares]    Script Date: 30.11.2022 18:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shares](
	[Id_shares] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Serial_number] [nvarchar](150) NOT NULL,
	[Cost] [money] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_Shares] PRIMARY KEY CLUSTERED 
(
	[Id_shares] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type device]    Script Date: 30.11.2022 18:18:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type device](
	[Id_type_device] [int] IDENTITY(1,1) NOT NULL,
	[Name_type_device] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Type device] PRIMARY KEY CLUSTERED 
(
	[Id_type_device] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([Id_client], [Second_name], [Name], [Surname], [Phone_number], [Mail], [Date_of_birthday]) VALUES (1, N'Власов ', N'Антон', N'Игоревич', N'48595483423', N'Vlasov@mail.ru', CAST(N'2000-05-12' AS Date))
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Device] ON 

INSERT [dbo].[Device] ([Id_device], [Id_type_device], [Name_device], [Serial_number], [Cause_of_failure], [Id_client], [Crash]) VALUES (1, 4, N'телефон apple', N'256y4g2u5g34ub', N'Упал со стола', 1, N'Трещина в экране')
INSERT [dbo].[Device] ([Id_device], [Id_type_device], [Name_device], [Serial_number], [Cause_of_failure], [Id_client], [Crash]) VALUES (2, 3, N'планшет xiaomi', N'fdgn34itui3gidg', N'Брат кинул в окно', 1, N'Не включается')
INSERT [dbo].[Device] ([Id_device], [Id_type_device], [Name_device], [Serial_number], [Cause_of_failure], [Id_client], [Crash]) VALUES (3, 2, N'телефон samsung', N'34tj345bt34igff', N'Птица выхватила из рук телефон и скинула на в ведро воды', 1, N'Вода плавает за экраном')
INSERT [dbo].[Device] ([Id_device], [Id_type_device], [Name_device], [Serial_number], [Cause_of_failure], [Id_client], [Crash]) VALUES (4, 1, N'телефон пиксель', N'fdgbniebrg345345', N'Чихнул. Телефон отлетел в ребенка. Он его облизал', 1, N'Когда используешь микрофон, в динамиках слышу арабский голос')
SET IDENTITY_INSERT [dbo].[Device] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id_employee], [Second_name], [Name], [Surname], [Date_of_birthday], [Mail], [Phone_number], [Id_post], [Login], [Password], [Image]) VALUES (1, N'Иванов', N'Иван', N'Иваныч', CAST(N'2000-05-01' AS Date), N'Ivan@mail.ru', N'89211233456', 1, N'Ivan', N'qwe123', N'images/avatars/admin.png')
INSERT [dbo].[Employee] ([Id_employee], [Second_name], [Name], [Surname], [Date_of_birthday], [Mail], [Phone_number], [Id_post], [Login], [Password], [Image]) VALUES (2, N'Петров', N'Петр', N'Петрович', CAST(N'1980-10-10' AS Date), N'Petr@gmail.com', N'89111112233', 2, N'Petr', N'asd456', N'images/avatars/manager.png')
INSERT [dbo].[Employee] ([Id_employee], [Second_name], [Name], [Surname], [Date_of_birthday], [Mail], [Phone_number], [Id_post], [Login], [Password], [Image]) VALUES (3, N'Тестовы', N'Тест', N'Тестыч', CAST(N'1970-09-25' AS Date), N'Test@mail.ru', N'89234569724', 2, N'Test', N'Test000', N'images/avatars/manager.png')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([Id_post], [Name_post]) VALUES (1, N'Администратор')
INSERT [dbo].[Post] ([Id_post], [Name_post]) VALUES (2, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([Id_service], [Name_service], [Cost_service], [Image_service]) VALUES (1, N'замена аккумулятора', 1000.0000, N'images/services/Akb.png')
INSERT [dbo].[Service] ([Id_service], [Name_service], [Cost_service], [Image_service]) VALUES (2, N'замена экрана', 2000.0000, N'images/services/Monitor.png')
INSERT [dbo].[Service] ([Id_service], [Name_service], [Cost_service], [Image_service]) VALUES (3, N'замена шлейфа', 5000.0000, N'images/services/Plume.jpg')
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[Type device] ON 

INSERT [dbo].[Type device] ([Id_type_device], [Name_type_device]) VALUES (1, N'Apple')
INSERT [dbo].[Type device] ([Id_type_device], [Name_type_device]) VALUES (2, N'Xiaomi')
INSERT [dbo].[Type device] ([Id_type_device], [Name_type_device]) VALUES (3, N'Samsung')
INSERT [dbo].[Type device] ([Id_type_device], [Name_type_device]) VALUES (4, N'Pixel')
SET IDENTITY_INSERT [dbo].[Type device] OFF
GO
ALTER TABLE [dbo].[Complex service]  WITH CHECK ADD  CONSTRAINT [FK_Complex service_Service] FOREIGN KEY([Id_service])
REFERENCES [dbo].[Service] ([Id_service])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Complex service] CHECK CONSTRAINT [FK_Complex service_Service]
GO
ALTER TABLE [dbo].[Complex service]  WITH CHECK ADD  CONSTRAINT [FK_Complex service_Type device] FOREIGN KEY([Id_type_device])
REFERENCES [dbo].[Type device] ([Id_type_device])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Complex service] CHECK CONSTRAINT [FK_Complex service_Type device]
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [FK_Device_Client] FOREIGN KEY([Id_client])
REFERENCES [dbo].[Client] ([Id_client])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [FK_Device_Client]
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [FK_Device_Type device] FOREIGN KEY([Id_type_device])
REFERENCES [dbo].[Type device] ([Id_type_device])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [FK_Device_Type device]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Post] FOREIGN KEY([Id_post])
REFERENCES [dbo].[Post] ([Id_post])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Post]
GO
ALTER TABLE [dbo].[Purchase structure]  WITH CHECK ADD  CONSTRAINT [FK_Purchase structure_Registration for the provision of services] FOREIGN KEY([Id_record])
REFERENCES [dbo].[Registration for the provision of services] ([Id_record])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Purchase structure] CHECK CONSTRAINT [FK_Purchase structure_Registration for the provision of services]
GO
ALTER TABLE [dbo].[Purchase structure]  WITH CHECK ADD  CONSTRAINT [FK_Purchase structure_Shares] FOREIGN KEY([Id_spares])
REFERENCES [dbo].[Shares] ([Id_shares])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Purchase structure] CHECK CONSTRAINT [FK_Purchase structure_Shares]
GO
ALTER TABLE [dbo].[Registration for the provision of services]  WITH CHECK ADD  CONSTRAINT [FK_Registration for the provision of services_Device] FOREIGN KEY([Id_device])
REFERENCES [dbo].[Device] ([Id_device])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Registration for the provision of services] CHECK CONSTRAINT [FK_Registration for the provision of services_Device]
GO
ALTER TABLE [dbo].[Registration for the provision of services]  WITH CHECK ADD  CONSTRAINT [FK_Registration for the provision of services_Employee] FOREIGN KEY([Id_employee])
REFERENCES [dbo].[Employee] ([Id_employee])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Registration for the provision of services] CHECK CONSTRAINT [FK_Registration for the provision of services_Employee]
GO
ALTER TABLE [dbo].[Registration for the provision of services]  WITH CHECK ADD  CONSTRAINT [FK_Registration for the provision of services_Service] FOREIGN KEY([Id_sevice])
REFERENCES [dbo].[Service] ([Id_service])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Registration for the provision of services] CHECK CONSTRAINT [FK_Registration for the provision of services_Service]
GO
