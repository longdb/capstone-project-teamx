USE [master]
GO
/****** Object:  Database [iDeliver]    Script Date: 04/24/2014 15:02:00 ******/
CREATE DATABASE [iDeliver] ON  PRIMARY 
( NAME = N'iDeliver', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\iDeliver.mdf' , SIZE = 39168KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'iDeliver_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\iDeliver_log.LDF' , SIZE = 2304KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[ManageFee]    Script Date: 04/24/2014 15:02:02 ******/
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
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (1, 20000, 0, 7.5, 0, 5)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (2, 27000, 7.5, 15, 5, 10)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (3, 35000, 15, 22.5, 10, 15)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (4, 42000, 22.5, 30, 15, 20)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (5, 50000, 30, 37.5, 20, 25)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (6, 60000, 37.5, 45, 25, 30)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (7, 72000, 45, 52.5, 30, 35)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (8, 90000, 52.5, 60, 35, 40)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (9, 100000, 60, 67.5, 40, 45)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (10, 115000, 67.5, 75, 45, 50)
SET IDENTITY_INSERT [dbo].[ManageFee] OFF
/****** Object:  Table [dbo].[DeliveryStatus]    Script Date: 04/24/2014 15:02:02 ******/
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
/****** Object:  Table [dbo].[Route]    Script Date: 04/24/2014 15:02:02 ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 04/24/2014 15:02:02 ******/
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
/****** Object:  Table [dbo].[CoachType]    Script Date: 04/24/2014 15:02:02 ******/
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
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Length], [Width], [Height]) VALUES (1, 16, 20, 5, 15)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Length], [Width], [Height]) VALUES (2, 29, 25, 15, 15)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Length], [Width], [Height]) VALUES (3, 35, 30, 20, 15)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Length], [Width], [Height]) VALUES (4, 40, 35, 25, 15)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Length], [Width], [Height]) VALUES (5, 45, 40, 25, 15)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Length], [Width], [Height]) VALUES (6, 52, 45, 25, 15)
SET IDENTITY_INSERT [dbo].[CoachType] OFF
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-226148aa-bbc2-4a11-862b-80536d2ecebb]    Script Date: 04/24/2014 15:02:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-226148aa-bbc2-4a11-862b-80536d2ecebb] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-226148aa-bbc2-4a11-862b-80536d2ecebb]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-226148aa-bbc2-4a11-862b-80536d2ecebb] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-226148aa-bbc2-4a11-862b-80536d2ecebb') > 0)   DROP SERVICE [SqlQueryNotificationService-226148aa-bbc2-4a11-862b-80536d2ecebb]; if (OBJECT_ID('SqlQueryNotificationService-226148aa-bbc2-4a11-862b-80536d2ecebb', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-226148aa-bbc2-4a11-862b-80536d2ecebb]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-226148aa-bbc2-4a11-862b-80536d2ecebb]; END COMMIT TRANSACTION; END
GO
/****** Object:  Table [dbo].[Province]    Script Date: 04/24/2014 15:02:18 ******/
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
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-446742d6-5c77-4c09-ac6f-415555cafd05]    Script Date: 04/24/2014 15:02:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-446742d6-5c77-4c09-ac6f-415555cafd05] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-446742d6-5c77-4c09-ac6f-415555cafd05]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-446742d6-5c77-4c09-ac6f-415555cafd05] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-446742d6-5c77-4c09-ac6f-415555cafd05') > 0)   DROP SERVICE [SqlQueryNotificationService-446742d6-5c77-4c09-ac6f-415555cafd05]; if (OBJECT_ID('SqlQueryNotificationService-446742d6-5c77-4c09-ac6f-415555cafd05', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-446742d6-5c77-4c09-ac6f-415555cafd05]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-446742d6-5c77-4c09-ac6f-415555cafd05]; END COMMIT TRANSACTION; END
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 04/24/2014 15:02:18 ******/
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
/****** Object:  Table [dbo].[Station]    Script Date: 04/24/2014 15:02:18 ******/
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
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (1, N'Lê Hồng Phong - Sài Gòn', N'233 Lê Hồng Phong, F4, Q.5, Hồ Chí Minh', N'(08) 38 309 309', N'10.7584848, 106.6777557', 1, 4.5)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (2, N'Tạ Uyên - Vũng Tàu', N'03 Tạ Uyên, Vũng Tàu', N'0643 52 53 54', N'10.3491804, 107.0855695', 2, 4.1)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (3, N'Bến xe liên tỉnh - Đà Lạt', N'01 Tô Hiến Thành, F3, Đà Lạt', N'0633 58 58 58', N'11.9264949, 108.4460601', 3, 3.9)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (4, N'Bến xe Phía Nam -  Nha Trang', N'Số 58, đường 23/10, Xã Vĩnh Hiệp , Nha Trang, Khánh Hòa ', N'(058) 3562626', N'12.2527081, 109.1627343', 4, 4)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (5, N'Bến xe Miền Tây - Sài Gòn', N'395 Kinh Dương Vương, phường An Lạc, Quận Bình Tân, Hồ Chí Minh', N'(08) 38776594', N'10.740993, 106.617980', 1, 4.7)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (6, N'Bến xe Miền Đông - Sài Gòn', N'367 Đinh Bộ Lĩnh, 26, Bình Thạnh, Hồ Chí Minh', N'08.38 309 309 ', N'10.815213, 106.710674', 1, 4.8)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (7, N'Bến xe Hùng Vương - Cần Thơ', N'01 Hùng Vương, Thới Bình, Ninh Kiều, Cần Thơ ', N'(0710)3769768', N'10.0449994, 105.7799216', 7, 3.4)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (8, N'Bến Xe Trung Tâm - Đà Nẵng', N'201 Tôn Đức Thắng, Phường Hòa Minh, Liên Chiểu, Đà Nẵng', N'(0511) 3786 786', N'16.051571, 108.214897', 5, 3.2)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (9, N'Bến xe - Quy Nhơn', N'Bến xe Quy Nhơn, Quy Nhơn, Bình Định', N'0562242424', N'13.753419, 109.2095464', 6, 3.6)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (10, N'Bến xe - Cà Mau', N'Bến xe Cà Mau, QL 1, Phường 6, Cà Mau', N'07803651651', N'9.1760935, 105.1706709', 8, 5)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (11, N'N/A', N'N/A', N'N/A', N'N/A', 9, 0)
SET IDENTITY_INSERT [dbo].[Station] OFF
/****** Object:  Table [dbo].[Coach]    Script Date: 04/24/2014 15:02:18 ******/
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
/****** Object:  Table [dbo].[Request]    Script Date: 04/24/2014 15:02:18 ******/
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
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (11, N'guest', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 9, 8, N'Đào Bảo Long', N'Cà Mau', N'Bến xe miền Tây, Hồ Chí Minh', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'abcdef', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (12, N'guest', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 10, 7, N'Đào Bảo Long', N'Cà Mau', N'Cần Thơ', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'bcdefa', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (13, N'ducnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 10, 8, N'Đào Bảo Long', N'Cà Mau', N'Đà Nẵng', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'cdefab', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (14, N'ducnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 7, 9, N'Đào Bảo Long', N'Cần Thơ', N'Quy Nhơn', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'defabc', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (16, N'ducnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 5, 8, N'Đào Bảo Long', N'Bến xe miền Tây, Hồ Chí Minh', N'Đà Nẵng', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', CAST(0x6B380B00 AS Date), 1, N'efabcd', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (17, N'ducnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 5, 4, N'Đào Bảo Long', N'Bến xe miền Tây, Hồ Chí Minh', N'Nha Trang', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'fabcde', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (18, N'ducnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 5, 2, N'Đào Bảo Long', N'Bến xe miền Tây, Hồ Chí Minh', N'Vũng Tàu', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 0, N'Tiền mặt', NULL, 1, N'ABCDEF', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (19, N'lulp', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 5, 9, N'Đào Bảo Long', N'Bến xe miền Tây, Hồ Chí Minh', N'Quy Nhơn', N'841657577422', N'Nguyễn Thanh Tùng', N'841657577422', 0, N'Tiền mặt', NULL, 1, N'BCDEFA', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (20, N'lulp', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 5, 10, N'Lê Phúc Lữ', N'Bến xe miền Tây, Hồ Chí Minh', N'Cà Mau', N'841657577422', N'Nguyễn Tấn Đức', N'841657577422', 0, N'Tiền mặt', NULL, 1, N'CDEFAB', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (21, N'lulp', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 6, 3, N'Lê Phúc Lữ', N'Bến xe miền Đông, Hồ Chí Minh', N'Đà Lạt', N'841657577422', N'Nguyễn Tấn Đức', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'DEFABC', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (22, N'lulp', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 1, 8, N'Lê Phúc Lữ', N'Bến xe Q5', N'Đà Nẵng', N'841657577422', N'Nguyễn Tấn Đức', N'841657577422', 0, N'Tiền mặt', NULL, 1, N'EFABCD', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (23, N'tungnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 1, 9, N'Lê Phúc Lữ', N'Bến xe Q5', N'Quy Nhơn', N'841657577422', N'Nguyễn Tấn Đức', N'841657577422', 0, N'Tiền mặt', NULL, 1, N'FABCDE', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (24, N'tungnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 4, 8, N'Lê Phúc Lữ', N'Nha Trang', N'Đà Nẵng', N'841657577422', N'Nguyễn Tấn Đức', N'841657577422', 0, N'Tiền mặt', NULL, 1, N'xyztwu', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (25, N'tungnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 4, 3, N'Lê Phúc Lữ', N'Nha Trang', N'Bến xe miền Tây, Hồ Chí Minh', N'841657577422', N'Nguyễn Tấn Đức', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'sffavad', 1, 1, 2)
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [FromLocation], [ToLocation], [SenderName], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode], [Length], [Width], [Height]) VALUES (26, N'tungnt', 2, 2, N'0 - 7.5', N'5 - 10', CAST(0x0000A31400735B40 AS DateTime), 4, 9, N'Lê Phúc Lữ', N'Nha Trang', N'Quy Nhơn', N'841657577422', N'Nguyễn Tấn Đức', N'841657577422', 1, N'Tiền mặt', NULL, 1, N'svdasv', 1, 1, 2)
SET IDENTITY_INSERT [dbo].[Request] OFF
/****** Object:  Table [dbo].[Rating]    Script Date: 04/24/2014 15:02:18 ******/
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
/****** Object:  Table [dbo].[Comment]    Script Date: 04/24/2014 15:02:18 ******/
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
SET IDENTITY_INSERT [dbo].[Comment] OFF
/****** Object:  Table [dbo].[Stage]    Script Date: 04/24/2014 15:02:18 ******/
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
INSERT [dbo].[Stage] ([StageID], [StageName], [StartPoint], [EndPoint], [BreakTime], [Duration], [Distance], [Price]) VALUES (16, N'Cần Thơ - Cà Mau', 10, 7, CAST(0x00100E0000000000 AS Time), 4, 178, 120000)
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
/****** Object:  Table [dbo].[Schedule]    Script Date: 04/24/2014 15:02:18 ******/
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
/****** Object:  Table [dbo].[Notification]    Script Date: 04/24/2014 15:02:18 ******/
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
/****** Object:  Table [dbo].[Trip]    Script Date: 04/24/2014 15:02:18 ******/
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
/****** Object:  Table [dbo].[RouteStage]    Script Date: 04/24/2014 15:02:18 ******/
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
/****** Object:  Table [dbo].[Invoice]    Script Date: 04/24/2014 15:02:18 ******/
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
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (11, 5, 6, 24000, 11)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (12, 10, 7, 27000, 12)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (14, 5, 7, 28000, 13)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (16, 5, 2, 28000, 14)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (17, 5, 2, 21600, 16)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (18, 5, 6, 24000, 17)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (19, 10, 7, 27000, 18)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (20, 5, 7, 28000, 19)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (21, 5, 2, 28000, 20)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (22, 5, 2, 21600, 21)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (23, 5, 6, 24000, 22)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (24, 10, 7, 27000, 23)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (25, 5, 7, 28000, 24)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (26, 5, 2, 28000, 25)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (27, 5, 2, 21600, 26)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
/****** Object:  Table [dbo].[Assigning]    Script Date: 04/24/2014 15:02:18 ******/
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
/****** Object:  ForeignKey [FK_UserInfo_Account]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserInfo_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [FK_UserInfo_Account]
GO
/****** Object:  ForeignKey [FK_StationInProvince]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Station]  WITH CHECK ADD  CONSTRAINT [FK_StationInProvince] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[Station] CHECK CONSTRAINT [FK_StationInProvince]
GO
/****** Object:  ForeignKey [FK_Coach_CoachType]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Coach]  WITH CHECK ADD  CONSTRAINT [FK_Coach_CoachType] FOREIGN KEY([CoachTypeID])
REFERENCES [dbo].[CoachType] ([CoachTypeID])
GO
ALTER TABLE [dbo].[Coach] CHECK CONSTRAINT [FK_Coach_CoachType]
GO
/****** Object:  ForeignKey [FK_Request_Account]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Account]
GO
/****** Object:  ForeignKey [FK_Request_DeliveryStatus]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_DeliveryStatus] FOREIGN KEY([DeliveryStatusID])
REFERENCES [dbo].[DeliveryStatus] ([DeliveryStatusID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_DeliveryStatus]
GO
/****** Object:  ForeignKey [FK_Request_FromStation]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_FromStation] FOREIGN KEY([FromLocation])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_FromStation]
GO
/****** Object:  ForeignKey [FK_Request_ManageFee]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_ManageFee] FOREIGN KEY([FeeID])
REFERENCES [dbo].[ManageFee] ([FeeID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_ManageFee]
GO
/****** Object:  ForeignKey [FK_Request_ToStation]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_ToStation] FOREIGN KEY([ToLocation])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_ToStation]
GO
/****** Object:  ForeignKey [FK_Rating_Account]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Account]
GO
/****** Object:  ForeignKey [FK_RatingForStation]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_RatingForStation] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_RatingForStation]
GO
/****** Object:  ForeignKey [FK_Comment_Account]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Account]
GO
/****** Object:  ForeignKey [FK_CommentForStation]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_CommentForStation] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_CommentForStation]
GO
/****** Object:  ForeignKey [FK_EndStationOfStage]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Stage]  WITH CHECK ADD  CONSTRAINT [FK_EndStationOfStage] FOREIGN KEY([EndPoint])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Stage] CHECK CONSTRAINT [FK_EndStationOfStage]
GO
/****** Object:  ForeignKey [FK_StartStationOfStage]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Stage]  WITH CHECK ADD  CONSTRAINT [FK_StartStationOfStage] FOREIGN KEY([StartPoint])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Stage] CHECK CONSTRAINT [FK_StartStationOfStage]
GO
/****** Object:  ForeignKey [FK_Schedule_Coach]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Coach] FOREIGN KEY([CoachID])
REFERENCES [dbo].[Coach] ([CoachID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Coach]
GO
/****** Object:  ForeignKey [FK_Schedule_Route]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Route] FOREIGN KEY([RouteID])
REFERENCES [dbo].[Route] ([RouteID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Route]
GO
/****** Object:  ForeignKey [FK_NotificationForStation]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_NotificationForStation] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_NotificationForStation]
GO
/****** Object:  ForeignKey [FK_Trip_Schedule]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Schedule] FOREIGN KEY([ScheduleID])
REFERENCES [dbo].[Schedule] ([ScheduleID])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_Schedule]
GO
/****** Object:  ForeignKey [FK_RouteStage_Route]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[RouteStage]  WITH CHECK ADD  CONSTRAINT [FK_RouteStage_Route] FOREIGN KEY([RouteID])
REFERENCES [dbo].[Route] ([RouteID])
GO
ALTER TABLE [dbo].[RouteStage] CHECK CONSTRAINT [FK_RouteStage_Route]
GO
/****** Object:  ForeignKey [FK_RouteStage_Stage]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[RouteStage]  WITH CHECK ADD  CONSTRAINT [FK_RouteStage_Stage] FOREIGN KEY([StageID])
REFERENCES [dbo].[Stage] ([StageID])
GO
ALTER TABLE [dbo].[RouteStage] CHECK CONSTRAINT [FK_RouteStage_Stage]
GO
/****** Object:  ForeignKey [FK_InvoiceOfRequest]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceOfRequest] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_InvoiceOfRequest]
GO
/****** Object:  ForeignKey [FK_Assigning_Station]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Assigning]  WITH CHECK ADD  CONSTRAINT [FK_Assigning_Station] FOREIGN KEY([StopStation])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Assigning] CHECK CONSTRAINT [FK_Assigning_Station]
GO
/****** Object:  ForeignKey [FK_Assigning_Trip]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Assigning]  WITH CHECK ADD  CONSTRAINT [FK_Assigning_Trip] FOREIGN KEY([TripID])
REFERENCES [dbo].[Trip] ([TripID])
GO
ALTER TABLE [dbo].[Assigning] CHECK CONSTRAINT [FK_Assigning_Trip]
GO
/****** Object:  ForeignKey [FK_AssigningForRequest]    Script Date: 04/24/2014 15:02:18 ******/
ALTER TABLE [dbo].[Assigning]  WITH CHECK ADD  CONSTRAINT [FK_AssigningForRequest] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Assigning] CHECK CONSTRAINT [FK_AssigningForRequest]
GO
