USE [master]
GO
/****** Object:  Database [iDeliver]    Script Date: 05/28/2014 15:26:15 ******/
CREATE DATABASE [iDeliver] ON  PRIMARY 
( NAME = N'iDeliver', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\iDeliver.mdf' , SIZE = 48384KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'iDeliver_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\iDeliver_log.LDF' , SIZE = 47616KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [iDeliver] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [iDeliver].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [iDeliver] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [iDeliver] SET ANSI_NULLS OFF
GO
ALTER DATABASE [iDeliver] SET ANSI_PADDING OFF
GO
ALTER DATABASE [iDeliver] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [iDeliver] SET ARITHABORT OFF
GO
ALTER DATABASE [iDeliver] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [iDeliver] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [iDeliver] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [iDeliver] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [iDeliver] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [iDeliver] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [iDeliver] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [iDeliver] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [iDeliver] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [iDeliver] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [iDeliver] SET  ENABLE_BROKER
GO
ALTER DATABASE [iDeliver] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [iDeliver] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [iDeliver] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [iDeliver] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [iDeliver] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [iDeliver] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [iDeliver] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [iDeliver] SET  READ_WRITE
GO
ALTER DATABASE [iDeliver] SET RECOVERY SIMPLE
GO
ALTER DATABASE [iDeliver] SET  MULTI_USER
GO
ALTER DATABASE [iDeliver] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [iDeliver] SET DB_CHAINING OFF
GO
USE [iDeliver]
GO
/****** Object:  Table [dbo].[ManageFee]    Script Date: 05/28/2014 15:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManageFee](
	[FeeID] [int] IDENTITY(1,1) NOT NULL,
	[Fee] [float] NOT NULL,
	[MinWeight] [float] NOT NULL,
	[MaxWeight] [float] NOT NULL,
	[MinVolume] [float] NOT NULL,
	[MaxVolume] [float] NOT NULL,
 CONSTRAINT [PK_ManageFee] PRIMARY KEY CLUSTERED 
(
	[FeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ManageFee] ON
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (1, 20000, 0, 10, 0, 50)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (2, 27000, 10, 20, 50, 100)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (3, 35000, 20, 50, 100, 500)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (4, 42000, 50, 100, 500, 1000)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (5, 50000, 100, 200, 1000, 2000)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (6, 60000, 200, 500, 2000, 5000)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (7, 72000, 500, 750, 5000, 7500)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (8, 90000, 750, 1000, 7500, 10000)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (9, 100000, 1000, 1200, 10000, 12000)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (10, 115000, 1200, 3000, 12000, 15000000)
SET IDENTITY_INSERT [dbo].[ManageFee] OFF
/****** Object:  Table [dbo].[DeliveryStatus]    Script Date: 05/28/2014 15:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryStatus](
	[DeliveryStatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_DeliveryStatus] PRIMARY KEY CLUSTERED 
(
	[DeliveryStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DeliveryStatus] ON
INSERT [dbo].[DeliveryStatus] ([DeliveryStatusID], [StatusName], [Note]) VALUES (1, N'Chờ xác nhận', N'Chờ xác nhận')
INSERT [dbo].[DeliveryStatus] ([DeliveryStatusID], [StatusName], [Note]) VALUES (2, N'Đã xác nhận', N'Đã xác nhận')
INSERT [dbo].[DeliveryStatus] ([DeliveryStatusID], [StatusName], [Note]) VALUES (3, N'Đã xếp lịch', N'Đã xếp lịch')
INSERT [dbo].[DeliveryStatus] ([DeliveryStatusID], [StatusName], [Note]) VALUES (4, N'Đã chuyển đi', N'Gói hàng đã rời trạm, đang trên đường vận chuyển')
INSERT [dbo].[DeliveryStatus] ([DeliveryStatusID], [StatusName], [Note]) VALUES (5, N'Đã đến đích', N'Gói hàng đã vận chuyển đến trạm đích')
INSERT [dbo].[DeliveryStatus] ([DeliveryStatusID], [StatusName], [Note]) VALUES (6, N'Đã giao hàng', N'Gói hàng đã được giao cho người nhận')
INSERT [dbo].[DeliveryStatus] ([DeliveryStatusID], [StatusName], [Note]) VALUES (7, N'Đã hủy', N'Yêu cầu đã bị hủy bởi người gửi/nhân viên')
INSERT [dbo].[DeliveryStatus] ([DeliveryStatusID], [StatusName], [Note]) VALUES (8, N'Đã hết hạn', N'Yêu cầu đã hết hạn chờ xử lý')
INSERT [dbo].[DeliveryStatus] ([DeliveryStatusID], [StatusName], [Note]) VALUES (9, N'Trễ hạn thanh toán', N'Hết thời gian thanh toán')
INSERT [dbo].[DeliveryStatus] ([DeliveryStatusID], [StatusName], [Note]) VALUES (10, N'Đang thanh toán', N'Khách hàng đang thanh toán')
SET IDENTITY_INSERT [dbo].[DeliveryStatus] OFF
/****** Object:  Table [dbo].[Route]    Script Date: 05/28/2014 15:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Route](
	[RouteID] [int] IDENTITY(1,1) NOT NULL,
	[RouteName] [nvarchar](50) NOT NULL,
	[Container] [float] NOT NULL,
 CONSTRAINT [PK_Route] PRIMARY KEY CLUSTERED 
(
	[RouteID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Route] ON
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (1, N'Sài Gòn - Vũng Tàu', 0.9)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (2, N'Cà Mau - Sài Gòn', 0.8)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (3, N'Cà Mau - Vũng Tàu', 0.85)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (4, N'Cần Thơ - Sài Gòn', 0.9)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (5, N'Cần Thơ - Đà Lạt', 0.75)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (6, N'Sài Gòn - Nha Trang', 0.7)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (7, N'Cần Thơ - Quy Nhơn', 0.7)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (8, N'Sài Gòn - Quy Nhơn', 0.8)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (9, N'Quy Nhơn - Đà Nẵng', 0.9)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (10, N'Sài Gòn - Vũng Tàu', 0.9)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (11, N'Vũng Tàu - Nha Trang', 0.85)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (12, N'Đà Lạt - Quy Nhơn', 0.8)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (13, N'Vũng Tàu - Đà Nẵng', 0.7)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (14, N'Nha Trang - Đà Nẵng', 0.75)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (15, N'Sài Gòn - Đà Nẵng', 0.7)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (16, N'Vũng Tàu - Sài Gòn', 0.9)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (17, N'Sài Gòn - Cà Mau', 0.8)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (18, N'Vũng Tàu - Cà Mau', 0.85)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (19, N'Sài Gòn - Cần Thơ', 0.9)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (20, N'Đà Lạt - Cần Thơ', 0.75)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (21, N'Sài Gòn - Nha Trang', 0.7)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (22, N'Quy Nhơn - Cần Thơ', 0.7)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (23, N'Quy Nhơn - Sài Gòn', 0.8)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (24, N'Đà Nẵng - Quy Nhơn', 0.9)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (25, N'Vũng Tàu - Sài Gòn', 0.9)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (26, N'Nha Trang - Vũng Tàu', 0.85)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (27, N'Quy Nhơn - Đà Lạt', 0.8)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (28, N'Đà Nẵng - Vũng Tàu', 0.7)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (29, N'Đà Nẵng - Nha Trang', 0.75)
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (30, N'Đà Nẵng - Sài Gòn', 0.7)
SET IDENTITY_INSERT [dbo].[Route] OFF
/****** Object:  Table [dbo].[CoachType]    Script Date: 05/28/2014 15:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoachType](
	[CoachTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Seats] [int] NOT NULL,
	[Length] [float] NOT NULL,
	[Width] [float] NOT NULL,
	[Height] [float] NOT NULL,
 CONSTRAINT [PK_CoachType] PRIMARY KEY CLUSTERED 
(
	[CoachTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CoachType] ON
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Length], [Width], [Height]) VALUES (1, 16, 200, 50, 150)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Length], [Width], [Height]) VALUES (2, 29, 250, 150, 150)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Length], [Width], [Height]) VALUES (3, 35, 300, 200, 150)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Length], [Width], [Height]) VALUES (4, 40, 350, 250, 150)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Length], [Width], [Height]) VALUES (5, 45, 400, 250, 150)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Length], [Width], [Height]) VALUES (6, 52, 450, 250, 150)
SET IDENTITY_INSERT [dbo].[CoachType] OFF
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-def16f83-c6ff-4aaf-9db7-8e96f558ba83]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-def16f83-c6ff-4aaf-9db7-8e96f558ba83] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-def16f83-c6ff-4aaf-9db7-8e96f558ba83]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-def16f83-c6ff-4aaf-9db7-8e96f558ba83] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-def16f83-c6ff-4aaf-9db7-8e96f558ba83') > 0)   DROP SERVICE [SqlQueryNotificationService-def16f83-c6ff-4aaf-9db7-8e96f558ba83]; if (OBJECT_ID('SqlQueryNotificationService-def16f83-c6ff-4aaf-9db7-8e96f558ba83', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-def16f83-c6ff-4aaf-9db7-8e96f558ba83]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-def16f83-c6ff-4aaf-9db7-8e96f558ba83]; END COMMIT TRANSACTION; END
GO
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-cfef0c54-b8f0-4437-a93e-9a3f47e1a6ce]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-cfef0c54-b8f0-4437-a93e-9a3f47e1a6ce] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-cfef0c54-b8f0-4437-a93e-9a3f47e1a6ce]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-cfef0c54-b8f0-4437-a93e-9a3f47e1a6ce] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-cfef0c54-b8f0-4437-a93e-9a3f47e1a6ce') > 0)   DROP SERVICE [SqlQueryNotificationService-cfef0c54-b8f0-4437-a93e-9a3f47e1a6ce]; if (OBJECT_ID('SqlQueryNotificationService-cfef0c54-b8f0-4437-a93e-9a3f47e1a6ce', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-cfef0c54-b8f0-4437-a93e-9a3f47e1a6ce]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-cfef0c54-b8f0-4437-a93e-9a3f47e1a6ce]; END COMMIT TRANSACTION; END
GO
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-c3fc5803-9fdc-4dd7-9a72-68f988c1f507]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-c3fc5803-9fdc-4dd7-9a72-68f988c1f507] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-c3fc5803-9fdc-4dd7-9a72-68f988c1f507]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-c3fc5803-9fdc-4dd7-9a72-68f988c1f507] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-c3fc5803-9fdc-4dd7-9a72-68f988c1f507') > 0)   DROP SERVICE [SqlQueryNotificationService-c3fc5803-9fdc-4dd7-9a72-68f988c1f507]; if (OBJECT_ID('SqlQueryNotificationService-c3fc5803-9fdc-4dd7-9a72-68f988c1f507', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-c3fc5803-9fdc-4dd7-9a72-68f988c1f507]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-c3fc5803-9fdc-4dd7-9a72-68f988c1f507]; END COMMIT TRANSACTION; END
GO
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-31779809-3edb-48c8-959d-127f1e96af11]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-31779809-3edb-48c8-959d-127f1e96af11] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-31779809-3edb-48c8-959d-127f1e96af11]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-31779809-3edb-48c8-959d-127f1e96af11] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-31779809-3edb-48c8-959d-127f1e96af11') > 0)   DROP SERVICE [SqlQueryNotificationService-31779809-3edb-48c8-959d-127f1e96af11]; if (OBJECT_ID('SqlQueryNotificationService-31779809-3edb-48c8-959d-127f1e96af11', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-31779809-3edb-48c8-959d-127f1e96af11]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-31779809-3edb-48c8-959d-127f1e96af11]; END COMMIT TRANSACTION; END
GO
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-226148aa-bbc2-4a11-862b-80536d2ecebb]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-226148aa-bbc2-4a11-862b-80536d2ecebb] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-226148aa-bbc2-4a11-862b-80536d2ecebb]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-226148aa-bbc2-4a11-862b-80536d2ecebb] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-226148aa-bbc2-4a11-862b-80536d2ecebb') > 0)   DROP SERVICE [SqlQueryNotificationService-226148aa-bbc2-4a11-862b-80536d2ecebb]; if (OBJECT_ID('SqlQueryNotificationService-226148aa-bbc2-4a11-862b-80536d2ecebb', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-226148aa-bbc2-4a11-862b-80536d2ecebb]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-226148aa-bbc2-4a11-862b-80536d2ecebb]; END COMMIT TRANSACTION; END
GO
/****** Object:  Table [dbo].[Province]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[ProvinceID] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[ProvinceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Province] ON
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (1, N'Hồ Chí Minh')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (2, N'Vũng Tàu')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (3, N'Đà Lạt')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (4, N'Nha Trang')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (5, N'Đà Nẵng ')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (6, N'Bình Định')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (7, N'Cần Thơ')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (8, N'Cà Mau')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (9, N'N/A')
SET IDENTITY_INSERT [dbo].[Province] OFF
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-f6d0a62d-2209-4a16-8661-3c7fe24d050f]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-f6d0a62d-2209-4a16-8661-3c7fe24d050f] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-f6d0a62d-2209-4a16-8661-3c7fe24d050f]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-f6d0a62d-2209-4a16-8661-3c7fe24d050f] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-f6d0a62d-2209-4a16-8661-3c7fe24d050f') > 0)   DROP SERVICE [SqlQueryNotificationService-f6d0a62d-2209-4a16-8661-3c7fe24d050f]; if (OBJECT_ID('SqlQueryNotificationService-f6d0a62d-2209-4a16-8661-3c7fe24d050f', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-f6d0a62d-2209-4a16-8661-3c7fe24d050f]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-f6d0a62d-2209-4a16-8661-3c7fe24d050f]; END COMMIT TRANSACTION; END
GO
/****** Object:  Table [dbo].[Station]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Station](
	[StationID] [int] IDENTITY(1,1) NOT NULL,
	[StationName] [nvarchar](50) NOT NULL,
	[StationLocation] [nvarchar](500) NOT NULL,
	[StationPhone] [varchar](15) NOT NULL,
	[Coordinate] [nvarchar](500) NOT NULL,
	[ProvinceID] [int] NOT NULL,
	[AvgRatingLevel] [float] NULL,
 CONSTRAINT [PK_Station] PRIMARY KEY CLUSTERED 
(
	[StationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Station] ON
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (1, N'Lê Hồng Phong - Sài Gòn', N'233 Lê Hồng Phong, F4, Q.5, Hồ Chí Minh', N'(08) 38 309 309', N'10.7584848, 106.6777557', 1, 0.72000002861022949)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (2, N'Tạ Uyên - Vũng Tàu', N'03 Tạ Uyên, Vũng Tàu', N'0643 52 53 54', N'10.3491804, 107.0855695', 2, 4.1)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (3, N'Bến xe liên tỉnh - Đà Lạt', N'01 Tô Hiến Thành, F3, Đà Lạt', N'0633 58 58 58', N'11.9264949, 108.4460601', 3, 3.9)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (4, N'Bến xe Phía Nam -  Nha Trang', N'Số 58, đường 23/10, Xã Vĩnh Hiệp , Nha Trang, Khánh Hòa ', N'(058) 3562626', N'12.2527081, 109.1627343', 4, 4)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (5, N'Bến xe Miền Tây - Sài Gòn', N'395 Kinh Dương Vương, phường An Lạc, Quận Bình Tân, Hồ Chí Minh', N'(08) 38776594', N'10.740993, 106.617980', 1, 4.7)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (6, N'Bến xe Miền Đông - Sài Gòn', N'367 Đinh Bộ Lĩnh, 26, Bình Thạnh, Hồ Chí Minh', N'08.38 309 309 ', N'10.815213, 106.710674', 1, 4.8)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (7, N'Bến xe Hùng Vương - Cần Thơ', N'01 Hùng Vương, Thới Bình, Ninh Kiều, Cần Thơ ', N'(0710)3769768', N'10.0449994, 105.7799216', 7, 3.4)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (8, N'Bến Xe Trung Tâm - Đà Nẵng', N'201 Tôn Đức Thắng, Phường Hòa Minh, Liên Chiểu, Đà Nẵng', N'(0511) 3786 786', N'16.051571, 108.214897', 5, 3.2)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (9, N'Bến xe Quy Nhơn 1 - Quy Nhơn', N'Ngã 5, Tây Sơn, Quy Nhơn', N'0562242424', N'13.788238,109.220039', 6, 3.6)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (10, N'Bến xe Cà Mau 1- Cà Mau', N'Bến Xe Cà Mau, Quốc Lộ 1A, Lý Thường Kiệt, Phường 6, Cà Mau', N'07803651651', N'9.1760935, 105.1706709', 8, 5)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (11, N'N/A', N'N/A', N'N/A', N'N/A', 9, 0)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (14, N'Bến xe Cà Mau 2 - Cà Mau', N'145 Nguyễn Tất Thành P.8, Cà Mau', N'0789461325', N'9.16577,105.144244', 8, 0)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (15, N'Bến xe Cà Mau 3 - Cà Mau', N'75 Nguyễn Trãi phường 9, Cà Mau', N'0856484645', N'9.180789,105.144308', 8, 0)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (16, N'Bến xe Quy Nhơn 2 - Quy Nhơn', N'11 Hà Huy Tập, Quy Nhơn', N'0562242424', N'13.771013,109.226727', 6, 3.6)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (17, N'Bến xe Quy Nhơn 3 - Quy Nhơn', N'73 Tây Sơn, Phường Quang Trung, Quy Nhơn', N'0562242424', N'13.767647,109.199367', 6, 3.6)
SET IDENTITY_INSERT [dbo].[Station] OFF
/****** Object:  Table [dbo].[Coach]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coach](
	[CoachID] [int] IDENTITY(1,1) NOT NULL,
	[NumberPlate] [nvarchar](50) NOT NULL,
	[CoachTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Coach] PRIMARY KEY CLUSTERED 
(
	[CoachID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Coach] ON
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (1, N'51B-34572', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (2, N'51B-34573', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (3, N'51B-34574', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (4, N'51B-34575', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (5, N'51B-34576', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (6, N'51B-34577', 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (7, N'51B-34578', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (8, N'51B-34579', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (9, N'51B-34580', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (10, N'51B-34581', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (11, N'51B-34582', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (12, N'51B-34583', 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (13, N'51B-34584', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (14, N'51B-34585', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (15, N'51B-34586', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (16, N'51B-34587', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (17, N'51B-34588', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (18, N'51B-34589', 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (19, N'51B-34590', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (20, N'51B-34591', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (21, N'51B-34592', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (22, N'51B-34593', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (23, N'51B-34594', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (24, N'51B-34595', 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (25, N'51B-34596', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (26, N'51B-34597', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (27, N'51B-34598', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (28, N'51C-45683', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (29, N'51C-45684', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (30, N'51C-45685', 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (31, N'51C-45686', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (32, N'51C-45687', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (33, N'51C-45688', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (34, N'51C-45689', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (35, N'51C-45690', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (36, N'51C-45691', 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (37, N'51C-45692', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (38, N'51C-45693', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (39, N'51C-45694', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (40, N'51C-45695', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (41, N'51C-45696', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (42, N'51C-45697', 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (43, N'51C-45698', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (44, N'51C-45699', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (45, N'51C-45700', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (46, N'51C-45701', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (47, N'51C-45702', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (48, N'51C-45703', 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (49, N'51C-45704', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (50, N'51C-45705', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (51, N'51C-45706', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (52, N'51C-45707', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (53, N'51C-45708', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (54, N'51C-45709', 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (55, N'51C-45710', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (56, N'51C-45711', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (57, N'51C-45712', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (58, N'51C-45713', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (59, N'51C-45714', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (60, N'51C-45715', 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (61, N'51C-45716', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (62, N'51C-45717', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (63, N'51C-45718', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (64, N'51C-45719', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (65, N'51C-45720', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (66, N'51C-45721', 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (67, N'51C-45722', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (68, N'51C-45723', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (69, N'51C-45724', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (70, N'51C-45725', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (71, N'51C-45726', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (72, N'51C-45727', 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (73, N'51C-45728', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (74, N'51C-45729', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (75, N'51C-45730', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (76, N'51C-45731', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (77, N'51C-45732', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (78, N'51C-45733', 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (79, N'51C-45734', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (80, N'51C-45735', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (81, N'51C-45736', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (82, N'51C-45737', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (83, N'51C-45738', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (84, N'51C-45739', 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (85, N'51C-45740', 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (86, N'51C-45741', 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (87, N'51C-45742', 3)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (88, N'51C-45743', 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (89, N'51C-45744', 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [CoachTypeID]) VALUES (90, N'51D-56794', 6)
SET IDENTITY_INSERT [dbo].[Coach] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[BackupPassword] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[BannedStatus] [bit] NOT NULL,
	[StationID] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'ducnt', N'25f9e794323b453885f5181f1b624d0b', N'25f9e794323b453885f5181f1b624d0b', N'Customer', N'ducnt@gmail.com', 0, 11)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'guest', N'382b0f5185773fa0f67a8ed8056c7759', N'382b0f5185773fa0f67a8ed8056c7759', N'Customer', N'N/A', 0, 11)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'long', N'0f5264038205edfb1ac05fbb0e8c5e94', N'0f5264038205edfb1ac05fbb0e8c5e94', N'Admin', N'long@gmail.com', 0, 11)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'lulp', N'25f9e794323b453885f5181f1b624d0b', N'25f9e794323b453885f5181f1b624d0b', N'Customer', N'lulp@gmail.com', 0, 11)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'meomeo', N'25f9e794323b453885f5181f1b624d0b', N'25f9e794323b453885f5181f1b624d0b', N'Customer', N'lephuclu@gmail.com', 0, 11)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'nv-bxmd', N'76d87f10237cec18b14e21922065d91d', N'76d87f10237cec18b14e21922065d91d', N'Staff', N'staff6@gmail.com', 0, 6)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'nv-bxmt', N'05a50bb070b13d67734687da488a2674', N'05a50bb070b13d67734687da488a2674', N'Staff', N'staff5@gmail.com', 0, 5)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'nv-camau', N'be2497fcf3c2eef765dd00def34ce20a', N'be2497fcf3c2eef765dd00def34ce20a', N'Staff', N'staff10@gmail.com', 0, 10)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'nv-cantho', N'ab473c62abc215ce59ccf4838b36a634', N'ab473c62abc215ce59ccf4838b36a634', N'Staff', N'staff7@gmail.com', 0, 7)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'nv-dalat', N'ddbc4f8eddf8f9a2a8fd444b297917e4', N'ddbc4f8eddf8f9a2a8fd444b297917e4', N'Staff', N'staff3@gmail.com', 0, 3)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'nv-danang', N'08f7967a0c213e149f90363ad03e74f5', N'08f7967a0c213e149f90363ad03e74f5', N'Staff', N'staff8@gmail.com', 0, 8)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'nv-nhatrang', N'fabf4ae67fcc868e4280d2e9bf1e7861', N'fabf4ae67fcc868e4280d2e9bf1e7861', N'Staff', N'staff4@gmail.com', 0, 4)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'nv-quan5', N'e61b1fa380ea0126321c99a5995231ae', N'e61b1fa380ea0126321c99a5995231ae', N'Staff', N'staff1@gmail.com', 0, 1)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'nv-quynhon', N'59045eba0b99d2febef1c52fa1ba485a', N'59045eba0b99d2febef1c52fa1ba485a', N'Staff', N'staff9@gmail.com', 0, 9)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'nv-vungtau', N'9a85d57521fe0db4e2606e85187a7289', N'9a85d57521fe0db4e2606e85187a7289', N'Staff', N'staff2@gmail.com', 0, 2)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'taint', N'25f9e794323b453885f5181f1b624d0b', N'25f9e794323b453885f5181f1b624d0b', N'Customer', N'taint@gmail.com', 0, 11)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'tungnt', N'25f9e794323b453885f5181f1b624d0b', N'25f9e794323b453885f5181f1b624d0b', N'Customer', N'tungnt@gmail.com', 0, 11)
/****** Object:  Table [dbo].[Stage]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage](
	[StageID] [int] IDENTITY(1,1) NOT NULL,
	[StageName] [nvarchar](50) NOT NULL,
	[StartPoint] [int] NOT NULL,
	[EndPoint] [int] NOT NULL,
	[BreakTime] [time](0) NOT NULL,
	[Duration] [float] NOT NULL,
	[Distance] [float] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Stage] PRIMARY KEY CLUSTERED 
(
	[StageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Stage] ON
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (1, N'Cà Mau - Cần Thơ', 10, 7, CAST(0x00100E0000000000 AS Time), 4, 178, 120000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (2, N'Cần Thơ - Sài Gòn', 7, 1, CAST(0x00100E0000000000 AS Time), 3, 169, 120000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (3, N'Cần Thơ - Sài Gòn', 7, 5, CAST(0x00100E0000000000 AS Time), 3, 168, 120000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (4, N'Cần Thơ - Sài Gòn', 7, 6, CAST(0x00100E0000000000 AS Time), 3, 168, 120000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (5, N'Sài Gòn - Đà Lạt', 1, 3, CAST(0x00100E0000000000 AS Time), 8, 308, 220000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (6, N'Sài Gòn - Đà Lạt', 5, 3, CAST(0x00100E0000000000 AS Time), 8, 308, 220000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (7, N'Sài Gòn - Đà Lạt', 6, 3, CAST(0x00100E0000000000 AS Time), 8, 308, 220000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (8, N'Sài Gòn - Vũng Tàu', 1, 2, CAST(0x00100E0000000000 AS Time), 3, 129, 110000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (9, N'Sài Gòn - Vũng Tàu', 5, 2, CAST(0x00100E0000000000 AS Time), 3, 129, 110000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (10, N'Sài Gòn - Vũng Tàu', 6, 2, CAST(0x00100E0000000000 AS Time), 3, 129, 110000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (11, N'Vũng Tàu - Đà Lạt', 2, 3, CAST(0x00100E0000000000 AS Time), 6, 237, 200000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (12, N'Vũng Tàu - Nha Trang', 2, 4, CAST(0x00100E0000000000 AS Time), 9, 513, 350000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (13, N'Đà Lạt - Nha Trang', 3, 4, CAST(0x00100E0000000000 AS Time), 4, 205, 130000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (14, N'Nha Trang - Quy Nhơn', 4, 9, CAST(0x00100E0000000000 AS Time), 6, 238, 200000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (15, N'Quy Nhơn - Đà Nẵng', 9, 8, CAST(0x00100E0000000000 AS Time), 8, 303, 250000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (16, N'Cần Thơ - Cà Mau', 7, 10, CAST(0x00100E0000000000 AS Time), 4, 178, 120000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (17, N'Sài Gòn - Cần Thơ', 1, 7, CAST(0x00100E0000000000 AS Time), 3, 169, 120000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (18, N'Sài Gòn - Cần Thơ', 5, 7, CAST(0x00100E0000000000 AS Time), 3, 168, 120000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (19, N'Sài Gòn - Cần Thơ', 6, 7, CAST(0x00100E0000000000 AS Time), 3, 168, 120000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (20, N'Đà Lạt - Sài Gòn', 3, 1, CAST(0x00100E0000000000 AS Time), 8, 308, 220000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (21, N'Đà Lạt - Sài Gòn', 3, 5, CAST(0x00100E0000000000 AS Time), 8, 308, 220000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (22, N'Đà Lạt - Sài Gòn', 3, 6, CAST(0x00100E0000000000 AS Time), 8, 308, 220000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (23, N'Vũng Tàu - Sài Gòn', 2, 1, CAST(0x00100E0000000000 AS Time), 3, 129, 110000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (24, N'Vũng Tàu - Sài Gòn', 2, 5, CAST(0x00100E0000000000 AS Time), 3, 129, 110000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (25, N'Vũng Tàu - Sài Gòn', 2, 6, CAST(0x00100E0000000000 AS Time), 3, 129, 110000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (26, N'Đà Lạt - Vũng Tàu', 3, 2, CAST(0x00100E0000000000 AS Time), 6, 237, 200000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (27, N'Nha Trang - Vũng Tàu', 4, 2, CAST(0x00100E0000000000 AS Time), 9, 513, 350000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (28, N'Nha Trang - Đà Lạt', 4, 3, CAST(0x00100E0000000000 AS Time), 4, 205, 130000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (29, N'Quy Nhơn - Nha Trang', 9, 4, CAST(0x00100E0000000000 AS Time), 6, 238, 200000)
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (30, N'Đà Nẵng - Quy Nhơn', 8, 9, CAST(0x00100E0000000000 AS Time), 8, 303, 250000)
SET IDENTITY_INSERT [dbo].[Stage] OFF
/****** Object:  Table [dbo].[Schedule]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[ScheduleID] [int] IDENTITY(1,1) NOT NULL,
	[RouteID] [int] NOT NULL,
	[CoachID] [int] NOT NULL,
	[EstimateDepartureTime] [time](0) NOT NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[ScheduleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Schedule] ON
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (1, 1, 1, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (2, 1, 2, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (3, 1, 3, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (4, 1, 4, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (5, 1, 5, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (6, 1, 6, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (7, 16, 6, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (8, 16, 5, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (9, 16, 4, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (10, 16, 3, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (11, 16, 2, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (12, 16, 1, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (13, 2, 7, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (14, 2, 8, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (15, 2, 9, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (16, 2, 10, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (17, 2, 11, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (18, 2, 12, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (19, 17, 12, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (20, 17, 11, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (21, 17, 10, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (22, 17, 9, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (23, 17, 8, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (24, 17, 7, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (25, 3, 13, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (26, 3, 14, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (27, 3, 15, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (28, 3, 16, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (29, 3, 17, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (30, 3, 18, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (31, 18, 18, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (32, 18, 17, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (33, 18, 16, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (34, 18, 15, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (35, 18, 14, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (36, 18, 13, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (37, 4, 19, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (38, 4, 20, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (39, 4, 21, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (40, 4, 22, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (41, 4, 23, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (42, 4, 24, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (43, 19, 24, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (44, 19, 23, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (45, 19, 22, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (46, 19, 21, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (47, 19, 20, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (48, 19, 19, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (49, 5, 25, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (50, 5, 26, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (51, 5, 27, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (52, 5, 28, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (53, 5, 29, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (54, 5, 30, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (55, 20, 30, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (56, 20, 29, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (57, 20, 28, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (58, 20, 27, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (59, 20, 26, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (60, 20, 25, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (61, 6, 31, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (62, 6, 32, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (63, 6, 33, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (64, 6, 34, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (65, 6, 35, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (66, 6, 36, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (67, 21, 36, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (68, 21, 35, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (69, 21, 34, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (70, 21, 33, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (71, 21, 32, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (72, 21, 31, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (73, 7, 37, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (74, 7, 38, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (75, 7, 39, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (76, 7, 40, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (77, 7, 41, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (78, 7, 42, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (79, 22, 42, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (80, 22, 41, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (81, 22, 40, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (82, 22, 39, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (83, 22, 38, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (84, 22, 37, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (85, 8, 43, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (86, 8, 44, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (87, 8, 45, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (88, 8, 46, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (89, 8, 47, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (90, 8, 48, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (91, 23, 48, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (92, 23, 47, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (93, 23, 46, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (94, 23, 45, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (95, 23, 44, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (96, 23, 43, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (97, 9, 49, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (98, 9, 50, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (99, 9, 51, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (100, 9, 52, CAST(0x00E0C40000000000 AS Time))
GO
print 'Processed 100 total records'
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (101, 9, 53, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (102, 9, 54, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (103, 24, 54, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (104, 24, 53, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (105, 24, 52, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (106, 24, 51, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (107, 24, 50, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (108, 24, 49, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (109, 10, 55, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (110, 10, 56, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (111, 10, 57, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (112, 10, 58, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (113, 10, 59, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (114, 10, 60, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (115, 25, 60, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (116, 25, 59, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (117, 25, 58, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (118, 25, 57, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (119, 25, 56, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (120, 25, 55, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (121, 11, 61, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (122, 11, 62, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (123, 11, 63, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (124, 11, 64, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (125, 11, 65, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (126, 11, 66, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (127, 26, 66, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (128, 26, 65, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (129, 26, 64, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (130, 26, 63, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (131, 26, 62, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (132, 26, 61, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (133, 12, 67, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (134, 12, 68, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (135, 12, 69, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (136, 12, 70, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (137, 12, 71, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (138, 12, 72, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (139, 27, 72, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (140, 27, 71, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (141, 27, 70, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (142, 27, 69, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (143, 27, 68, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (144, 27, 67, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (145, 13, 73, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (146, 13, 74, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (147, 13, 75, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (148, 13, 76, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (149, 13, 77, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (150, 13, 78, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (151, 28, 78, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (152, 28, 77, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (153, 28, 76, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (154, 28, 75, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (155, 28, 74, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (156, 28, 73, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (157, 14, 79, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (158, 14, 80, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (159, 14, 81, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (160, 14, 82, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (161, 14, 83, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (162, 14, 84, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (163, 29, 84, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (164, 29, 83, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (165, 29, 82, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (166, 29, 81, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (167, 29, 80, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (168, 29, 79, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (169, 15, 85, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (170, 15, 86, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (171, 15, 87, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (172, 15, 88, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (173, 15, 89, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (174, 15, 90, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (175, 30, 90, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (176, 30, 89, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (177, 30, 88, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (178, 30, 87, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (179, 30, 86, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime]) VALUES (180, 30, 85, CAST(0x0040190100000000 AS Time))
SET IDENTITY_INSERT [dbo].[Schedule] OFF
/****** Object:  Table [dbo].[Notification]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[NotificationID] [int] IDENTITY(1,1) NOT NULL,
	[StationID] [int] NOT NULL,
	[isView] [bit] NOT NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Username] [nvarchar](50) NOT NULL,
	[Firstname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserInfo_1] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'ducnt', N'Nguyễn', N'Tấn Đức', N'Quận 11', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'long', N'Đào', N'Bảo Long', N'Quận Thủ Đức', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'lulp', N'Lê ', N'Phúc Lữ', N'Quận 12', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'nv-bxmd', N'Vũ', N'Đại Nghĩa', N'Quận 6', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'nv-bxmt', N'Châu ', N'Tuấn Kiệt', N'Quận 5', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'nv-camau', N'Hoàng', N'Xuân Huy', N'Quận 10', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'nv-cantho', N'Hồ', N'Đăng Hưng', N'Quận 7', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'nv-dalat', N'Phạm', N'Thái Hoàng', N'Quận 3', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'nv-danang', N'Lâm', N'Thanh Phong', N'Quận 8', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'nv-nhatrang', N'Trần', N'Minh Trung', N'Quận 4', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'nv-quan5', N'Nguyễn', N'Văn Bình', N'Quận 1', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'nv-quynhon', N'Mai', N'Hữu Nghĩa', N'Quận 9', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'nv-vungtau', N'Lê', N'Bảo Thi', N'Quận 2', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'taint', N'Nguyễn', N'Trọng Tài', N'Quận Bình Tân', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'tungnt', N'Nguyễn', N'Thanh Tùng', N'Quận Tân Bình', N'0123456789')
/****** Object:  Table [dbo].[Trip]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trip](
	[TripID] [int] IDENTITY(1,1) NOT NULL,
	[EstimateDepartureTime] [datetime] NOT NULL,
	[EstimateArrivalTime] [datetime] NOT NULL,
	[RealDepartureTime] [datetime] NULL,
	[RealArrivalTime] [datetime] NULL,
	[EstimateVolume] [float] NOT NULL,
	[AvailableVolume] [float] NULL,
	[RealVolume] [float] NULL,
	[ScheduleID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Trip] PRIMARY KEY CLUSTERED 
(
	[TripID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Trip] ON
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1569, CAST(0x0000A32F005265C0 AS DateTime), CAST(0x0000A32F00C5C100 AS DateTime), CAST(0x0000A335014DEF60 AS DateTime), NULL, 1200000, 1200000, 0, 13, 1, N'Đang chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1570, CAST(0x0000A330005265C0 AS DateTime), CAST(0x0000A33000C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1571, CAST(0x0000A331005265C0 AS DateTime), CAST(0x0000A33100C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1572, CAST(0x0000A332005265C0 AS DateTime), CAST(0x0000A33200C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1573, CAST(0x0000A333005265C0 AS DateTime), CAST(0x0000A33300C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1574, CAST(0x0000A334005265C0 AS DateTime), CAST(0x0000A33400C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1575, CAST(0x0000A335005265C0 AS DateTime), CAST(0x0000A33500C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1576, CAST(0x0000A32F0083D600 AS DateTime), CAST(0x0000A32F00F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1577, CAST(0x0000A3300083D600 AS DateTime), CAST(0x0000A33000F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1578, CAST(0x0000A3310083D600 AS DateTime), CAST(0x0000A33100F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1579, CAST(0x0000A3320083D600 AS DateTime), CAST(0x0000A33200F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1580, CAST(0x0000A3330083D600 AS DateTime), CAST(0x0000A33300F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1581, CAST(0x0000A3340083D600 AS DateTime), CAST(0x0000A33400F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1582, CAST(0x0000A3350083D600 AS DateTime), CAST(0x0000A33500F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1583, CAST(0x0000A32F00B54640 AS DateTime), CAST(0x0000A32F0128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1584, CAST(0x0000A33000B54640 AS DateTime), CAST(0x0000A3300128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1585, CAST(0x0000A33100B54640 AS DateTime), CAST(0x0000A3310128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1586, CAST(0x0000A33200B54640 AS DateTime), CAST(0x0000A3320128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1587, CAST(0x0000A33300B54640 AS DateTime), CAST(0x0000A3330128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1588, CAST(0x0000A33400B54640 AS DateTime), CAST(0x0000A3340128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1589, CAST(0x0000A33500B54640 AS DateTime), CAST(0x0000A3350128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1590, CAST(0x0000A32F00E6B680 AS DateTime), CAST(0x0000A32F015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1591, CAST(0x0000A33000E6B680 AS DateTime), CAST(0x0000A330015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1592, CAST(0x0000A33100E6B680 AS DateTime), CAST(0x0000A331015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1593, CAST(0x0000A33200E6B680 AS DateTime), CAST(0x0000A332015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1594, CAST(0x0000A33300E6B680 AS DateTime), CAST(0x0000A333015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1595, CAST(0x0000A33400E6B680 AS DateTime), CAST(0x0000A334015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1596, CAST(0x0000A33500E6B680 AS DateTime), CAST(0x0000A335015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1597, CAST(0x0000A32F011826C0 AS DateTime), CAST(0x0000A33000000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1598, CAST(0x0000A330011826C0 AS DateTime), CAST(0x0000A33100000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1599, CAST(0x0000A331011826C0 AS DateTime), CAST(0x0000A33200000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1600, CAST(0x0000A332011826C0 AS DateTime), CAST(0x0000A33300000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1601, CAST(0x0000A333011826C0 AS DateTime), CAST(0x0000A33400000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1602, CAST(0x0000A334011826C0 AS DateTime), CAST(0x0000A33500000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1603, CAST(0x0000A335011826C0 AS DateTime), CAST(0x0000A33600000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1604, CAST(0x0000A32F01499700 AS DateTime), CAST(0x0000A33000317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1605, CAST(0x0000A33001499700 AS DateTime), CAST(0x0000A33100317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1606, CAST(0x0000A33101499700 AS DateTime), CAST(0x0000A33200317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1607, CAST(0x0000A33201499700 AS DateTime), CAST(0x0000A33300317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1608, CAST(0x0000A33301499700 AS DateTime), CAST(0x0000A33400317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1609, CAST(0x0000A33401499700 AS DateTime), CAST(0x0000A33500317040 AS DateTime), CAST(0x0000A334013771D0 AS DateTime), NULL, 13500000, 13500000, 0, 18, 1, N'Đã đến trạm')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1610, CAST(0x0000A33501499700 AS DateTime), CAST(0x0000A33600317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1611, CAST(0x0000A32F005265C0 AS DateTime), CAST(0x0000A32F00F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1612, CAST(0x0000A330005265C0 AS DateTime), CAST(0x0000A33000F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1613, CAST(0x0000A331005265C0 AS DateTime), CAST(0x0000A33100F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1614, CAST(0x0000A332005265C0 AS DateTime), CAST(0x0000A33200F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1615, CAST(0x0000A333005265C0 AS DateTime), CAST(0x0000A33300F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1616, CAST(0x0000A334005265C0 AS DateTime), CAST(0x0000A33400F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1617, CAST(0x0000A335005265C0 AS DateTime), CAST(0x0000A33500F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1618, CAST(0x0000A32F0083D600 AS DateTime), CAST(0x0000A32F0128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1619, CAST(0x0000A3300083D600 AS DateTime), CAST(0x0000A3300128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1620, CAST(0x0000A3310083D600 AS DateTime), CAST(0x0000A3310128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1621, CAST(0x0000A3320083D600 AS DateTime), CAST(0x0000A3320128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1622, CAST(0x0000A3330083D600 AS DateTime), CAST(0x0000A3330128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1623, CAST(0x0000A3340083D600 AS DateTime), CAST(0x0000A3340128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1624, CAST(0x0000A3350083D600 AS DateTime), CAST(0x0000A3350128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1625, CAST(0x0000A32F00B54640 AS DateTime), CAST(0x0000A32F015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1626, CAST(0x0000A33000B54640 AS DateTime), CAST(0x0000A330015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1627, CAST(0x0000A33100B54640 AS DateTime), CAST(0x0000A331015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1628, CAST(0x0000A33200B54640 AS DateTime), CAST(0x0000A332015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1629, CAST(0x0000A33300B54640 AS DateTime), CAST(0x0000A333015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1630, CAST(0x0000A33400B54640 AS DateTime), CAST(0x0000A334015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1631, CAST(0x0000A33500B54640 AS DateTime), CAST(0x0000A335015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1632, CAST(0x0000A32F00E6B680 AS DateTime), CAST(0x0000A33000000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1633, CAST(0x0000A33000E6B680 AS DateTime), CAST(0x0000A33100000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1634, CAST(0x0000A33100E6B680 AS DateTime), CAST(0x0000A33200000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1635, CAST(0x0000A33200E6B680 AS DateTime), CAST(0x0000A33300000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1636, CAST(0x0000A33300E6B680 AS DateTime), CAST(0x0000A33400000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1637, CAST(0x0000A33400E6B680 AS DateTime), CAST(0x0000A33500000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1638, CAST(0x0000A33500E6B680 AS DateTime), CAST(0x0000A33600000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1639, CAST(0x0000A32F011826C0 AS DateTime), CAST(0x0000A33000317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1640, CAST(0x0000A330011826C0 AS DateTime), CAST(0x0000A33100317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1641, CAST(0x0000A331011826C0 AS DateTime), CAST(0x0000A33200317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1642, CAST(0x0000A332011826C0 AS DateTime), CAST(0x0000A33300317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1643, CAST(0x0000A333011826C0 AS DateTime), CAST(0x0000A33400317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1644, CAST(0x0000A334011826C0 AS DateTime), CAST(0x0000A33500317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1645, CAST(0x0000A335011826C0 AS DateTime), CAST(0x0000A33600317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1646, CAST(0x0000A32F01499700 AS DateTime), CAST(0x0000A3300062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1647, CAST(0x0000A33001499700 AS DateTime), CAST(0x0000A3310062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1648, CAST(0x0000A33101499700 AS DateTime), CAST(0x0000A3320062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1649, CAST(0x0000A33201499700 AS DateTime), CAST(0x0000A3330062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1650, CAST(0x0000A33301499700 AS DateTime), CAST(0x0000A3340062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1651, CAST(0x0000A33401499700 AS DateTime), CAST(0x0000A3350062E080 AS DateTime), CAST(0x0000A334013DE816 AS DateTime), NULL, 14343750, 14343750, 0, 30, 1, N'Đã đến trạm')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1652, CAST(0x0000A33501499700 AS DateTime), CAST(0x0000A3360062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1653, CAST(0x0000A335005265C0 AS DateTime), CAST(0x0000A33500C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1654, CAST(0x0000A336005265C0 AS DateTime), CAST(0x0000A33600C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1655, CAST(0x0000A337005265C0 AS DateTime), CAST(0x0000A33700C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1656, CAST(0x0000A338005265C0 AS DateTime), CAST(0x0000A33800C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1657, CAST(0x0000A339005265C0 AS DateTime), CAST(0x0000A33900C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1658, CAST(0x0000A33A005265C0 AS DateTime), CAST(0x0000A33A00C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1659, CAST(0x0000A33B005265C0 AS DateTime), CAST(0x0000A33B00C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1660, CAST(0x0000A3370083D600 AS DateTime), CAST(0x0000A33700F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1661, CAST(0x0000A3380083D600 AS DateTime), CAST(0x0000A33800F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1662, CAST(0x0000A3390083D600 AS DateTime), CAST(0x0000A33900F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1663, CAST(0x0000A33A0083D600 AS DateTime), CAST(0x0000A33A00F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1664, CAST(0x0000A33B0083D600 AS DateTime), CAST(0x0000A33B00F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1665, CAST(0x0000A33C0083D600 AS DateTime), CAST(0x0000A33C00F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1666, CAST(0x0000A33D0083D600 AS DateTime), CAST(0x0000A33D00F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1667, CAST(0x0000A33700B54640 AS DateTime), CAST(0x0000A3370128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1668, CAST(0x0000A33800B54640 AS DateTime), CAST(0x0000A3380128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
GO
print 'Processed 100 total records'
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1669, CAST(0x0000A33900B54640 AS DateTime), CAST(0x0000A3390128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1670, CAST(0x0000A33A00B54640 AS DateTime), CAST(0x0000A33A0128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1671, CAST(0x0000A33B00B54640 AS DateTime), CAST(0x0000A33B0128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1672, CAST(0x0000A33C00B54640 AS DateTime), CAST(0x0000A33C0128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1673, CAST(0x0000A33D00B54640 AS DateTime), CAST(0x0000A33D0128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1674, CAST(0x0000A33700E6B680 AS DateTime), CAST(0x0000A337015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1675, CAST(0x0000A33800E6B680 AS DateTime), CAST(0x0000A338015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1676, CAST(0x0000A33900E6B680 AS DateTime), CAST(0x0000A339015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1677, CAST(0x0000A33A00E6B680 AS DateTime), CAST(0x0000A33A015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1678, CAST(0x0000A33B00E6B680 AS DateTime), CAST(0x0000A33B015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1679, CAST(0x0000A33C00E6B680 AS DateTime), CAST(0x0000A33C015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1680, CAST(0x0000A33D00E6B680 AS DateTime), CAST(0x0000A33D015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1681, CAST(0x0000A337011826C0 AS DateTime), CAST(0x0000A33800000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1682, CAST(0x0000A338011826C0 AS DateTime), CAST(0x0000A33900000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1683, CAST(0x0000A339011826C0 AS DateTime), CAST(0x0000A33A00000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1684, CAST(0x0000A33A011826C0 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1685, CAST(0x0000A33B011826C0 AS DateTime), CAST(0x0000A33C00000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1686, CAST(0x0000A33C011826C0 AS DateTime), CAST(0x0000A33D00000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1687, CAST(0x0000A33D011826C0 AS DateTime), CAST(0x0000A33E00000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1688, CAST(0x0000A33701499700 AS DateTime), CAST(0x0000A33800317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1689, CAST(0x0000A33801499700 AS DateTime), CAST(0x0000A33900317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1690, CAST(0x0000A33901499700 AS DateTime), CAST(0x0000A33A00317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1691, CAST(0x0000A33A01499700 AS DateTime), CAST(0x0000A33B00317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1692, CAST(0x0000A33B01499700 AS DateTime), CAST(0x0000A33C00317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1693, CAST(0x0000A33C01499700 AS DateTime), CAST(0x0000A33D00317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1694, CAST(0x0000A33D01499700 AS DateTime), CAST(0x0000A33E00317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1695, CAST(0x0000A337005265C0 AS DateTime), CAST(0x0000A33700F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1696, CAST(0x0000A338005265C0 AS DateTime), CAST(0x0000A33800F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1697, CAST(0x0000A339005265C0 AS DateTime), CAST(0x0000A33900F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1698, CAST(0x0000A33A005265C0 AS DateTime), CAST(0x0000A33A00F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1699, CAST(0x0000A33B005265C0 AS DateTime), CAST(0x0000A33B00F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1700, CAST(0x0000A33C005265C0 AS DateTime), CAST(0x0000A33C00F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1701, CAST(0x0000A33D005265C0 AS DateTime), CAST(0x0000A33D00F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1702, CAST(0x0000A3370083D600 AS DateTime), CAST(0x0000A3370128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1703, CAST(0x0000A3380083D600 AS DateTime), CAST(0x0000A3380128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1704, CAST(0x0000A3390083D600 AS DateTime), CAST(0x0000A3390128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1705, CAST(0x0000A33A0083D600 AS DateTime), CAST(0x0000A33A0128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1706, CAST(0x0000A33B0083D600 AS DateTime), CAST(0x0000A33B0128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1707, CAST(0x0000A33C0083D600 AS DateTime), CAST(0x0000A33C0128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1708, CAST(0x0000A33D0083D600 AS DateTime), CAST(0x0000A33D0128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1709, CAST(0x0000A33700B54640 AS DateTime), CAST(0x0000A337015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1710, CAST(0x0000A33800B54640 AS DateTime), CAST(0x0000A338015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1711, CAST(0x0000A33900B54640 AS DateTime), CAST(0x0000A339015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1712, CAST(0x0000A33A00B54640 AS DateTime), CAST(0x0000A33A015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1713, CAST(0x0000A33B00B54640 AS DateTime), CAST(0x0000A33B015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1714, CAST(0x0000A33C00B54640 AS DateTime), CAST(0x0000A33C015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1715, CAST(0x0000A33D00B54640 AS DateTime), CAST(0x0000A33D015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1716, CAST(0x0000A33700E6B680 AS DateTime), CAST(0x0000A33800000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1717, CAST(0x0000A33800E6B680 AS DateTime), CAST(0x0000A33900000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1718, CAST(0x0000A33900E6B680 AS DateTime), CAST(0x0000A33A00000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1719, CAST(0x0000A33A00E6B680 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1720, CAST(0x0000A33B00E6B680 AS DateTime), CAST(0x0000A33C00000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1721, CAST(0x0000A33C00E6B680 AS DateTime), CAST(0x0000A33D00000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1722, CAST(0x0000A33D00E6B680 AS DateTime), CAST(0x0000A33E00000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1723, CAST(0x0000A337011826C0 AS DateTime), CAST(0x0000A33800317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1724, CAST(0x0000A338011826C0 AS DateTime), CAST(0x0000A33900317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1725, CAST(0x0000A339011826C0 AS DateTime), CAST(0x0000A33A00317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1726, CAST(0x0000A33A011826C0 AS DateTime), CAST(0x0000A33B00317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1727, CAST(0x0000A33B011826C0 AS DateTime), CAST(0x0000A33C00317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1728, CAST(0x0000A33C011826C0 AS DateTime), CAST(0x0000A33D00317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1729, CAST(0x0000A33D011826C0 AS DateTime), CAST(0x0000A33E00317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1730, CAST(0x0000A33701499700 AS DateTime), CAST(0x0000A3380062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1731, CAST(0x0000A33801499700 AS DateTime), CAST(0x0000A3390062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1732, CAST(0x0000A33901499700 AS DateTime), CAST(0x0000A33A0062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1733, CAST(0x0000A33A01499700 AS DateTime), CAST(0x0000A33B0062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1734, CAST(0x0000A33B01499700 AS DateTime), CAST(0x0000A33C0062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1735, CAST(0x0000A33C01499700 AS DateTime), CAST(0x0000A33D0062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1736, CAST(0x0000A33D01499700 AS DateTime), CAST(0x0000A33E0062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1737, CAST(0x0000A33E005265C0 AS DateTime), CAST(0x0000A33E00C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1738, CAST(0x0000A33F005265C0 AS DateTime), CAST(0x0000A33F00C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1739, CAST(0x0000A340005265C0 AS DateTime), CAST(0x0000A34000C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1740, CAST(0x0000A341005265C0 AS DateTime), CAST(0x0000A34100C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1741, CAST(0x0000A342005265C0 AS DateTime), CAST(0x0000A34200C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1742, CAST(0x0000A343005265C0 AS DateTime), CAST(0x0000A34300C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1743, CAST(0x0000A344005265C0 AS DateTime), CAST(0x0000A34400C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1744, CAST(0x0000A33F0083D600 AS DateTime), CAST(0x0000A33F00F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1745, CAST(0x0000A3400083D600 AS DateTime), CAST(0x0000A34000F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1746, CAST(0x0000A3410083D600 AS DateTime), CAST(0x0000A34100F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1747, CAST(0x0000A3420083D600 AS DateTime), CAST(0x0000A34200F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1748, CAST(0x0000A3430083D600 AS DateTime), CAST(0x0000A34300F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1749, CAST(0x0000A3440083D600 AS DateTime), CAST(0x0000A34400F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1750, CAST(0x0000A3450083D600 AS DateTime), CAST(0x0000A34500F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1751, CAST(0x0000A33F00B54640 AS DateTime), CAST(0x0000A33F0128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1752, CAST(0x0000A34000B54640 AS DateTime), CAST(0x0000A3400128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1753, CAST(0x0000A34100B54640 AS DateTime), CAST(0x0000A3410128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1754, CAST(0x0000A34200B54640 AS DateTime), CAST(0x0000A3420128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1755, CAST(0x0000A34300B54640 AS DateTime), CAST(0x0000A3430128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1756, CAST(0x0000A34400B54640 AS DateTime), CAST(0x0000A3440128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1757, CAST(0x0000A34500B54640 AS DateTime), CAST(0x0000A3450128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1758, CAST(0x0000A33F00E6B680 AS DateTime), CAST(0x0000A33F015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1759, CAST(0x0000A34000E6B680 AS DateTime), CAST(0x0000A340015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1760, CAST(0x0000A34100E6B680 AS DateTime), CAST(0x0000A341015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1761, CAST(0x0000A34200E6B680 AS DateTime), CAST(0x0000A342015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1762, CAST(0x0000A34300E6B680 AS DateTime), CAST(0x0000A343015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1763, CAST(0x0000A34400E6B680 AS DateTime), CAST(0x0000A344015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1764, CAST(0x0000A34500E6B680 AS DateTime), CAST(0x0000A345015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1765, CAST(0x0000A33F011826C0 AS DateTime), CAST(0x0000A34000000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1766, CAST(0x0000A340011826C0 AS DateTime), CAST(0x0000A34100000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1767, CAST(0x0000A341011826C0 AS DateTime), CAST(0x0000A34200000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1768, CAST(0x0000A342011826C0 AS DateTime), CAST(0x0000A34300000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1769, CAST(0x0000A343011826C0 AS DateTime), CAST(0x0000A34400000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
GO
print 'Processed 200 total records'
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1770, CAST(0x0000A344011826C0 AS DateTime), CAST(0x0000A34500000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1771, CAST(0x0000A345011826C0 AS DateTime), CAST(0x0000A34600000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1772, CAST(0x0000A33F01499700 AS DateTime), CAST(0x0000A34000317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1773, CAST(0x0000A34001499700 AS DateTime), CAST(0x0000A34100317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1774, CAST(0x0000A34101499700 AS DateTime), CAST(0x0000A34200317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1775, CAST(0x0000A34201499700 AS DateTime), CAST(0x0000A34300317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1776, CAST(0x0000A34301499700 AS DateTime), CAST(0x0000A34400317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1777, CAST(0x0000A34401499700 AS DateTime), CAST(0x0000A34500317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1778, CAST(0x0000A34501499700 AS DateTime), CAST(0x0000A34600317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1779, CAST(0x0000A33F005265C0 AS DateTime), CAST(0x0000A33F00F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1780, CAST(0x0000A340005265C0 AS DateTime), CAST(0x0000A34000F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1781, CAST(0x0000A341005265C0 AS DateTime), CAST(0x0000A34100F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1782, CAST(0x0000A342005265C0 AS DateTime), CAST(0x0000A34200F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1783, CAST(0x0000A343005265C0 AS DateTime), CAST(0x0000A34300F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1784, CAST(0x0000A344005265C0 AS DateTime), CAST(0x0000A34400F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1785, CAST(0x0000A345005265C0 AS DateTime), CAST(0x0000A34500F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1786, CAST(0x0000A33F0083D600 AS DateTime), CAST(0x0000A33F0128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1787, CAST(0x0000A3400083D600 AS DateTime), CAST(0x0000A3400128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1788, CAST(0x0000A3410083D600 AS DateTime), CAST(0x0000A3410128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1789, CAST(0x0000A3420083D600 AS DateTime), CAST(0x0000A3420128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1790, CAST(0x0000A3430083D600 AS DateTime), CAST(0x0000A3430128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1791, CAST(0x0000A3440083D600 AS DateTime), CAST(0x0000A3440128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1792, CAST(0x0000A3450083D600 AS DateTime), CAST(0x0000A3450128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1793, CAST(0x0000A33F00B54640 AS DateTime), CAST(0x0000A33F015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1794, CAST(0x0000A34000B54640 AS DateTime), CAST(0x0000A340015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1795, CAST(0x0000A34100B54640 AS DateTime), CAST(0x0000A341015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1796, CAST(0x0000A34200B54640 AS DateTime), CAST(0x0000A342015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1797, CAST(0x0000A34300B54640 AS DateTime), CAST(0x0000A343015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1798, CAST(0x0000A34400B54640 AS DateTime), CAST(0x0000A344015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1799, CAST(0x0000A34500B54640 AS DateTime), CAST(0x0000A345015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1800, CAST(0x0000A33F00E6B680 AS DateTime), CAST(0x0000A34000000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1801, CAST(0x0000A34000E6B680 AS DateTime), CAST(0x0000A34100000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1802, CAST(0x0000A34100E6B680 AS DateTime), CAST(0x0000A34200000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1803, CAST(0x0000A34200E6B680 AS DateTime), CAST(0x0000A34300000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1804, CAST(0x0000A34300E6B680 AS DateTime), CAST(0x0000A34400000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1805, CAST(0x0000A34400E6B680 AS DateTime), CAST(0x0000A34500000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1806, CAST(0x0000A34500E6B680 AS DateTime), CAST(0x0000A34600000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1807, CAST(0x0000A33F011826C0 AS DateTime), CAST(0x0000A34000317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1808, CAST(0x0000A340011826C0 AS DateTime), CAST(0x0000A34100317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1809, CAST(0x0000A341011826C0 AS DateTime), CAST(0x0000A34200317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1810, CAST(0x0000A342011826C0 AS DateTime), CAST(0x0000A34300317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1811, CAST(0x0000A343011826C0 AS DateTime), CAST(0x0000A34400317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1812, CAST(0x0000A344011826C0 AS DateTime), CAST(0x0000A34500317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1813, CAST(0x0000A345011826C0 AS DateTime), CAST(0x0000A34600317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1814, CAST(0x0000A33F01499700 AS DateTime), CAST(0x0000A3400062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1815, CAST(0x0000A34001499700 AS DateTime), CAST(0x0000A3410062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1816, CAST(0x0000A34101499700 AS DateTime), CAST(0x0000A3420062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1817, CAST(0x0000A34201499700 AS DateTime), CAST(0x0000A3430062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1818, CAST(0x0000A34301499700 AS DateTime), CAST(0x0000A3440062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1819, CAST(0x0000A34401499700 AS DateTime), CAST(0x0000A3450062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1820, CAST(0x0000A34501499700 AS DateTime), CAST(0x0000A3460062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1821, CAST(0x0000A346005265C0 AS DateTime), CAST(0x0000A34600C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1822, CAST(0x0000A347005265C0 AS DateTime), CAST(0x0000A34700C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1823, CAST(0x0000A348005265C0 AS DateTime), CAST(0x0000A34800C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1824, CAST(0x0000A349005265C0 AS DateTime), CAST(0x0000A34900C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1825, CAST(0x0000A34A005265C0 AS DateTime), CAST(0x0000A34A00C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1826, CAST(0x0000A34B005265C0 AS DateTime), CAST(0x0000A34B00C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1827, CAST(0x0000A34C005265C0 AS DateTime), CAST(0x0000A34C00C5C100 AS DateTime), NULL, NULL, 1200000, 1200000, 0, 13, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1828, CAST(0x0000A3470083D600 AS DateTime), CAST(0x0000A34700F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1829, CAST(0x0000A3480083D600 AS DateTime), CAST(0x0000A34800F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1830, CAST(0x0000A3490083D600 AS DateTime), CAST(0x0000A34900F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1831, CAST(0x0000A34A0083D600 AS DateTime), CAST(0x0000A34A00F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1832, CAST(0x0000A34B0083D600 AS DateTime), CAST(0x0000A34B00F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1833, CAST(0x0000A34C0083D600 AS DateTime), CAST(0x0000A34C00F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1834, CAST(0x0000A34D0083D600 AS DateTime), CAST(0x0000A34D00F73140 AS DateTime), NULL, NULL, 4500000, 4500000, 0, 14, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1835, CAST(0x0000A34700B54640 AS DateTime), CAST(0x0000A3470128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1836, CAST(0x0000A34800B54640 AS DateTime), CAST(0x0000A3480128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1837, CAST(0x0000A34900B54640 AS DateTime), CAST(0x0000A3490128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1838, CAST(0x0000A34A00B54640 AS DateTime), CAST(0x0000A34A0128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1839, CAST(0x0000A34B00B54640 AS DateTime), CAST(0x0000A34B0128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1840, CAST(0x0000A34C00B54640 AS DateTime), CAST(0x0000A34C0128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1841, CAST(0x0000A34D00B54640 AS DateTime), CAST(0x0000A34D0128A180 AS DateTime), NULL, NULL, 7200000, 7200000, 0, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1842, CAST(0x0000A34700E6B680 AS DateTime), CAST(0x0000A347015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1843, CAST(0x0000A34800E6B680 AS DateTime), CAST(0x0000A348015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1844, CAST(0x0000A34900E6B680 AS DateTime), CAST(0x0000A349015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1845, CAST(0x0000A34A00E6B680 AS DateTime), CAST(0x0000A34A015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1846, CAST(0x0000A34B00E6B680 AS DateTime), CAST(0x0000A34B015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1847, CAST(0x0000A34C00E6B680 AS DateTime), CAST(0x0000A34C015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1848, CAST(0x0000A34D00E6B680 AS DateTime), CAST(0x0000A34D015A11C0 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 16, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1849, CAST(0x0000A347011826C0 AS DateTime), CAST(0x0000A34800000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1850, CAST(0x0000A348011826C0 AS DateTime), CAST(0x0000A34900000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1851, CAST(0x0000A349011826C0 AS DateTime), CAST(0x0000A34A00000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1852, CAST(0x0000A34A011826C0 AS DateTime), CAST(0x0000A34B00000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1853, CAST(0x0000A34B011826C0 AS DateTime), CAST(0x0000A34C00000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1854, CAST(0x0000A34C011826C0 AS DateTime), CAST(0x0000A34D00000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1855, CAST(0x0000A34D011826C0 AS DateTime), CAST(0x0000A34E00000000 AS DateTime), NULL, NULL, 12000000, 12000000, 0, 17, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1856, CAST(0x0000A34701499700 AS DateTime), CAST(0x0000A34800317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1857, CAST(0x0000A34801499700 AS DateTime), CAST(0x0000A34900317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1858, CAST(0x0000A34901499700 AS DateTime), CAST(0x0000A34A00317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1859, CAST(0x0000A34A01499700 AS DateTime), CAST(0x0000A34B00317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1860, CAST(0x0000A34B01499700 AS DateTime), CAST(0x0000A34C00317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1861, CAST(0x0000A34C01499700 AS DateTime), CAST(0x0000A34D00317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1862, CAST(0x0000A34D01499700 AS DateTime), CAST(0x0000A34E00317040 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 18, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1863, CAST(0x0000A347005265C0 AS DateTime), CAST(0x0000A34700F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1864, CAST(0x0000A348005265C0 AS DateTime), CAST(0x0000A34800F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1865, CAST(0x0000A349005265C0 AS DateTime), CAST(0x0000A34900F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1866, CAST(0x0000A34A005265C0 AS DateTime), CAST(0x0000A34A00F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1867, CAST(0x0000A34B005265C0 AS DateTime), CAST(0x0000A34B00F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1868, CAST(0x0000A34C005265C0 AS DateTime), CAST(0x0000A34C00F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1869, CAST(0x0000A34D005265C0 AS DateTime), CAST(0x0000A34D00F73140 AS DateTime), NULL, NULL, 1275000, 1275000, 0, 25, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1870, CAST(0x0000A3470083D600 AS DateTime), CAST(0x0000A3470128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
GO
print 'Processed 300 total records'
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1871, CAST(0x0000A3480083D600 AS DateTime), CAST(0x0000A3480128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1872, CAST(0x0000A3490083D600 AS DateTime), CAST(0x0000A3490128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1873, CAST(0x0000A34A0083D600 AS DateTime), CAST(0x0000A34A0128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1874, CAST(0x0000A34B0083D600 AS DateTime), CAST(0x0000A34B0128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1875, CAST(0x0000A34C0083D600 AS DateTime), CAST(0x0000A34C0128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1876, CAST(0x0000A34D0083D600 AS DateTime), CAST(0x0000A34D0128A180 AS DateTime), NULL, NULL, 4781250, 4781250, 0, 26, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1877, CAST(0x0000A34700B54640 AS DateTime), CAST(0x0000A347015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1878, CAST(0x0000A34800B54640 AS DateTime), CAST(0x0000A348015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1879, CAST(0x0000A34900B54640 AS DateTime), CAST(0x0000A349015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1880, CAST(0x0000A34A00B54640 AS DateTime), CAST(0x0000A34A015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1881, CAST(0x0000A34B00B54640 AS DateTime), CAST(0x0000A34B015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1882, CAST(0x0000A34C00B54640 AS DateTime), CAST(0x0000A34C015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1883, CAST(0x0000A34D00B54640 AS DateTime), CAST(0x0000A34D015A11C0 AS DateTime), NULL, NULL, 7650000, 7650000, 0, 27, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1884, CAST(0x0000A34700E6B680 AS DateTime), CAST(0x0000A34800000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1885, CAST(0x0000A34800E6B680 AS DateTime), CAST(0x0000A34900000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1886, CAST(0x0000A34900E6B680 AS DateTime), CAST(0x0000A34A00000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1887, CAST(0x0000A34A00E6B680 AS DateTime), CAST(0x0000A34B00000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1888, CAST(0x0000A34B00E6B680 AS DateTime), CAST(0x0000A34C00000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1889, CAST(0x0000A34C00E6B680 AS DateTime), CAST(0x0000A34D00000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1890, CAST(0x0000A34D00E6B680 AS DateTime), CAST(0x0000A34E00000000 AS DateTime), NULL, NULL, 11156250, 11156250, 0, 28, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1891, CAST(0x0000A347011826C0 AS DateTime), CAST(0x0000A34800317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1892, CAST(0x0000A348011826C0 AS DateTime), CAST(0x0000A34900317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1893, CAST(0x0000A349011826C0 AS DateTime), CAST(0x0000A34A00317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1894, CAST(0x0000A34A011826C0 AS DateTime), CAST(0x0000A34B00317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1895, CAST(0x0000A34B011826C0 AS DateTime), CAST(0x0000A34C00317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1896, CAST(0x0000A34C011826C0 AS DateTime), CAST(0x0000A34D00317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1897, CAST(0x0000A34D011826C0 AS DateTime), CAST(0x0000A34E00317040 AS DateTime), NULL, NULL, 12750000, 12750000, 0, 29, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1898, CAST(0x0000A34701499700 AS DateTime), CAST(0x0000A3480062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1899, CAST(0x0000A34801499700 AS DateTime), CAST(0x0000A3490062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1900, CAST(0x0000A34901499700 AS DateTime), CAST(0x0000A34A0062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1901, CAST(0x0000A34A01499700 AS DateTime), CAST(0x0000A34B0062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1902, CAST(0x0000A34B01499700 AS DateTime), CAST(0x0000A34C0062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1903, CAST(0x0000A34C01499700 AS DateTime), CAST(0x0000A34D0062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1904, CAST(0x0000A34D01499700 AS DateTime), CAST(0x0000A34E0062E080 AS DateTime), NULL, NULL, 14343750, 14343750, 0, 30, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1905, CAST(0x0000A32F005265C0 AS DateTime), CAST(0x0000A32F0083D600 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 37, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1906, CAST(0x0000A330005265C0 AS DateTime), CAST(0x0000A3300083D600 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 37, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1907, CAST(0x0000A331005265C0 AS DateTime), CAST(0x0000A3310083D600 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 37, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1908, CAST(0x0000A332005265C0 AS DateTime), CAST(0x0000A3320083D600 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 37, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1909, CAST(0x0000A333005265C0 AS DateTime), CAST(0x0000A3330083D600 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 37, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1910, CAST(0x0000A334005265C0 AS DateTime), CAST(0x0000A3340083D600 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 37, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1911, CAST(0x0000A335005265C0 AS DateTime), CAST(0x0000A3350083D600 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 37, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1912, CAST(0x0000A32F00735B40 AS DateTime), CAST(0x0000A32F00A4CB80 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 38, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1913, CAST(0x0000A33000735B40 AS DateTime), CAST(0x0000A33000A4CB80 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 38, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1914, CAST(0x0000A33100735B40 AS DateTime), CAST(0x0000A33100A4CB80 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 38, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1915, CAST(0x0000A33200735B40 AS DateTime), CAST(0x0000A33200A4CB80 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 38, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1916, CAST(0x0000A33300735B40 AS DateTime), CAST(0x0000A33300A4CB80 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 38, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1917, CAST(0x0000A33400735B40 AS DateTime), CAST(0x0000A33400A4CB80 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 38, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1918, CAST(0x0000A33500735B40 AS DateTime), CAST(0x0000A33500A4CB80 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 38, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1919, CAST(0x0000A32F009450C0 AS DateTime), CAST(0x0000A32F00C5C100 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 39, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1920, CAST(0x0000A330009450C0 AS DateTime), CAST(0x0000A33000C5C100 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 39, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1921, CAST(0x0000A331009450C0 AS DateTime), CAST(0x0000A33100C5C100 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 39, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1922, CAST(0x0000A332009450C0 AS DateTime), CAST(0x0000A33200C5C100 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 39, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1923, CAST(0x0000A333009450C0 AS DateTime), CAST(0x0000A33300C5C100 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 39, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1924, CAST(0x0000A334009450C0 AS DateTime), CAST(0x0000A33400C5C100 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 39, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1925, CAST(0x0000A335009450C0 AS DateTime), CAST(0x0000A33500C5C100 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 39, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1926, CAST(0x0000A32F00B54640 AS DateTime), CAST(0x0000A32F00E6B680 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 40, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1927, CAST(0x0000A33000B54640 AS DateTime), CAST(0x0000A33000E6B680 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 40, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1928, CAST(0x0000A33100B54640 AS DateTime), CAST(0x0000A33100E6B680 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 40, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1929, CAST(0x0000A33200B54640 AS DateTime), CAST(0x0000A33200E6B680 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 40, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1930, CAST(0x0000A33300B54640 AS DateTime), CAST(0x0000A33300E6B680 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 40, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1931, CAST(0x0000A33400B54640 AS DateTime), CAST(0x0000A33400E6B680 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 40, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1932, CAST(0x0000A33500B54640 AS DateTime), CAST(0x0000A33500E6B680 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 40, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1933, CAST(0x0000A32F00D63BC0 AS DateTime), CAST(0x0000A32F0107AC00 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 41, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1934, CAST(0x0000A33000D63BC0 AS DateTime), CAST(0x0000A3300107AC00 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 41, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1935, CAST(0x0000A33100D63BC0 AS DateTime), CAST(0x0000A3310107AC00 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 41, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1936, CAST(0x0000A33200D63BC0 AS DateTime), CAST(0x0000A3320107AC00 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 41, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1937, CAST(0x0000A33300D63BC0 AS DateTime), CAST(0x0000A3330107AC00 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 41, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1938, CAST(0x0000A33400D63BC0 AS DateTime), CAST(0x0000A3340107AC00 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 41, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1939, CAST(0x0000A33500D63BC0 AS DateTime), CAST(0x0000A3350107AC00 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 41, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1940, CAST(0x0000A32F00F73140 AS DateTime), CAST(0x0000A32F0128A180 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 42, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1941, CAST(0x0000A33000F73140 AS DateTime), CAST(0x0000A3300128A180 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 42, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1942, CAST(0x0000A33100F73140 AS DateTime), CAST(0x0000A3310128A180 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 42, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1943, CAST(0x0000A33200F73140 AS DateTime), CAST(0x0000A3320128A180 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 42, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1944, CAST(0x0000A33300F73140 AS DateTime), CAST(0x0000A3330128A180 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 42, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1945, CAST(0x0000A33400F73140 AS DateTime), CAST(0x0000A3340128A180 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 42, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1946, CAST(0x0000A33500F73140 AS DateTime), CAST(0x0000A3350128A180 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 42, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1947, CAST(0x0000A32F005265C0 AS DateTime), CAST(0x0000A32F0107AC00 AS DateTime), NULL, NULL, 1125000, 1125000, 0, 49, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1948, CAST(0x0000A331005265C0 AS DateTime), CAST(0x0000A3310107AC00 AS DateTime), NULL, NULL, 1125000, 1125000, 0, 49, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1949, CAST(0x0000A333005265C0 AS DateTime), CAST(0x0000A3330107AC00 AS DateTime), NULL, NULL, 1125000, 1125000, 0, 49, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1950, CAST(0x0000A335005265C0 AS DateTime), CAST(0x0000A3350107AC00 AS DateTime), NULL, NULL, 1125000, 1125000, 0, 49, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1951, CAST(0x0000A337005265C0 AS DateTime), CAST(0x0000A3370107AC00 AS DateTime), NULL, NULL, 1125000, 1125000, 0, 49, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1952, CAST(0x0000A339005265C0 AS DateTime), CAST(0x0000A3390107AC00 AS DateTime), NULL, NULL, 1125000, 1125000, 0, 49, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1953, CAST(0x0000A33B005265C0 AS DateTime), CAST(0x0000A33B0107AC00 AS DateTime), NULL, NULL, 1125000, 1125000, 0, 49, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1954, CAST(0x0000A32F0083D600 AS DateTime), CAST(0x0000A32F01391C40 AS DateTime), NULL, NULL, 4218750, 4218750, 0, 50, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1955, CAST(0x0000A3310083D600 AS DateTime), CAST(0x0000A33101391C40 AS DateTime), NULL, NULL, 4218750, 4218750, 0, 50, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1956, CAST(0x0000A3330083D600 AS DateTime), CAST(0x0000A33301391C40 AS DateTime), NULL, NULL, 4218750, 4218750, 0, 50, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1957, CAST(0x0000A3350083D600 AS DateTime), CAST(0x0000A33501391C40 AS DateTime), NULL, NULL, 4218750, 4218750, 0, 50, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1958, CAST(0x0000A3370083D600 AS DateTime), CAST(0x0000A33701391C40 AS DateTime), NULL, NULL, 4218750, 4218750, 0, 50, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1959, CAST(0x0000A3390083D600 AS DateTime), CAST(0x0000A33901391C40 AS DateTime), NULL, NULL, 4218750, 4218750, 0, 50, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1960, CAST(0x0000A33B0083D600 AS DateTime), CAST(0x0000A33B01391C40 AS DateTime), NULL, NULL, 4218750, 4218750, 0, 50, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1961, CAST(0x0000A32F00B54640 AS DateTime), CAST(0x0000A32F016A8C80 AS DateTime), NULL, NULL, 6750000, 6750000, 0, 51, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1962, CAST(0x0000A33100B54640 AS DateTime), CAST(0x0000A331016A8C80 AS DateTime), NULL, NULL, 6750000, 6750000, 0, 51, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1963, CAST(0x0000A33300B54640 AS DateTime), CAST(0x0000A333016A8C80 AS DateTime), NULL, NULL, 6750000, 6750000, 0, 51, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1964, CAST(0x0000A33500B54640 AS DateTime), CAST(0x0000A335016A8C80 AS DateTime), NULL, NULL, 6750000, 6750000, 0, 51, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1965, CAST(0x0000A33700B54640 AS DateTime), CAST(0x0000A337016A8C80 AS DateTime), NULL, NULL, 6750000, 6750000, 0, 51, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1966, CAST(0x0000A33900B54640 AS DateTime), CAST(0x0000A339016A8C80 AS DateTime), NULL, NULL, 6750000, 6750000, 0, 51, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1967, CAST(0x0000A33B00B54640 AS DateTime), CAST(0x0000A33B016A8C80 AS DateTime), NULL, NULL, 6750000, 6750000, 0, 51, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1968, CAST(0x0000A32F00E6B680 AS DateTime), CAST(0x0000A33000107AC0 AS DateTime), NULL, NULL, 9843750, 9843750, 0, 52, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1969, CAST(0x0000A33100E6B680 AS DateTime), CAST(0x0000A33200107AC0 AS DateTime), NULL, NULL, 9843750, 9843750, 0, 52, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1970, CAST(0x0000A33300E6B680 AS DateTime), CAST(0x0000A33400107AC0 AS DateTime), NULL, NULL, 9843750, 9843750, 0, 52, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1971, CAST(0x0000A33500E6B680 AS DateTime), CAST(0x0000A33600107AC0 AS DateTime), NULL, NULL, 9843750, 9843750, 0, 52, 1, N'Chưa chạy')
GO
print 'Processed 400 total records'
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1972, CAST(0x0000A33700E6B680 AS DateTime), CAST(0x0000A33800107AC0 AS DateTime), NULL, NULL, 9843750, 9843750, 0, 52, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1973, CAST(0x0000A33900E6B680 AS DateTime), CAST(0x0000A33A00107AC0 AS DateTime), NULL, NULL, 9843750, 9843750, 0, 52, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1974, CAST(0x0000A33B00E6B680 AS DateTime), CAST(0x0000A33C00107AC0 AS DateTime), NULL, NULL, 9843750, 9843750, 0, 52, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1975, CAST(0x0000A32F011826C0 AS DateTime), CAST(0x0000A3300041EB00 AS DateTime), NULL, NULL, 11250000, 11250000, 0, 53, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1976, CAST(0x0000A331011826C0 AS DateTime), CAST(0x0000A3320041EB00 AS DateTime), NULL, NULL, 11250000, 11250000, 0, 53, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1977, CAST(0x0000A333011826C0 AS DateTime), CAST(0x0000A3340041EB00 AS DateTime), NULL, NULL, 11250000, 11250000, 0, 53, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1978, CAST(0x0000A335011826C0 AS DateTime), CAST(0x0000A3360041EB00 AS DateTime), NULL, NULL, 11250000, 11250000, 0, 53, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1979, CAST(0x0000A337011826C0 AS DateTime), CAST(0x0000A3380041EB00 AS DateTime), NULL, NULL, 11250000, 11250000, 0, 53, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1980, CAST(0x0000A339011826C0 AS DateTime), CAST(0x0000A33A0041EB00 AS DateTime), NULL, NULL, 11250000, 11250000, 0, 53, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1981, CAST(0x0000A33B011826C0 AS DateTime), CAST(0x0000A33C0041EB00 AS DateTime), NULL, NULL, 11250000, 11250000, 0, 53, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1982, CAST(0x0000A32F01499700 AS DateTime), CAST(0x0000A33000735B40 AS DateTime), NULL, NULL, 12656250, 12656250, 0, 54, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1983, CAST(0x0000A33101499700 AS DateTime), CAST(0x0000A33200735B40 AS DateTime), NULL, NULL, 12656250, 12656250, 0, 54, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1984, CAST(0x0000A33301499700 AS DateTime), CAST(0x0000A33400735B40 AS DateTime), NULL, NULL, 12656250, 12656250, 0, 54, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1985, CAST(0x0000A33501499700 AS DateTime), CAST(0x0000A33600735B40 AS DateTime), NULL, NULL, 12656250, 12656250, 0, 54, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1986, CAST(0x0000A33701499700 AS DateTime), CAST(0x0000A33800735B40 AS DateTime), NULL, NULL, 12656250, 12656250, 0, 54, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1987, CAST(0x0000A33901499700 AS DateTime), CAST(0x0000A33A00735B40 AS DateTime), NULL, NULL, 12656250, 12656250, 0, 54, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1988, CAST(0x0000A33B01499700 AS DateTime), CAST(0x0000A33C00735B40 AS DateTime), NULL, NULL, 12656250, 12656250, 0, 54, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1989, CAST(0x0000A32F005265C0 AS DateTime), CAST(0x0000A3300020F580 AS DateTime), NULL, NULL, 1050000, 1050000, 0, 73, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1990, CAST(0x0000A331005265C0 AS DateTime), CAST(0x0000A3320020F580 AS DateTime), NULL, NULL, 1050000, 1050000, 0, 73, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1991, CAST(0x0000A333005265C0 AS DateTime), CAST(0x0000A3340020F580 AS DateTime), NULL, NULL, 1050000, 1050000, 0, 73, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1992, CAST(0x0000A335005265C0 AS DateTime), CAST(0x0000A3360020F580 AS DateTime), CAST(0x0000A334013AB467 AS DateTime), NULL, 1050000, 1050000, 0, 73, 1, N'Đang chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1993, CAST(0x0000A337005265C0 AS DateTime), CAST(0x0000A3380020F580 AS DateTime), NULL, NULL, 1050000, 1050000, 0, 73, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1994, CAST(0x0000A339005265C0 AS DateTime), CAST(0x0000A33A0020F580 AS DateTime), NULL, NULL, 1050000, 1050000, 0, 73, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1995, CAST(0x0000A33B005265C0 AS DateTime), CAST(0x0000A33C0020F580 AS DateTime), NULL, NULL, 1050000, 1050000, 0, 73, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1996, CAST(0x0000A32F0083D600 AS DateTime), CAST(0x0000A330005265C0 AS DateTime), NULL, NULL, 3937499.9999999995, 3937499.9999999995, 0, 74, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1997, CAST(0x0000A3310083D600 AS DateTime), CAST(0x0000A332005265C0 AS DateTime), NULL, NULL, 3937499.9999999995, 3937499.9999999995, 0, 74, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1998, CAST(0x0000A3330083D600 AS DateTime), CAST(0x0000A334005265C0 AS DateTime), NULL, NULL, 3937499.9999999995, 3937499.9999999995, 0, 74, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (1999, CAST(0x0000A3350083D600 AS DateTime), CAST(0x0000A336005265C0 AS DateTime), NULL, NULL, 3937499.9999999995, 3937499.9999999995, 0, 74, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2000, CAST(0x0000A3370083D600 AS DateTime), CAST(0x0000A338005265C0 AS DateTime), NULL, NULL, 3937499.9999999995, 3937499.9999999995, 0, 74, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2001, CAST(0x0000A3390083D600 AS DateTime), CAST(0x0000A33A005265C0 AS DateTime), NULL, NULL, 3937499.9999999995, 3937499.9999999995, 0, 74, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2002, CAST(0x0000A33B0083D600 AS DateTime), CAST(0x0000A33C005265C0 AS DateTime), NULL, NULL, 3937499.9999999995, 3937499.9999999995, 0, 74, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2003, CAST(0x0000A32F00B54640 AS DateTime), CAST(0x0000A3300083D600 AS DateTime), NULL, NULL, 6300000, 6300000, 0, 75, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2004, CAST(0x0000A33100B54640 AS DateTime), CAST(0x0000A3320083D600 AS DateTime), NULL, NULL, 6300000, 6300000, 0, 75, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2005, CAST(0x0000A33300B54640 AS DateTime), CAST(0x0000A3340083D600 AS DateTime), NULL, NULL, 6300000, 6300000, 0, 75, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2006, CAST(0x0000A33500B54640 AS DateTime), CAST(0x0000A3360083D600 AS DateTime), NULL, NULL, 6300000, 6300000, 0, 75, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2007, CAST(0x0000A33700B54640 AS DateTime), CAST(0x0000A3380083D600 AS DateTime), NULL, NULL, 6300000, 6300000, 0, 75, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2008, CAST(0x0000A33900B54640 AS DateTime), CAST(0x0000A33A0083D600 AS DateTime), NULL, NULL, 6300000, 6300000, 0, 75, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2009, CAST(0x0000A33B00B54640 AS DateTime), CAST(0x0000A33C0083D600 AS DateTime), NULL, NULL, 6300000, 6300000, 0, 75, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2010, CAST(0x0000A32F00E6B680 AS DateTime), CAST(0x0000A33000B54640 AS DateTime), NULL, NULL, 9187500, 9187500, 0, 76, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2011, CAST(0x0000A33100E6B680 AS DateTime), CAST(0x0000A33200B54640 AS DateTime), NULL, NULL, 9187500, 9187500, 0, 76, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2012, CAST(0x0000A33300E6B680 AS DateTime), CAST(0x0000A33400B54640 AS DateTime), NULL, NULL, 9187500, 9187500, 0, 76, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2013, CAST(0x0000A33500E6B680 AS DateTime), CAST(0x0000A33600B54640 AS DateTime), NULL, NULL, 9187500, 9187500, 0, 76, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2014, CAST(0x0000A33700E6B680 AS DateTime), CAST(0x0000A33800B54640 AS DateTime), NULL, NULL, 9187500, 9187500, 0, 76, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2015, CAST(0x0000A33900E6B680 AS DateTime), CAST(0x0000A33A00B54640 AS DateTime), NULL, NULL, 9187500, 9187500, 0, 76, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2016, CAST(0x0000A33B00E6B680 AS DateTime), CAST(0x0000A33C00B54640 AS DateTime), NULL, NULL, 9187500, 9187500, 0, 76, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2017, CAST(0x0000A32F011826C0 AS DateTime), CAST(0x0000A33000E6B680 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 77, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2018, CAST(0x0000A331011826C0 AS DateTime), CAST(0x0000A33200E6B680 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 77, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2019, CAST(0x0000A333011826C0 AS DateTime), CAST(0x0000A33400E6B680 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 77, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2020, CAST(0x0000A335011826C0 AS DateTime), CAST(0x0000A33600E6B680 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 77, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2021, CAST(0x0000A337011826C0 AS DateTime), CAST(0x0000A33800E6B680 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 77, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2022, CAST(0x0000A339011826C0 AS DateTime), CAST(0x0000A33A00E6B680 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 77, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2023, CAST(0x0000A33B011826C0 AS DateTime), CAST(0x0000A33C00E6B680 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 77, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2024, CAST(0x0000A32F01499700 AS DateTime), CAST(0x0000A330011826C0 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 78, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2025, CAST(0x0000A33101499700 AS DateTime), CAST(0x0000A332011826C0 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 78, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2026, CAST(0x0000A33301499700 AS DateTime), CAST(0x0000A334011826C0 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 78, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2027, CAST(0x0000A33501499700 AS DateTime), CAST(0x0000A336011826C0 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 78, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2028, CAST(0x0000A33701499700 AS DateTime), CAST(0x0000A338011826C0 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 78, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2029, CAST(0x0000A33901499700 AS DateTime), CAST(0x0000A33A011826C0 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 78, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2030, CAST(0x0000A33B01499700 AS DateTime), CAST(0x0000A33C011826C0 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 78, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2031, CAST(0x0000A33D005265C0 AS DateTime), CAST(0x0000A33D0083D600 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 37, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2032, CAST(0x0000A33E005265C0 AS DateTime), CAST(0x0000A33E0083D600 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 37, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2033, CAST(0x0000A33F005265C0 AS DateTime), CAST(0x0000A33F0083D600 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 37, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2034, CAST(0x0000A340005265C0 AS DateTime), CAST(0x0000A3400083D600 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 37, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2035, CAST(0x0000A341005265C0 AS DateTime), CAST(0x0000A3410083D600 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 37, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2036, CAST(0x0000A342005265C0 AS DateTime), CAST(0x0000A3420083D600 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 37, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2037, CAST(0x0000A343005265C0 AS DateTime), CAST(0x0000A3430083D600 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 37, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2038, CAST(0x0000A33D00735B40 AS DateTime), CAST(0x0000A33D00A4CB80 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 38, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2039, CAST(0x0000A33E00735B40 AS DateTime), CAST(0x0000A33E00A4CB80 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 38, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2040, CAST(0x0000A33F00735B40 AS DateTime), CAST(0x0000A33F00A4CB80 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 38, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2041, CAST(0x0000A34000735B40 AS DateTime), CAST(0x0000A34000A4CB80 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 38, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2042, CAST(0x0000A34100735B40 AS DateTime), CAST(0x0000A34100A4CB80 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 38, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2043, CAST(0x0000A34200735B40 AS DateTime), CAST(0x0000A34200A4CB80 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 38, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2044, CAST(0x0000A34300735B40 AS DateTime), CAST(0x0000A34300A4CB80 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 38, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2045, CAST(0x0000A33D009450C0 AS DateTime), CAST(0x0000A33D00C5C100 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 39, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2046, CAST(0x0000A33E009450C0 AS DateTime), CAST(0x0000A33E00C5C100 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 39, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2047, CAST(0x0000A33F009450C0 AS DateTime), CAST(0x0000A33F00C5C100 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 39, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2048, CAST(0x0000A340009450C0 AS DateTime), CAST(0x0000A34000C5C100 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 39, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2049, CAST(0x0000A341009450C0 AS DateTime), CAST(0x0000A34100C5C100 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 39, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2050, CAST(0x0000A342009450C0 AS DateTime), CAST(0x0000A34200C5C100 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 39, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2051, CAST(0x0000A343009450C0 AS DateTime), CAST(0x0000A34300C5C100 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 39, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2052, CAST(0x0000A33D00B54640 AS DateTime), CAST(0x0000A33D00E6B680 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 40, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2053, CAST(0x0000A33E00B54640 AS DateTime), CAST(0x0000A33E00E6B680 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 40, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2054, CAST(0x0000A33F00B54640 AS DateTime), CAST(0x0000A33F00E6B680 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 40, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2055, CAST(0x0000A34000B54640 AS DateTime), CAST(0x0000A34000E6B680 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 40, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2056, CAST(0x0000A34100B54640 AS DateTime), CAST(0x0000A34100E6B680 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 40, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2057, CAST(0x0000A34200B54640 AS DateTime), CAST(0x0000A34200E6B680 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 40, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2058, CAST(0x0000A34300B54640 AS DateTime), CAST(0x0000A34300E6B680 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 40, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2059, CAST(0x0000A33D00D63BC0 AS DateTime), CAST(0x0000A33D0107AC00 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 41, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2060, CAST(0x0000A33E00D63BC0 AS DateTime), CAST(0x0000A33E0107AC00 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 41, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2061, CAST(0x0000A33F00D63BC0 AS DateTime), CAST(0x0000A33F0107AC00 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 41, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2062, CAST(0x0000A34000D63BC0 AS DateTime), CAST(0x0000A3400107AC00 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 41, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2063, CAST(0x0000A34100D63BC0 AS DateTime), CAST(0x0000A3410107AC00 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 41, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2064, CAST(0x0000A34200D63BC0 AS DateTime), CAST(0x0000A3420107AC00 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 41, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2065, CAST(0x0000A34300D63BC0 AS DateTime), CAST(0x0000A3430107AC00 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 41, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2066, CAST(0x0000A33D00F73140 AS DateTime), CAST(0x0000A33D0128A180 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 42, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2067, CAST(0x0000A33E00F73140 AS DateTime), CAST(0x0000A33E0128A180 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 42, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2068, CAST(0x0000A33F00F73140 AS DateTime), CAST(0x0000A33F0128A180 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 42, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2069, CAST(0x0000A34000F73140 AS DateTime), CAST(0x0000A3400128A180 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 42, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2070, CAST(0x0000A34100F73140 AS DateTime), CAST(0x0000A3410128A180 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 42, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2071, CAST(0x0000A34200F73140 AS DateTime), CAST(0x0000A3420128A180 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 42, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2072, CAST(0x0000A34300F73140 AS DateTime), CAST(0x0000A3430128A180 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 42, 1, N'Chưa chạy')
GO
print 'Processed 500 total records'
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2073, CAST(0x0000A33D005265C0 AS DateTime), CAST(0x0000A33D0107AC00 AS DateTime), NULL, NULL, 1125000, 1125000, 0, 49, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2074, CAST(0x0000A33F005265C0 AS DateTime), CAST(0x0000A33F0107AC00 AS DateTime), NULL, NULL, 1125000, 1125000, 0, 49, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2075, CAST(0x0000A341005265C0 AS DateTime), CAST(0x0000A3410107AC00 AS DateTime), NULL, NULL, 1125000, 1125000, 0, 49, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2076, CAST(0x0000A343005265C0 AS DateTime), CAST(0x0000A3430107AC00 AS DateTime), NULL, NULL, 1125000, 1125000, 0, 49, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2077, CAST(0x0000A345005265C0 AS DateTime), CAST(0x0000A3450107AC00 AS DateTime), NULL, NULL, 1125000, 1125000, 0, 49, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2078, CAST(0x0000A347005265C0 AS DateTime), CAST(0x0000A3470107AC00 AS DateTime), NULL, NULL, 1125000, 1125000, 0, 49, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2079, CAST(0x0000A349005265C0 AS DateTime), CAST(0x0000A3490107AC00 AS DateTime), NULL, NULL, 1125000, 1125000, 0, 49, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2080, CAST(0x0000A33D0083D600 AS DateTime), CAST(0x0000A33D01391C40 AS DateTime), NULL, NULL, 4218750, 4218750, 0, 50, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2081, CAST(0x0000A33F0083D600 AS DateTime), CAST(0x0000A33F01391C40 AS DateTime), NULL, NULL, 4218750, 4218750, 0, 50, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2082, CAST(0x0000A3410083D600 AS DateTime), CAST(0x0000A34101391C40 AS DateTime), NULL, NULL, 4218750, 4218750, 0, 50, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2083, CAST(0x0000A3430083D600 AS DateTime), CAST(0x0000A34301391C40 AS DateTime), NULL, NULL, 4218750, 4218750, 0, 50, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2084, CAST(0x0000A3450083D600 AS DateTime), CAST(0x0000A34501391C40 AS DateTime), NULL, NULL, 4218750, 4218750, 0, 50, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2085, CAST(0x0000A3470083D600 AS DateTime), CAST(0x0000A34701391C40 AS DateTime), NULL, NULL, 4218750, 4218750, 0, 50, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2086, CAST(0x0000A3490083D600 AS DateTime), CAST(0x0000A34901391C40 AS DateTime), NULL, NULL, 4218750, 4218750, 0, 50, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2087, CAST(0x0000A33D00B54640 AS DateTime), CAST(0x0000A33D016A8C80 AS DateTime), NULL, NULL, 6750000, 6750000, 0, 51, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2088, CAST(0x0000A33F00B54640 AS DateTime), CAST(0x0000A33F016A8C80 AS DateTime), NULL, NULL, 6750000, 6750000, 0, 51, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2089, CAST(0x0000A34100B54640 AS DateTime), CAST(0x0000A341016A8C80 AS DateTime), NULL, NULL, 6750000, 6750000, 0, 51, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2090, CAST(0x0000A34300B54640 AS DateTime), CAST(0x0000A343016A8C80 AS DateTime), NULL, NULL, 6750000, 6750000, 0, 51, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2091, CAST(0x0000A34500B54640 AS DateTime), CAST(0x0000A345016A8C80 AS DateTime), NULL, NULL, 6750000, 6750000, 0, 51, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2092, CAST(0x0000A34700B54640 AS DateTime), CAST(0x0000A347016A8C80 AS DateTime), NULL, NULL, 6750000, 6750000, 0, 51, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2093, CAST(0x0000A34900B54640 AS DateTime), CAST(0x0000A349016A8C80 AS DateTime), NULL, NULL, 6750000, 6750000, 0, 51, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2094, CAST(0x0000A33D00E6B680 AS DateTime), CAST(0x0000A33E00107AC0 AS DateTime), NULL, NULL, 9843750, 9843750, 0, 52, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2095, CAST(0x0000A33F00E6B680 AS DateTime), CAST(0x0000A34000107AC0 AS DateTime), NULL, NULL, 9843750, 9843750, 0, 52, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2096, CAST(0x0000A34100E6B680 AS DateTime), CAST(0x0000A34200107AC0 AS DateTime), NULL, NULL, 9843750, 9843750, 0, 52, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2097, CAST(0x0000A34300E6B680 AS DateTime), CAST(0x0000A34400107AC0 AS DateTime), NULL, NULL, 9843750, 9843750, 0, 52, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2098, CAST(0x0000A34500E6B680 AS DateTime), CAST(0x0000A34600107AC0 AS DateTime), NULL, NULL, 9843750, 9843750, 0, 52, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2099, CAST(0x0000A34700E6B680 AS DateTime), CAST(0x0000A34800107AC0 AS DateTime), NULL, NULL, 9843750, 9843750, 0, 52, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2100, CAST(0x0000A34900E6B680 AS DateTime), CAST(0x0000A34A00107AC0 AS DateTime), NULL, NULL, 9843750, 9843750, 0, 52, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2101, CAST(0x0000A33D011826C0 AS DateTime), CAST(0x0000A33E0041EB00 AS DateTime), NULL, NULL, 11250000, 11250000, 0, 53, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2102, CAST(0x0000A33F011826C0 AS DateTime), CAST(0x0000A3400041EB00 AS DateTime), NULL, NULL, 11250000, 11250000, 0, 53, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2103, CAST(0x0000A341011826C0 AS DateTime), CAST(0x0000A3420041EB00 AS DateTime), NULL, NULL, 11250000, 11250000, 0, 53, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2104, CAST(0x0000A343011826C0 AS DateTime), CAST(0x0000A3440041EB00 AS DateTime), NULL, NULL, 11250000, 11250000, 0, 53, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2105, CAST(0x0000A345011826C0 AS DateTime), CAST(0x0000A3460041EB00 AS DateTime), NULL, NULL, 11250000, 11250000, 0, 53, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2106, CAST(0x0000A347011826C0 AS DateTime), CAST(0x0000A3480041EB00 AS DateTime), NULL, NULL, 11250000, 11250000, 0, 53, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2107, CAST(0x0000A349011826C0 AS DateTime), CAST(0x0000A34A0041EB00 AS DateTime), NULL, NULL, 11250000, 11250000, 0, 53, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2108, CAST(0x0000A33D01499700 AS DateTime), CAST(0x0000A33E00735B40 AS DateTime), NULL, NULL, 12656250, 12656250, 0, 54, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2109, CAST(0x0000A33F01499700 AS DateTime), CAST(0x0000A34000735B40 AS DateTime), NULL, NULL, 12656250, 12656250, 0, 54, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2110, CAST(0x0000A34101499700 AS DateTime), CAST(0x0000A34200735B40 AS DateTime), NULL, NULL, 12656250, 12656250, 0, 54, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2111, CAST(0x0000A34301499700 AS DateTime), CAST(0x0000A34400735B40 AS DateTime), NULL, NULL, 12656250, 12656250, 0, 54, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2112, CAST(0x0000A34501499700 AS DateTime), CAST(0x0000A34600735B40 AS DateTime), NULL, NULL, 12656250, 12656250, 0, 54, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2113, CAST(0x0000A34701499700 AS DateTime), CAST(0x0000A34800735B40 AS DateTime), NULL, NULL, 12656250, 12656250, 0, 54, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2114, CAST(0x0000A34901499700 AS DateTime), CAST(0x0000A34A00735B40 AS DateTime), NULL, NULL, 12656250, 12656250, 0, 54, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2115, CAST(0x0000A33E005265C0 AS DateTime), CAST(0x0000A33F0020F580 AS DateTime), NULL, NULL, 1050000, 1050000, 0, 73, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2116, CAST(0x0000A340005265C0 AS DateTime), CAST(0x0000A3410020F580 AS DateTime), NULL, NULL, 1050000, 1050000, 0, 73, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2117, CAST(0x0000A342005265C0 AS DateTime), CAST(0x0000A3430020F580 AS DateTime), NULL, NULL, 1050000, 1050000, 0, 73, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2118, CAST(0x0000A344005265C0 AS DateTime), CAST(0x0000A3450020F580 AS DateTime), NULL, NULL, 1050000, 1050000, 0, 73, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2119, CAST(0x0000A346005265C0 AS DateTime), CAST(0x0000A3470020F580 AS DateTime), NULL, NULL, 1050000, 1050000, 0, 73, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2120, CAST(0x0000A348005265C0 AS DateTime), CAST(0x0000A3490020F580 AS DateTime), NULL, NULL, 1050000, 1050000, 0, 73, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2121, CAST(0x0000A34A005265C0 AS DateTime), CAST(0x0000A34B0020F580 AS DateTime), NULL, NULL, 1050000, 1050000, 0, 73, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2122, CAST(0x0000A33E0083D600 AS DateTime), CAST(0x0000A33F005265C0 AS DateTime), NULL, NULL, 3937499.9999999995, 3937499.9999999995, 0, 74, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2123, CAST(0x0000A3400083D600 AS DateTime), CAST(0x0000A341005265C0 AS DateTime), NULL, NULL, 3937499.9999999995, 3937499.9999999995, 0, 74, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2124, CAST(0x0000A3420083D600 AS DateTime), CAST(0x0000A343005265C0 AS DateTime), NULL, NULL, 3937499.9999999995, 3937499.9999999995, 0, 74, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2125, CAST(0x0000A3440083D600 AS DateTime), CAST(0x0000A345005265C0 AS DateTime), NULL, NULL, 3937499.9999999995, 3937499.9999999995, 0, 74, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2126, CAST(0x0000A3460083D600 AS DateTime), CAST(0x0000A347005265C0 AS DateTime), NULL, NULL, 3937499.9999999995, 3937499.9999999995, 0, 74, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2127, CAST(0x0000A3480083D600 AS DateTime), CAST(0x0000A349005265C0 AS DateTime), NULL, NULL, 3937499.9999999995, 3937499.9999999995, 0, 74, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2128, CAST(0x0000A34A0083D600 AS DateTime), CAST(0x0000A34B005265C0 AS DateTime), NULL, NULL, 3937499.9999999995, 3937499.9999999995, 0, 74, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2129, CAST(0x0000A33E00B54640 AS DateTime), CAST(0x0000A33F0083D600 AS DateTime), NULL, NULL, 6300000, 6300000, 0, 75, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2130, CAST(0x0000A34000B54640 AS DateTime), CAST(0x0000A3410083D600 AS DateTime), NULL, NULL, 6300000, 6300000, 0, 75, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2131, CAST(0x0000A34200B54640 AS DateTime), CAST(0x0000A3430083D600 AS DateTime), NULL, NULL, 6300000, 6300000, 0, 75, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2132, CAST(0x0000A34400B54640 AS DateTime), CAST(0x0000A3450083D600 AS DateTime), NULL, NULL, 6300000, 6300000, 0, 75, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2133, CAST(0x0000A34600B54640 AS DateTime), CAST(0x0000A3470083D600 AS DateTime), NULL, NULL, 6300000, 6300000, 0, 75, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2134, CAST(0x0000A34800B54640 AS DateTime), CAST(0x0000A3490083D600 AS DateTime), NULL, NULL, 6300000, 6300000, 0, 75, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2135, CAST(0x0000A34A00B54640 AS DateTime), CAST(0x0000A34B0083D600 AS DateTime), NULL, NULL, 6300000, 6300000, 0, 75, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2136, CAST(0x0000A33E00E6B680 AS DateTime), CAST(0x0000A33F00B54640 AS DateTime), NULL, NULL, 9187500, 9187500, 0, 76, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2137, CAST(0x0000A34000E6B680 AS DateTime), CAST(0x0000A34100B54640 AS DateTime), NULL, NULL, 9187500, 9187500, 0, 76, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2138, CAST(0x0000A34200E6B680 AS DateTime), CAST(0x0000A34300B54640 AS DateTime), NULL, NULL, 9187500, 9187500, 0, 76, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2139, CAST(0x0000A34400E6B680 AS DateTime), CAST(0x0000A34500B54640 AS DateTime), NULL, NULL, 9187500, 9187500, 0, 76, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2140, CAST(0x0000A34600E6B680 AS DateTime), CAST(0x0000A34700B54640 AS DateTime), NULL, NULL, 9187500, 9187500, 0, 76, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2141, CAST(0x0000A34800E6B680 AS DateTime), CAST(0x0000A34900B54640 AS DateTime), NULL, NULL, 9187500, 9187500, 0, 76, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2142, CAST(0x0000A34A00E6B680 AS DateTime), CAST(0x0000A34B00B54640 AS DateTime), NULL, NULL, 9187500, 9187500, 0, 76, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2143, CAST(0x0000A33E011826C0 AS DateTime), CAST(0x0000A33F00E6B680 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 77, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2144, CAST(0x0000A340011826C0 AS DateTime), CAST(0x0000A34100E6B680 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 77, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2145, CAST(0x0000A342011826C0 AS DateTime), CAST(0x0000A34300E6B680 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 77, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2146, CAST(0x0000A344011826C0 AS DateTime), CAST(0x0000A34500E6B680 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 77, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2147, CAST(0x0000A346011826C0 AS DateTime), CAST(0x0000A34700E6B680 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 77, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2148, CAST(0x0000A348011826C0 AS DateTime), CAST(0x0000A34900E6B680 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 77, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2149, CAST(0x0000A34A011826C0 AS DateTime), CAST(0x0000A34B00E6B680 AS DateTime), NULL, NULL, 10500000, 10500000, 0, 77, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2150, CAST(0x0000A33E01499700 AS DateTime), CAST(0x0000A33F011826C0 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 78, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2151, CAST(0x0000A34001499700 AS DateTime), CAST(0x0000A341011826C0 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 78, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2152, CAST(0x0000A34201499700 AS DateTime), CAST(0x0000A343011826C0 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 78, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2153, CAST(0x0000A34401499700 AS DateTime), CAST(0x0000A345011826C0 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 78, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2154, CAST(0x0000A34601499700 AS DateTime), CAST(0x0000A347011826C0 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 78, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2155, CAST(0x0000A34801499700 AS DateTime), CAST(0x0000A349011826C0 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 78, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2156, CAST(0x0000A34A01499700 AS DateTime), CAST(0x0000A34B011826C0 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 78, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2157, CAST(0x0000A335005265C0 AS DateTime), CAST(0x0000A33500D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2158, CAST(0x0000A336005265C0 AS DateTime), CAST(0x0000A33600D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2159, CAST(0x0000A337005265C0 AS DateTime), CAST(0x0000A33700D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2160, CAST(0x0000A338005265C0 AS DateTime), CAST(0x0000A33800D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2161, CAST(0x0000A339005265C0 AS DateTime), CAST(0x0000A33900D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2162, CAST(0x0000A33A005265C0 AS DateTime), CAST(0x0000A33A00D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2163, CAST(0x0000A33B005265C0 AS DateTime), CAST(0x0000A33B00D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2164, CAST(0x0000A3350083D600 AS DateTime), CAST(0x0000A3350107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2165, CAST(0x0000A3360083D600 AS DateTime), CAST(0x0000A3360107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2166, CAST(0x0000A3370083D600 AS DateTime), CAST(0x0000A3370107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2167, CAST(0x0000A3380083D600 AS DateTime), CAST(0x0000A3380107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2168, CAST(0x0000A3390083D600 AS DateTime), CAST(0x0000A3390107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2169, CAST(0x0000A33A0083D600 AS DateTime), CAST(0x0000A33A0107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2170, CAST(0x0000A33B0083D600 AS DateTime), CAST(0x0000A33B0107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2171, CAST(0x0000A33500B54640 AS DateTime), CAST(0x0000A33501391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2172, CAST(0x0000A33600B54640 AS DateTime), CAST(0x0000A33601391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2173, CAST(0x0000A33700B54640 AS DateTime), CAST(0x0000A33701391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
GO
print 'Processed 600 total records'
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2174, CAST(0x0000A33800B54640 AS DateTime), CAST(0x0000A33801391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2175, CAST(0x0000A33900B54640 AS DateTime), CAST(0x0000A33901391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2176, CAST(0x0000A33A00B54640 AS DateTime), CAST(0x0000A33A01391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2177, CAST(0x0000A33B00B54640 AS DateTime), CAST(0x0000A33B01391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2178, CAST(0x0000A33500E6B680 AS DateTime), CAST(0x0000A335016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2179, CAST(0x0000A33600E6B680 AS DateTime), CAST(0x0000A336016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2180, CAST(0x0000A33700E6B680 AS DateTime), CAST(0x0000A337016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2181, CAST(0x0000A33800E6B680 AS DateTime), CAST(0x0000A338016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2182, CAST(0x0000A33900E6B680 AS DateTime), CAST(0x0000A339016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2183, CAST(0x0000A33A00E6B680 AS DateTime), CAST(0x0000A33A016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2184, CAST(0x0000A33B00E6B680 AS DateTime), CAST(0x0000A33B016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2185, CAST(0x0000A335011826C0 AS DateTime), CAST(0x0000A33600107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2186, CAST(0x0000A336011826C0 AS DateTime), CAST(0x0000A33700107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2187, CAST(0x0000A337011826C0 AS DateTime), CAST(0x0000A33800107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2188, CAST(0x0000A338011826C0 AS DateTime), CAST(0x0000A33900107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2189, CAST(0x0000A339011826C0 AS DateTime), CAST(0x0000A33A00107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2190, CAST(0x0000A33A011826C0 AS DateTime), CAST(0x0000A33B00107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2191, CAST(0x0000A33B011826C0 AS DateTime), CAST(0x0000A33C00107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2192, CAST(0x0000A33501499700 AS DateTime), CAST(0x0000A3360041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2193, CAST(0x0000A33601499700 AS DateTime), CAST(0x0000A3370041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2194, CAST(0x0000A33701499700 AS DateTime), CAST(0x0000A3380041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2195, CAST(0x0000A33801499700 AS DateTime), CAST(0x0000A3390041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2196, CAST(0x0000A33901499700 AS DateTime), CAST(0x0000A33A0041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2197, CAST(0x0000A33A01499700 AS DateTime), CAST(0x0000A33B0041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2198, CAST(0x0000A33B01499700 AS DateTime), CAST(0x0000A33C0041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2199, CAST(0x0000A33D005265C0 AS DateTime), CAST(0x0000A33D00D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2200, CAST(0x0000A33E005265C0 AS DateTime), CAST(0x0000A33E00D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2201, CAST(0x0000A33F005265C0 AS DateTime), CAST(0x0000A33F00D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2202, CAST(0x0000A340005265C0 AS DateTime), CAST(0x0000A34000D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2203, CAST(0x0000A341005265C0 AS DateTime), CAST(0x0000A34100D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2204, CAST(0x0000A342005265C0 AS DateTime), CAST(0x0000A34200D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2205, CAST(0x0000A343005265C0 AS DateTime), CAST(0x0000A34300D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2206, CAST(0x0000A33D0083D600 AS DateTime), CAST(0x0000A33D0107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2207, CAST(0x0000A33E0083D600 AS DateTime), CAST(0x0000A33E0107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2208, CAST(0x0000A33F0083D600 AS DateTime), CAST(0x0000A33F0107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2209, CAST(0x0000A3400083D600 AS DateTime), CAST(0x0000A3400107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2210, CAST(0x0000A3410083D600 AS DateTime), CAST(0x0000A3410107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2211, CAST(0x0000A3420083D600 AS DateTime), CAST(0x0000A3420107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2212, CAST(0x0000A3430083D600 AS DateTime), CAST(0x0000A3430107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2213, CAST(0x0000A33D00B54640 AS DateTime), CAST(0x0000A33D01391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2214, CAST(0x0000A33E00B54640 AS DateTime), CAST(0x0000A33E01391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2215, CAST(0x0000A33F00B54640 AS DateTime), CAST(0x0000A33F01391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2216, CAST(0x0000A34000B54640 AS DateTime), CAST(0x0000A34001391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2217, CAST(0x0000A34100B54640 AS DateTime), CAST(0x0000A34101391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2218, CAST(0x0000A34200B54640 AS DateTime), CAST(0x0000A34201391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2219, CAST(0x0000A34300B54640 AS DateTime), CAST(0x0000A34301391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2220, CAST(0x0000A33D00E6B680 AS DateTime), CAST(0x0000A33D016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2221, CAST(0x0000A33E00E6B680 AS DateTime), CAST(0x0000A33E016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2222, CAST(0x0000A33F00E6B680 AS DateTime), CAST(0x0000A33F016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2223, CAST(0x0000A34000E6B680 AS DateTime), CAST(0x0000A340016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2224, CAST(0x0000A34100E6B680 AS DateTime), CAST(0x0000A341016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2225, CAST(0x0000A34200E6B680 AS DateTime), CAST(0x0000A342016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2226, CAST(0x0000A34300E6B680 AS DateTime), CAST(0x0000A343016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2227, CAST(0x0000A33D011826C0 AS DateTime), CAST(0x0000A33E00107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2228, CAST(0x0000A33E011826C0 AS DateTime), CAST(0x0000A33F00107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2229, CAST(0x0000A33F011826C0 AS DateTime), CAST(0x0000A34000107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2230, CAST(0x0000A340011826C0 AS DateTime), CAST(0x0000A34100107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2231, CAST(0x0000A341011826C0 AS DateTime), CAST(0x0000A34200107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2232, CAST(0x0000A342011826C0 AS DateTime), CAST(0x0000A34300107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2233, CAST(0x0000A343011826C0 AS DateTime), CAST(0x0000A34400107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2234, CAST(0x0000A33D01499700 AS DateTime), CAST(0x0000A33E0041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2235, CAST(0x0000A33E01499700 AS DateTime), CAST(0x0000A33F0041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2236, CAST(0x0000A33F01499700 AS DateTime), CAST(0x0000A3400041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2237, CAST(0x0000A34001499700 AS DateTime), CAST(0x0000A3410041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2238, CAST(0x0000A34101499700 AS DateTime), CAST(0x0000A3420041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2239, CAST(0x0000A34201499700 AS DateTime), CAST(0x0000A3430041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2240, CAST(0x0000A34301499700 AS DateTime), CAST(0x0000A3440041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2241, CAST(0x0000A345005265C0 AS DateTime), CAST(0x0000A34500D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2242, CAST(0x0000A346005265C0 AS DateTime), CAST(0x0000A34600D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2243, CAST(0x0000A347005265C0 AS DateTime), CAST(0x0000A34700D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2244, CAST(0x0000A348005265C0 AS DateTime), CAST(0x0000A34800D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2245, CAST(0x0000A349005265C0 AS DateTime), CAST(0x0000A34900D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2246, CAST(0x0000A34A005265C0 AS DateTime), CAST(0x0000A34A00D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2247, CAST(0x0000A34B005265C0 AS DateTime), CAST(0x0000A34B00D63BC0 AS DateTime), NULL, NULL, 1350000, 1350000, 0, 97, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2248, CAST(0x0000A3450083D600 AS DateTime), CAST(0x0000A3450107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2249, CAST(0x0000A3460083D600 AS DateTime), CAST(0x0000A3460107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2250, CAST(0x0000A3470083D600 AS DateTime), CAST(0x0000A3470107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2251, CAST(0x0000A3480083D600 AS DateTime), CAST(0x0000A3480107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2252, CAST(0x0000A3490083D600 AS DateTime), CAST(0x0000A3490107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2253, CAST(0x0000A34A0083D600 AS DateTime), CAST(0x0000A34A0107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2254, CAST(0x0000A34B0083D600 AS DateTime), CAST(0x0000A34B0107AC00 AS DateTime), NULL, NULL, 5062500, 5062500, 0, 98, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2255, CAST(0x0000A34500B54640 AS DateTime), CAST(0x0000A34501391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2256, CAST(0x0000A34600B54640 AS DateTime), CAST(0x0000A34601391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2257, CAST(0x0000A34700B54640 AS DateTime), CAST(0x0000A34701391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2258, CAST(0x0000A34800B54640 AS DateTime), CAST(0x0000A34801391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2259, CAST(0x0000A34900B54640 AS DateTime), CAST(0x0000A34901391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2260, CAST(0x0000A34A00B54640 AS DateTime), CAST(0x0000A34A01391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2261, CAST(0x0000A34B00B54640 AS DateTime), CAST(0x0000A34B01391C40 AS DateTime), NULL, NULL, 8100000, 8100000, 0, 99, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2262, CAST(0x0000A34500E6B680 AS DateTime), CAST(0x0000A345016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2263, CAST(0x0000A34600E6B680 AS DateTime), CAST(0x0000A346016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2264, CAST(0x0000A34700E6B680 AS DateTime), CAST(0x0000A347016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2265, CAST(0x0000A34800E6B680 AS DateTime), CAST(0x0000A348016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2266, CAST(0x0000A34900E6B680 AS DateTime), CAST(0x0000A349016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2267, CAST(0x0000A34A00E6B680 AS DateTime), CAST(0x0000A34A016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2268, CAST(0x0000A34B00E6B680 AS DateTime), CAST(0x0000A34B016A8C80 AS DateTime), NULL, NULL, 11812500, 11812500, 0, 100, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2269, CAST(0x0000A345011826C0 AS DateTime), CAST(0x0000A34600107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2270, CAST(0x0000A346011826C0 AS DateTime), CAST(0x0000A34700107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2271, CAST(0x0000A347011826C0 AS DateTime), CAST(0x0000A34800107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2272, CAST(0x0000A348011826C0 AS DateTime), CAST(0x0000A34900107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2273, CAST(0x0000A349011826C0 AS DateTime), CAST(0x0000A34A00107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2274, CAST(0x0000A34A011826C0 AS DateTime), CAST(0x0000A34B00107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
GO
print 'Processed 700 total records'
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2275, CAST(0x0000A34B011826C0 AS DateTime), CAST(0x0000A34C00107AC0 AS DateTime), NULL, NULL, 13500000, 13500000, 0, 101, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2276, CAST(0x0000A34501499700 AS DateTime), CAST(0x0000A3460041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2277, CAST(0x0000A34601499700 AS DateTime), CAST(0x0000A3470041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2278, CAST(0x0000A34701499700 AS DateTime), CAST(0x0000A3480041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2279, CAST(0x0000A34801499700 AS DateTime), CAST(0x0000A3490041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2280, CAST(0x0000A34901499700 AS DateTime), CAST(0x0000A34A0041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2281, CAST(0x0000A34A01499700 AS DateTime), CAST(0x0000A34B0041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [ScheduleID], [IsActive], [Status]) VALUES (2282, CAST(0x0000A34B01499700 AS DateTime), CAST(0x0000A34C0041EB00 AS DateTime), NULL, NULL, 15187500, 15187500, 0, 102, 1, N'Chưa chạy')
SET IDENTITY_INSERT [dbo].[Trip] OFF
/****** Object:  Table [dbo].[RouteStage]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RouteStage](
	[RouteID] [int] NOT NULL,
	[StageID] [int] NOT NULL,
	[StageIndex] [int] NOT NULL,
 CONSTRAINT [PK_RouteStage] PRIMARY KEY CLUSTERED 
(
	[RouteID] ASC,
	[StageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (1, 10, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (2, 1, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (2, 3, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (3, 1, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (3, 3, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (3, 9, 3)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (4, 3, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (5, 2, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (5, 5, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (6, 6, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (6, 13, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (7, 4, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (7, 7, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (7, 13, 3)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (7, 14, 4)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (8, 5, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (8, 13, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (8, 14, 3)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (9, 15, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (10, 8, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (11, 12, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (12, 13, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (12, 14, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (13, 11, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (13, 13, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (13, 14, 3)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (13, 15, 4)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (14, 14, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (14, 15, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (15, 7, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (15, 13, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (15, 14, 3)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (15, 15, 4)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (16, 25, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (17, 16, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (17, 18, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (18, 16, 3)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (18, 18, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (18, 24, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (19, 18, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (20, 17, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (20, 20, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (21, 21, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (21, 28, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (22, 19, 4)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (22, 22, 3)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (22, 28, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (22, 29, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (23, 20, 3)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (23, 28, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (23, 29, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (24, 30, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (25, 23, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (26, 27, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (27, 28, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (27, 29, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (28, 26, 4)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (28, 28, 3)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (28, 29, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (28, 30, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (29, 29, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (29, 30, 1)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (30, 22, 4)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (30, 28, 3)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (30, 29, 2)
INSERT [dbo].[RouteStage] ([RouteID], [StageID], [StageIndex]) VALUES (30, 30, 1)
/****** Object:  Table [dbo].[Request]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[DeliveryStatusID] [int] NOT NULL,
	[FeeID] [int] NOT NULL,
	[EstimateWeight] [nvarchar](50) NOT NULL,
	[EstimateVolume] [nvarchar](50) NOT NULL,
	[DateRequest] [datetime] NOT NULL,
	[FromLocation] [int] NOT NULL,
	[ToLocation] [int] NOT NULL,
	[SenderName] [nvarchar](50) NOT NULL,
	[SenderAddress] [nvarchar](500) NOT NULL,
	[ReceiverAddress] [nvarchar](500) NOT NULL,
	[SenderPhone] [nvarchar](50) NOT NULL,
	[ReceiverName] [nvarchar](100) NOT NULL,
	[ReceiverPhone] [nvarchar](50) NOT NULL,
	[Type] [bit] NOT NULL,
	[TypeOfPayment] [nvarchar](100) NOT NULL,
	[ArrivedDate] [date] NULL,
	[Payment] [bit] NOT NULL,
	[RequestCode] [nvarchar](50) NOT NULL,
	[Length] [float] NOT NULL,
	[Width] [float] NOT NULL,
	[Height] [float] NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Request] ON
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (11, N'guest', 9, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 1, N'Đào Bảo Long', N'Cà Mau', N'Quận 5, Hồ Chí Minh', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'abcdef', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (12, N'guest', 9, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 2, N'Nguyễn Thanh Tùng', N'Cà Mau', N'Vũng Tàu', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'bcdefa', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (13, N'ducnt', 9, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 3, N'Nguyễn Tấn Đức', N'Cà Mau', N'Đà Lạt', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'cdefab', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (14, N'tungnt', 9, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 4, N'Lê Phúc Lữ', N'Cà Mau', N'Nha Trang', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'defabc', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (16, N'lulp', 9, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 5, N'Nguyễn Trọng Tài', N'Cà Mau', N'Bến xe miền Tây', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'efabcd', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (17, N'ducnt', 8, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 7, N'Đào Bảo Long', N'Cà Mau', N'Cần Thơ', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 0, N'Tiền mặt', CAST(0x7B380B00 AS Date), 1, N'fabcde', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (18, N'ducnt', 8, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 7, N'Nguyễn Thanh Tùng', N'Cà Mau', N'Cần Thơ', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 0, N'Tiền mặt', CAST(0x7B380B00 AS Date), 1, N'zsdf45f', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (19, N'lulp', 8, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 1, 7, N'Nguyễn Tấn Đức', N'Quận 5, Hồ Chí Minh', N'Cần Thơ', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', CAST(0x7B380B00 AS Date), 1, N'765ggvs', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (20, N'lulp', 8, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 5, 7, N'Lê Phúc Lữ', N'Bến xe miền Tây, Hồ Chí Minh', N'Cần Thơ', N'841657577422', N'Nguyễn Tấn Đức', N'841657577422', 1, N'Tiền mặt', CAST(0x7B380B00 AS Date), 1, N'635rvda', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (21, N'lulp', 8, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 5, 7, N'Nguyễn Trọng Tài', N'Bến xe miền Tây, Hồ Chí Minh', N'Cần Thơ', N'841657577422', N'Nguyễn Tấn Đức', N'841657577422', 1, N'Tiền mặt', CAST(0x7B380B00 AS Date), 1, N'dfbvbszf', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (22, N'lulp', 7, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 8, N'Lê Phúc Lữ', N'Cà Mau', N'Đà Nẵng', N'841657577422', N'Nguyễn Tấn Đức', N'841657577422', 1, N'Chuyển khoản', CAST(0x78380B00 AS Date), 0, N'zfbbrav', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (23, N'tungnt', 7, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 7, 9, N'Lê Phúc Lữ', N'Cà Mau', N'Quy Nhơn', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', CAST(0x78380B00 AS Date), 1, N'zzfvzfvs', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (24, N'tungnt', 7, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 8, N'Lê Phúc Lữ', N'Cà Mau', N'Đà Nẵng', N'841657577422', N'Nguyễn Tấn Đức', N'841657577422', 1, N'Tiền mặt', CAST(0x78380B00 AS Date), 1, N'xyztwu', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (25, N'tungnt', 7, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 3, N'Nguyễn Tấn Đức', N'Cà Mau', N'Đà Lạt', N'841657577422', N'Nguyễn Tấn Đức', N'841657577422', 1, N'Tiền mặt', CAST(0x78380B00 AS Date), 1, N'abntytr', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (26, N'ducnt', 7, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 9, N'Lê Phúc Lữ', N'Cà Mau', N'Quy Nhơn', N'841657577422', N'Đào Bảo Long', N'841657577422', 1, N'Chuyển khoản', CAST(0x78380B00 AS Date), 1, N'svdasv', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (27, N'guest', 6, 2, N'0 - 10', N'0 - 50', CAST(0x0000A336010ECC8D AS DateTime), 10, 8, N'Nguyễn Thanh Tùng', N'Cà Mau', N'Đà Nẵng', N'0123456789', N'Lê Phúc Lữ', N'01628468737', 1, N'Chuyển khoản', CAST(0x78380B00 AS Date), 0, N'kpWt33u', 1, 1, 1)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (28, N'lulp', 6, 2, N'0 - 10', N'0 - 50', CAST(0x0000A336010ECC8D AS DateTime), 10, 5, N'Đào Bảo Long', N'Cà Mau', N'Bến xe miền Tây', N'0123456789', N'Lê Phúc Lữ', N'01628468737', 1, N'Chuyển khoản', CAST(0x78380B00 AS Date), 0, N'pK5oRLo', 1, 1, 1)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (29, N'guest', 6, 2, N'10 - 20', N'0 - 50', CAST(0x0000A336010ECC8D AS DateTime), 10, 5, N'Lê  Phúc Lữ', N'Cà Mau', N'bến xe miền tây, hồ chí minh', N'01657577422', N'Nguyễn Thanh Tùng', N'01628468737', 1, N'Tiền mặt', CAST(0x78380B00 AS Date), 1, N's4ZrVQ8', 2, 2, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (30, N'tungnt', 6, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 7, N'Đào Bảo Long', N'Cà Mau', N'Cần Thơ', N'841657577422', N'Đào Bảo Long', N'841657577422', 1, N'Tiền mặt', CAST(0x78380B00 AS Date), 1, N'fgrtnccf', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (31, N'tungnt', 6, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 2, N'Nguyễn Thanh Tùng', N'Cà Mau', N'Vũng Tàu', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'ymjryhrw', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (32, N'guest', 6, 2, N'10 - 20', N'0 - 50', CAST(0x0000A336010ECC8D AS DateTime), 10, 5, N'Lê  Phúc Lữ', N'Cà Mau', N'Sài Gòn', N'01657577422', N'Nguyễn Thanh Tùng', N'01628468737', 1, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N's4ZrVQ8', 2, 2, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (33, N'tungnt', 6, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 4, N'Đào Bảo Long', N'Cà Mau', N'Nha Trang', N'841657577422', N'Đào Bảo Long', N'841657577422', 1, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'jkllbdbvv', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (34, N'tungnt', 6, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A336010ECC8D AS DateTime), 10, 8, N'Nguyễn Thanh Tùng', N'Cà Mau', N'Đà Nẵng', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'sdjgrbrv', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (35, N'guest', 6, 2, N'10 - 20', N'0 - 50', CAST(0x0000A336010ECC8D AS DateTime), 10, 1, N'Lê  Phúc Lữ', N'Cà Mau', N'bến xe miền tây, hồ chí minh', N'01657577422', N'Nguyễn Thanh Tùng', N'01628468737', 1, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'dfmcfsft', 2, 2, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (36, N'tungnt', 6, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A32100735B40 AS DateTime), 10, 3, N'Đào Bảo Long', N'Cà Mau', N'Đà Lạt', N'841657577422', N'Đào Bảo Long', N'841657577422', 1, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'acbtgev', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (37, N'tungnt', 8, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A32100735B40 AS DateTime), 1, 7, N'Nguyễn Thanh Tùng', N'Quận 5, Hồ Chí Minh', N'Cần Thơ', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 0, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'ayjrswb', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (38, N'guest', 8, 2, N'10 - 20', N'0 - 50', CAST(0x0000A32100735B40 AS DateTime), 2, 7, N'Nguyễn Tấn Đức', N'Vũng Tàu', N'Cần Thơ', N'01657577422', N'Nguyễn Thanh Tùng', N'01628468737', 0, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'ngbrytrn', 2, 2, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (39, N'tungnt', 5, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A32100735B40 AS DateTime), 3, 7, N'Đào Bảo Long', N'Đà Lạt', N'Cần Thơ', N'841657577422', N'Đào Bảo Long', N'841657577422', 1, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'acsacsv', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (40, N'tungnt', 5, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A32100735B40 AS DateTime), 4, 7, N'Nguyễn Thanh Tùng', N'Nha Trang', N'Cần Thơ', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'acqwge', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (41, N'guest', 5, 2, N'10 - 20', N'0 - 50', CAST(0x0000A32100735B40 AS DateTime), 5, 7, N'Nguyễn Tấn Đức', N'Bến xe miền Tây, Hồ Chí Minh', N'Cần Thơ', N'01657577422', N'Nguyễn Thanh Tùng', N'01628468737', 1, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'hrewegt', 2, 2, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (42, N'tungnt', 5, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A32100735B40 AS DateTime), 6, 7, N'Đào Bảo Long', N'Bến xe miền Đông, Hồ Chí Minh', N'Cần Thơ', N'841657577422', N'Đào Bảo Long', N'841657577422', 1, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'sfcfacva', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (43, N'tungnt', 5, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A32100735B40 AS DateTime), 7, 7, N'Nguyễn Thanh Tùng', N'Cần Thơ', N'Cần Thơ', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'sffavad', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (44, N'guest', 5, 3, N'10 - 20', N'100 - 500', CAST(0x0000A32100735B40 AS DateTime), 8, 7, N'Lê Phúc Lữ', N'Đà Nẵng', N'Cần Thơ', N'01828468737', N'Nguyễn Thanh Tùng', N'8416575774', 1, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'zElLteI', 5, 6, 4)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (45, N'guest', 5, 2, N'0 - 10', N'0 - 50', CAST(0x0000A32100735B40 AS DateTime), 9, 7, N'Thanh Tùng', N'Quy Nhơn', N'Cần Thơ', N'01657577422', N'Tấn Đức', N'01657577422', 1, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'Q0VcW49', 2, 3, 1)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (46, N'guest', 5, 2, N'0 - 10', N'0 - 50', CAST(0x0000A32100735B40 AS DateTime), 1, 7, N'Thanh Tùng', N'Quận 5, Hồ Chí Minh', N'Cần Thơ', N'01657577422', N'Tấn Đức', N'01657577422', 1, N'Tiền mặt', CAST(0x7C380B00 AS Date), 1, N'sdvsvee4', 2, 3, 1)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (47, N'tungnt', 5, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A32100735B40 AS DateTime), 10, 7, N'Nguyễn Thanh Tùng', N'Cà Mau', N'Cần Thơ', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', CAST(0x90380B00 AS Date), 1, N'ayjrswb', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (48, N'guest', 5, 2, N'10 - 20', N'0 - 50', CAST(0x0000A32100735B40 AS DateTime), 10, 7, N'Nguyễn Tấn Đức', N'Cà Mau', N'Cần Thơ', N'01657577422', N'Nguyễn Thanh Tùng', N'01628468737', 1, N'Tiền mặt', CAST(0x90380B00 AS Date), 1, N'ngbrytrn', 2, 2, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (49, N'tungnt', 5, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A32100735B40 AS DateTime), 10, 7, N'Đào Bảo Long', N'Cà Mau', N'Cần Thơ', N'841657577422', N'Đào Bảo Long', N'841657577422', 1, N'Tiền mặt', CAST(0x90380B00 AS Date), 1, N'acsacsv', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (51, N'guest', 5, 2, N'10 - 20', N'0 - 50', CAST(0x0000A32100735B40 AS DateTime), 10, 7, N'Nguyễn Tấn Đức', N'Cà Mau', N'Cần Thơ', N'01657577422', N'Nguyễn Thanh Tùng', N'01628468737', 1, N'Tiền mặt', CAST(0x90380B00 AS Date), 1, N'hrewegt', 2, 2, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (52, N'tungnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A32100735B40 AS DateTime), 10, 5, N'Đào Bảo Long', N'Cà Mau', N'Bến xe miền Tây, Hồ Chí Minh', N'841657577422', N'Đào Bảo Long', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'sfcfacva', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (54, N'tungnt', 2, 3, N'10 - 20', N'100 - 500', CAST(0x0000A3340109C83C AS DateTime), 7, 4, N'Lê Phúc Lữ', N'Cà Mau', N'Nha Trang', N'01828468737', N'Nguyễn Thanh Tùng', N'8416575774', 1, N'Tiền mặt', NULL, 1, N'zElLteI', 5, 6, 4)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (55, N'guest', 2, 2, N'0 - 10', N'0 - 50', CAST(0x0000A3340109C83C AS DateTime), 7, 9, N'Thanh Tùng', N'Cà Mau', N'Quy Nhơn', N'01657577422', N'Tấn Đức', N'01657577422', 1, N'Tiền mặt', NULL, 1, N'Q0VcW49', 2, 3, 1)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (56, N'tungnt', 2, 2, N'0 - 10', N'0 - 50', CAST(0x0000A3340109C83C AS DateTime), 7, 4, N'Thanh Tùng', N'Cà Mau', N'Nha Trang', N'01657577422', N'Tấn Đức', N'01657577422', 1, N'Tiền mặt', NULL, 1, N'sdvsvee4', 2, 3, 1)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (57, N'guest', 2, 2, N'10 - 20', N'0 - 50', CAST(0x0000A3340109C83C AS DateTime), 10, 5, N'Nguyễn Tấn Đức', N'Cà Mau', N'Bến xe miền Tây, Hồ Chí Minh', N'01657577422', N'Nguyễn Thanh Tùng', N'01628468737', 1, N'Tiền mặt', NULL, 1, N'hrewegt', 2, 2, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (58, N'tungnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A3340109C83C AS DateTime), 10, 2, N'Đào Bảo Long', N'Cà Mau', N'Vũng Tàu', N'841657577422', N'Đào Bảo Long', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'sfcfacva', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (59, N'tungnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A3340109C83C AS DateTime), 7, 3, N'Nguyễn Thanh Tùng', N'Cà Mau', N'Đà Lạt', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'sffavad', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (60, N'guest', 2, 3, N'10 - 20', N'100 - 500', CAST(0x0000A3340109C83C AS DateTime), 10, 2, N'Lê Phúc Lữ', N'Cà Mau', N'Vũng Tàu', N'01828468737', N'Nguyễn Thanh Tùng', N'8416575774', 1, N'Tiền mặt', NULL, 1, N'zElLteI', 5, 6, 4)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (61, N'guest', 2, 2, N'0 - 10', N'0 - 50', CAST(0x0000A3340109C83C AS DateTime), 10, 5, N'Thanh Tùng', N'Cà Mau', N'Bến xe miền Tây, Hồ Chí Minh', N'01657577422', N'Tấn Đức', N'01657577422', 1, N'Tiền mặt', NULL, 1, N'wggdvqa', 2, 3, 1)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (62, N'guest', 2, 2, N'0 - 10', N'0 - 50', CAST(0x0000A3340109C83C AS DateTime), 7, 6, N'Thanh Tùng', N'Cà Mau', N'Bến xe miền Đông, Hồ Chí Minh', N'01657577422', N'Tấn Đức', N'01657577422', 1, N'Tiền mặt', NULL, 1, N'cacavv', 2, 3, 1)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (63, N'tungnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A3340109C83C AS DateTime), 10, 7, N'Nguyễn Thanh Tùng', N'Cà Mau', N'Cần Thơ', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', CAST(0x90380B00 AS Date), 1, N'acavaba', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (64, N'guest', 2, 2, N'10 - 20', N'0 - 50', CAST(0x0000A3340109C83C AS DateTime), 10, 8, N'Nguyễn Tấn Đức', N'Cà Mau', N'Đà Nẵng', N'01657577422', N'Nguyễn Thanh Tùng', N'01628468737', 1, N'Tiền mặt', NULL, 1, N'ngbrytrn', 2, 2, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (65, N'tungnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A3340109C83C AS DateTime), 7, 3, N'Đào Bảo Long', N'Cà Mau', N'Đà Lạt', N'841657577422', N'Đào Bảo Long', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'4t4fgea', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (66, N'guest', 2, 2, N'0 - 10', N'0 - 50', CAST(0x0000A3340109C83C AS DateTime), 10, 5, N'meomeo', N'Cà Mau', N'Bến xe miền Tây', N'01657577422', N'Nguyễn Thanh Tùng', N'01654433224', 1, N'Chuyển khoản', NULL, 1, N'yapEbul', 4, 5, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (67, N'tungnt', 2, 3, N'10 - 20', N'100 - 500', CAST(0x0000A3340109C83C AS DateTime), 7, 4, N'Lê Phúc Lữ', N'Cà Mau', N'Nha Trang', N'01828468737', N'Nguyễn Thanh Tùng', N'8416575774', 1, N'Tiền mặt', NULL, 1, N'zElLteI', 5, 6, 4)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (68, N'guest', 2, 2, N'0 - 10', N'0 - 50', CAST(0x0000A3340109C83C AS DateTime), 7, 9, N'Thanh Tùng', N'Cà Mau', N'Quy Nhơn', N'01657577422', N'Tấn Đức', N'01657577422', 1, N'Tiền mặt', NULL, 1, N'Q0VcW49', 2, 3, 1)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (69, N'tungnt', 2, 2, N'0 - 10', N'0 - 50', CAST(0x0000A3340109C83C AS DateTime), 7, 8, N'Thanh Tùng', N'Cà Mau', N'Đà Nẵng', N'01657577422', N'Tấn Đức', N'01657577422', 1, N'Tiền mặt', NULL, 1, N'sdvsvee4', 2, 3, 1)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (70, N'guest', 2, 2, N'10 - 20', N'0 - 50', CAST(0x0000A3340109C83C AS DateTime), 10, 5, N'Nguyễn Tấn Đức', N'Cà Mau', N'Bến xe miền Tây, Hồ Chí Minh', N'01657577422', N'Nguyễn Thanh Tùng', N'01628468737', 1, N'Tiền mặt', NULL, 1, N'hrewegt', 2, 2, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (71, N'tungnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A3340109C83C AS DateTime), 10, 2, N'Đào Bảo Long', N'Cà Mau', N'Vũng Tàu', N'841657577422', N'Đào Bảo Long', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'sfcfacva', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (72, N'tungnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A3340109C83C AS DateTime), 7, 3, N'Nguyễn Thanh Tùng', N'Cà Mau', N'Đà Lạt', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'sffavad', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (73, N'guest', 2, 3, N'10 - 20', N'100 - 500', CAST(0x0000A3340109C83C AS DateTime), 10, 7, N'Lê Phúc Lữ', N'Cà Mau', N'Quy Nhơn', N'01828468737', N'Nguyễn Thanh Tùng', N'8416575774', 1, N'Tiền mặt', NULL, 1, N'zElLteI', 5, 6, 4)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (74, N'guest', 2, 2, N'0 - 10', N'0 - 50', CAST(0x0000A3340109C83C AS DateTime), 10, 5, N'Thanh Tùng', N'Cà Mau', N'Bến xe miền Tây, Hồ Chí Minh', N'01657577422', N'Tấn Đức', N'01657577422', 1, N'Tiền mặt', NULL, 1, N'wggdvqa', 2, 3, 1)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (75, N'guest', 2, 2, N'0 - 10', N'0 - 50', CAST(0x0000A32400735B40 AS DateTime), 7, 6, N'Thanh Tùng', N'Cà Mau', N'Bến xe miền Đông, Hồ Chí Minh', N'01657577422', N'Tấn Đức', N'01657577422', 1, N'Tiền mặt', NULL, 1, N'cacavv', 2, 3, 1)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (76, N'tungnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A32400735B40 AS DateTime), 10, 5, N'Nguyễn Thanh Tùng', N'Cà Mau', N'Bến xe miền Tây', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', CAST(0x90380B00 AS Date), 1, N'acavaba', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (77, N'guest', 2, 2, N'10 - 20', N'0 - 50', CAST(0x0000A3340109C83C AS DateTime), 10, 2, N'Nguyễn Tấn Đức', N'Cà Mau', N'Vũng Tàu', N'01657577422', N'Nguyễn Thanh Tùng', N'01628468737', 1, N'Tiền mặt', NULL, 1, N'ngbrytrn', 2, 2, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (78, N'tungnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A3340109C83C AS DateTime), 7, 3, N'Đào Bảo Long', N'Cà Mau', N'Đà Lạt', N'841657577422', N'Đào Bảo Long', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'4t4fgea', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (79, N'tungnt', 2, 2, N'0 - 10', N'0 - 50', CAST(0x0000A3340109C83C AS DateTime), 10, 5, N'meomeo', N'Cà Mau', N'Bến xe miền Tây', N'01657577422', N'Nguyễn Thanh Tùng', N'01654433224', 1, N'Chuyển khoản', NULL, 0, N'yapEbul', 4, 5, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (80, N'guest', 1, 3, N'0 - 10', N'100 - 500', CAST(0x0000A33900B86320 AS DateTime), 10, 7, N'Lê Phúc Lữ', N'163 Phan Ngọc Hiển, phường 6, Cà Mau', N'Cần Thơ', N'01678336358', N'Nguyễn Thanh Tùng', N'01654433224', 1, N'Chuyển khoản', NULL, 1, N'FmtdbyS', 5, 5, 5)
SET IDENTITY_INSERT [dbo].[Request] OFF
/****** Object:  Table [dbo].[Rating]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[RateLevel] [float] NOT NULL,
	[StationID] [int] NOT NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Rating] ON
INSERT [dbo].[Rating] ([RatingID], [Username], [RateLevel], [StationID]) VALUES (2, N'tungnt', 0.72000002861022949, 1)
SET IDENTITY_INSERT [dbo].[Rating] OFF
/****** Object:  Table [dbo].[Comment]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CommentContent] [nvarchar](4000) NOT NULL,
	[DatePost] [date] NOT NULL,
	[Status] [bit] NOT NULL,
	[StationID] [int] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comment] ON
INSERT [dbo].[Comment] ([CommentID], [Username], [CommentContent], [DatePost], [Status], [StationID]) VALUES (1, N'ducnt', N'Trạm phục vụ tốt! :)', CAST(0x66380B00 AS Date), 0, 1)
INSERT [dbo].[Comment] ([CommentID], [Username], [CommentContent], [DatePost], [Status], [StationID]) VALUES (2, N'tungnt', N'Trạm phục vụ ko tốt! :)', CAST(0x75380B00 AS Date), 0, 1)
SET IDENTITY_INSERT [dbo].[Comment] OFF
/****** Object:  Table [dbo].[Invoice]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[Weight] [float] NOT NULL,
	[Volume] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[RequestID] [int] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (18, 5, 6, 21600, 17)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (19, 10, 7, 21600, 18)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (20, 5, 7, 28000, 19)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (21, 5, 2, 28000, 20)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (22, 5, 2, 21600, 21)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (23, 5, 6, 24000, 22)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (24, 10, 7, 27000, 23)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (25, 5, 7, 28000, 24)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (26, 5, 2, 21600, 25)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (27, 5, 2, 21600, 26)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (40, 15, 20, 30000, 27)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (41, 15, 20, 30000, 28)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (44, 5, 6, 20000, 29)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (45, 56, 554, 42000, 30)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (46, 32, 33, 45000, 31)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (47, 5, 10, 20000, 31)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (48, 5, 6, 24000, 33)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (49, 10, 7, 27000, 34)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (50, 5, 7, 28000, 35)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (51, 5, 2, 28000, 36)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (52, 5, 2, 21600, 37)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (53, 5, 6, 24000, 38)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (54, 10, 7, 27000, 39)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (55, 5, 7, 28000, 40)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (56, 5, 2, 28000, 41)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (57, 5, 2, 21600, 42)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (58, 5, 6, 24000, 43)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (59, 10, 7, 27000, 44)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (60, 5, 7, 28000, 45)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (61, 5, 2, 21600, 46)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (62, 5, 2, 21600, 47)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (63, 15, 20, 30000, 48)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (64, 15, 20, 30000, 49)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (66, 56, 55, 42000, 51)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (67, 32, 33, 45000, 52)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (71, 5, 7, 28000, 54)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (72, 5, 2, 28000, 55)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (73, 5, 2, 21600, 56)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (74, 5, 6, 24000, 57)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (75, 10, 7, 27000, 58)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (76, 5, 7, 28000, 59)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (77, 5, 2, 28000, 60)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (78, 5, 2, 21600, 61)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (79, 5, 6, 24000, 62)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (80, 10, 7, 27000, 63)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (81, 5, 7, 28000, 64)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (82, 5, 2, 21600, 65)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (83, 5, 7, 20000, 66)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (84, 5, 7, 28000, 67)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (85, 5, 2, 28000, 68)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (86, 5, 2, 21600, 69)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (87, 5, 6, 24000, 70)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (88, 10, 7, 27000, 71)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (89, 5, 7, 28000, 72)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (90, 5, 2, 28000, 73)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (91, 5, 2, 21600, 74)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (92, 5, 6, 24000, 75)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (93, 10, 7, 27000, 76)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (94, 5, 7, 28000, 77)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (95, 5, 2, 21600, 78)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (96, 5, 7, 20000, 79)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (97, 5, 200, 54000, 80)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
/****** Object:  Table [dbo].[Assigning]    Script Date: 05/28/2014 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assigning](
	[RequestID] [int] NOT NULL,
	[TripID] [int] NOT NULL,
	[IndicateOrder] [int] NOT NULL,
	[AssignedDate] [date] NOT NULL,
	[StopStation] [int] NOT NULL,
 CONSTRAINT [PK_Assigning] PRIMARY KEY CLUSTERED 
(
	[TripID] ASC,
	[RequestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_StationInProvince]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Station]  WITH CHECK ADD  CONSTRAINT [FK_StationInProvince] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[Station] CHECK CONSTRAINT [FK_StationInProvince]
GO
/****** Object:  ForeignKey [FK_Coach_CoachType]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Coach]  WITH CHECK ADD  CONSTRAINT [FK_Coach_CoachType] FOREIGN KEY([CoachTypeID])
REFERENCES [dbo].[CoachType] ([CoachTypeID])
GO
ALTER TABLE [dbo].[Coach] CHECK CONSTRAINT [FK_Coach_CoachType]
GO
/****** Object:  ForeignKey [FK_Account_Station]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Station] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Station]
GO
/****** Object:  ForeignKey [FK_EndStationOfStage]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Stage]  WITH CHECK ADD  CONSTRAINT [FK_EndStationOfStage] FOREIGN KEY([EndPoint])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Stage] CHECK CONSTRAINT [FK_EndStationOfStage]
GO
/****** Object:  ForeignKey [FK_StartStationOfStage]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Stage]  WITH CHECK ADD  CONSTRAINT [FK_StartStationOfStage] FOREIGN KEY([StartPoint])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Stage] CHECK CONSTRAINT [FK_StartStationOfStage]
GO
/****** Object:  ForeignKey [FK_Schedule_Coach]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Coach] FOREIGN KEY([CoachID])
REFERENCES [dbo].[Coach] ([CoachID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Coach]
GO
/****** Object:  ForeignKey [FK_Schedule_Route]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Route] FOREIGN KEY([RouteID])
REFERENCES [dbo].[Route] ([RouteID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Route]
GO
/****** Object:  ForeignKey [FK_NotificationForStation]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_NotificationForStation] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_NotificationForStation]
GO
/****** Object:  ForeignKey [FK_UserInfo_Account]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserInfo_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [FK_UserInfo_Account]
GO
/****** Object:  ForeignKey [FK_Trip_Schedule]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Schedule] FOREIGN KEY([ScheduleID])
REFERENCES [dbo].[Schedule] ([ScheduleID])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_Schedule]
GO
/****** Object:  ForeignKey [FK_RouteStage_Route]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[RouteStage]  WITH CHECK ADD  CONSTRAINT [FK_RouteStage_Route] FOREIGN KEY([RouteID])
REFERENCES [dbo].[Route] ([RouteID])
GO
ALTER TABLE [dbo].[RouteStage] CHECK CONSTRAINT [FK_RouteStage_Route]
GO
/****** Object:  ForeignKey [FK_RouteStage_Stage]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[RouteStage]  WITH CHECK ADD  CONSTRAINT [FK_RouteStage_Stage] FOREIGN KEY([StageID])
REFERENCES [dbo].[Stage] ([StageID])
GO
ALTER TABLE [dbo].[RouteStage] CHECK CONSTRAINT [FK_RouteStage_Stage]
GO
/****** Object:  ForeignKey [FK_Request_Account]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Account]
GO
/****** Object:  ForeignKey [FK_Request_DeliveryStatus]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_DeliveryStatus] FOREIGN KEY([DeliveryStatusID])
REFERENCES [dbo].[DeliveryStatus] ([DeliveryStatusID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_DeliveryStatus]
GO
/****** Object:  ForeignKey [FK_Request_FromStation]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_FromStation] FOREIGN KEY([FromLocation])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_FromStation]
GO
/****** Object:  ForeignKey [FK_Request_ManageFee]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_ManageFee] FOREIGN KEY([FeeID])
REFERENCES [dbo].[ManageFee] ([FeeID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_ManageFee]
GO
/****** Object:  ForeignKey [FK_Request_ToStation]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_ToStation] FOREIGN KEY([ToLocation])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_ToStation]
GO
/****** Object:  ForeignKey [FK_Rating_Account]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Account]
GO
/****** Object:  ForeignKey [FK_RatingForStation]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_RatingForStation] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_RatingForStation]
GO
/****** Object:  ForeignKey [FK_Comment_Account]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Account]
GO
/****** Object:  ForeignKey [FK_CommentForStation]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_CommentForStation] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_CommentForStation]
GO
/****** Object:  ForeignKey [FK_InvoiceOfRequest]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceOfRequest] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_InvoiceOfRequest]
GO
/****** Object:  ForeignKey [FK_Assigning_Station]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Assigning]  WITH CHECK ADD  CONSTRAINT [FK_Assigning_Station] FOREIGN KEY([StopStation])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Assigning] CHECK CONSTRAINT [FK_Assigning_Station]
GO
/****** Object:  ForeignKey [FK_Assigning_Trip]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Assigning]  WITH CHECK ADD  CONSTRAINT [FK_Assigning_Trip] FOREIGN KEY([TripID])
REFERENCES [dbo].[Trip] ([TripID])
GO
ALTER TABLE [dbo].[Assigning] CHECK CONSTRAINT [FK_Assigning_Trip]
GO
/****** Object:  ForeignKey [FK_AssigningForRequest]    Script Date: 05/28/2014 15:26:42 ******/
ALTER TABLE [dbo].[Assigning]  WITH CHECK ADD  CONSTRAINT [FK_AssigningForRequest] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Assigning] CHECK CONSTRAINT [FK_AssigningForRequest]
GO
