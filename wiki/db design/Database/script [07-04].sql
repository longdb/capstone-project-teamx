USE [master]
GO
/****** Object:  Database [iDeliver]    Script Date: 04/07/2014 21:26:53 ******/
CREATE DATABASE [iDeliver] ON  PRIMARY 
( NAME = N'iDeliver', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\iDeliver.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'iDeliver_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\iDeliver_log.ldf' , SIZE = 1792KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[CoachType]    Script Date: 04/07/2014 21:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoachType](
	[CoachTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Seats] [int] NOT NULL,
	[Capacity] [float] NOT NULL,
 CONSTRAINT [PK_CoachType] PRIMARY KEY CLUSTERED 
(
	[CoachTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CoachType] ON
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (1, 16, 1000)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (2, 29, 2500)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (3, 35, 3000)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (4, 40, 4500)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (5, 45, 5800)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (6, 52, 6000)
SET IDENTITY_INSERT [dbo].[CoachType] OFF
/****** Object:  Table [dbo].[ManageFee]    Script Date: 04/07/2014 21:26:56 ******/
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
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (1, 20000, 0.1, 3.5, 0.1, 3.5)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (2, 27000, 5, 8, 5, 8)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (3, 35000, 10, 18, 10, 18)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (4, 42000, 20, 27.5, 20, 28)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (5, 50000, 30, 40, 30, 42)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (6, 60000, 42, 52, 45, 55)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (7, 72000, 55, 65, 57, 65)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (8, 90000, 67, 78, 67, 75)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (9, 100000, 80, 88, 77, 85)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (10, 115000, 90, 98, 87, 100)
SET IDENTITY_INSERT [dbo].[ManageFee] OFF
/****** Object:  Table [dbo].[Province]    Script Date: 04/07/2014 21:26:56 ******/
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
/****** Object:  Table [dbo].[DeliveryStatus]    Script Date: 04/07/2014 21:26:56 ******/
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
/****** Object:  Table [dbo].[Route]    Script Date: 04/07/2014 21:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Route](
	[RouteID] [int] IDENTITY(1,1) NOT NULL,
	[RouteName] [nvarchar](50) NOT NULL,
	[Container] [nchar](10) NULL,
 CONSTRAINT [PK_Route] PRIMARY KEY CLUSTERED 
(
	[RouteID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Route] ON
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (1, N'Sài Gòn - Vũng Tàu', N'0.9       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (2, N'Cà Mau - Sài Gòn', N'0.8       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (3, N'Cà Mau - Vũng Tàu', N'0.85      ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (4, N'Cần Thơ - Sài Gòn', N'0.9       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (5, N'Cần Thơ - Đà Lạt', N'0.75      ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (6, N'Sài Gòn - Nha Trang', N'0.7       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (7, N'Cần Thơ - Quy Nhơn', N'0.7       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (8, N'Sài Gòn - Quy Nhơn', N'0.8       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (9, N'Quy Nhơn - Đà Nẵng', N'0.9       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (10, N'Sài Gòn - Vũng Tàu', N'0.9       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (11, N'Vũng Tàu - Nha Trang', N'0.85      ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (12, N'Đà Lạt - Quy Nhơn', N'0.8       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (13, N'Vũng Tàu - Đà Nẵng', N'0.7       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (14, N'Nha Trang - Đà Nẵng', N'0.75      ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (15, N'Sài Gòn - Đà Nẵng', N'0.7       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (16, N'Vũng Tàu - Sài Gòn', N'0.9       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (17, N'Sài Gòn - Cà Mau', N'0.8       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (18, N'Vũng Tàu - Cà Mau', N'0.85      ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (19, N'Sài Gòn - Cần Thơ', N'0.9       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (20, N'Đà Lạt - Cần Thơ', N'0.75      ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (21, N'Sài Gòn - Nha Trang', N'0.7       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (22, N'Quy Nhơn - Cần Thơ', N'0.7       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (23, N'Quy Nhơn - Sài Gòn', N'0.8       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (24, N'Đà Nẵng - Quy Nhơn', N'0.9       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (25, N'Vũng Tàu - Sài Gòn', N'0.9       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (26, N'Nha Trang - Vũng Tàu', N'0.85      ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (27, N'Quy Nhơn - Đà Lạt', N'0.8       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (28, N'Đà Nẵng - Vũng Tàu', N'0.7       ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (29, N'Đà Nẵng - Nha Trang', N'0.75      ')
INSERT [dbo].[Route] ([RouteID], [RouteName], [Container]) VALUES (30, N'Đà Nẵng - Sài Gòn', N'0.7       ')
SET IDENTITY_INSERT [dbo].[Route] OFF
/****** Object:  Table [dbo].[Station]    Script Date: 04/07/2014 21:26:56 ******/
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
	[StationPhone] [varchar](15) NULL,
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
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (1, N'Lê Hồng Phong - Sài Gòn', N'233 Lê Hồng Phong, F4, Q.5, TP Hồ Chí Minh', N'(08) 38 309 309', N'10.7584848, 106.6777557', 1, 0.77999997138977051)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (2, N'Tạ Uyên - Vũng Tàu', N'03 Tạ Uyên, Vũng Tàu', N'0643 52 53 54', N'10.3491804, 107.0855695', 2, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (3, N'Bến xe liên tỉnh - Đà Lạt', N'01 Tô Hiến Thành, F3, Đà Lạt', N'0633 58 58 58', N'11.9264949, 108.4460601', 3, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (4, N'Bến xe Phía Nam -  Nha Trang', N'Số 58, đường 23/10, Xã Vĩnh Hiệp , Nha Trang, Tỉnh Khánh Hòa ', N'(058) 3562626', N'12.2527081, 109.1627343', 4, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (5, N'Bến xe Miền Tây - Sài Gòn', N'395 Kinh Dương Vương, phường An Lạc, Quận Bình Tân, Hồ Chí Minh', N'(08) 38776594', N'10.740993, 106.617980', 1, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (6, N'Bến xe Miền Đông - Sài Gòn', N'367 Đinh Bộ Lĩnh, 26, Bình Thạnh, Hồ Chí Minh', N'08.38 309 309 ', N'10.815213, 106.710674', 1, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (7, N'Bến xe Hùng Vương - Cần Thơ', N'01 Hùng Vương, Thới Bình, Ninh Kiều, TP.Cần Thơ ', N'(0710)3769768', N'10.0449994, 105.7799216', 7, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (8, N'Bến Xe Trung Tâm - Đà Nẵng', N'201 Tôn Đức Thắng, Phường Hòa Minh, Liên Chiểu, TP.Đà Nẵng', N'(0511) 3786 786', N'16.051571, 108.214897', 5, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (9, N'Bến xe - Quy Nhơn', N'Bến xe Quy Nhơn, Quy Nhơn, Bình Định', N'0562242424', N'13.753419, 109.2095464', 6, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (10, N'Bến xe - Cà Mau', N'Bến xe Cà Mau, QL 1, Phường 6, Cà Mau, Cà Mau, Vietnam', N'07803651651', N'9.1760935, 105.1706709', 8, 0.99000000953674316)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [StationPhone], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (11, N'N/A', N'N/A', N'', N'N/A', 9, NULL)
SET IDENTITY_INSERT [dbo].[Station] OFF
/****** Object:  Table [dbo].[Coach]    Script Date: 04/07/2014 21:26:56 ******/
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
/****** Object:  Table [dbo].[CoachArrangement]    Script Date: 04/07/2014 21:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoachArrangement](
	[ArrangeID] [int] IDENTITY(1,1) NOT NULL,
	[CoachID] [int] NOT NULL,
	[RouteID] [int] NOT NULL,
 CONSTRAINT [PK_CoachArrangement] PRIMARY KEY CLUSTERED 
(
	[ArrangeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CoachArrangement] ON
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (1, 1, 1)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (2, 2, 1)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (3, 3, 1)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (4, 4, 1)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (5, 5, 1)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (6, 6, 1)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (7, 1, 16)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (8, 2, 16)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (9, 3, 16)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (10, 4, 16)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (11, 5, 16)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (12, 6, 16)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (13, 7, 2)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (14, 8, 2)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (15, 9, 2)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (16, 10, 2)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (17, 11, 2)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (18, 12, 2)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (19, 7, 17)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (20, 8, 17)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (21, 9, 17)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (22, 10, 17)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (23, 11, 17)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (24, 12, 17)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (25, 13, 3)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (26, 14, 3)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (27, 15, 3)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (28, 16, 3)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (29, 17, 3)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (30, 18, 3)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (31, 13, 18)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (32, 14, 18)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (33, 15, 18)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (34, 16, 18)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (35, 17, 18)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (36, 18, 18)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (37, 19, 4)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (38, 20, 4)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (39, 21, 4)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (40, 22, 4)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (41, 23, 4)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (42, 24, 4)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (43, 19, 19)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (44, 20, 19)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (45, 21, 19)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (46, 22, 19)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (47, 23, 19)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (48, 24, 19)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (49, 25, 5)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (50, 26, 5)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (51, 27, 5)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (52, 28, 5)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (53, 29, 5)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (54, 30, 5)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (55, 25, 20)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (56, 26, 20)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (57, 27, 20)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (58, 28, 20)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (59, 29, 20)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (60, 30, 20)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (61, 31, 6)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (62, 32, 6)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (63, 33, 6)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (64, 34, 6)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (65, 35, 6)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (66, 36, 6)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (67, 31, 21)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (68, 32, 21)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (69, 33, 21)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (70, 34, 21)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (71, 35, 21)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (72, 36, 21)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (73, 37, 7)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (74, 38, 7)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (75, 39, 7)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (76, 40, 7)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (77, 41, 7)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (78, 42, 7)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (79, 37, 22)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (80, 38, 22)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (81, 39, 22)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (82, 40, 22)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (83, 41, 22)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (84, 42, 22)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (85, 43, 8)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (86, 44, 8)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (87, 45, 8)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (88, 46, 8)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (89, 47, 8)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (90, 48, 8)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (91, 43, 23)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (92, 44, 23)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (93, 45, 23)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (94, 46, 23)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (95, 47, 23)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (96, 48, 23)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (97, 49, 9)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (98, 50, 9)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (99, 51, 9)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (100, 52, 9)
GO
print 'Processed 100 total records'
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (101, 53, 9)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (102, 54, 9)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (103, 49, 24)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (104, 50, 24)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (105, 51, 24)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (106, 52, 24)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (107, 53, 24)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (108, 54, 24)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (109, 55, 10)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (110, 56, 10)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (111, 57, 10)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (112, 58, 10)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (113, 59, 10)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (114, 60, 10)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (115, 55, 25)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (116, 56, 25)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (117, 57, 25)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (118, 58, 25)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (119, 59, 25)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (120, 60, 25)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (121, 61, 11)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (122, 62, 11)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (123, 63, 11)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (124, 64, 11)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (125, 65, 11)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (126, 66, 11)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (127, 61, 26)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (128, 62, 26)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (129, 63, 26)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (130, 64, 26)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (131, 65, 26)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (132, 66, 26)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (133, 67, 12)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (134, 68, 12)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (135, 69, 12)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (136, 70, 12)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (137, 71, 12)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (138, 72, 12)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (139, 67, 27)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (140, 68, 27)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (141, 69, 27)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (142, 70, 27)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (143, 71, 27)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (144, 72, 27)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (145, 73, 13)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (146, 74, 13)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (147, 75, 13)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (148, 76, 13)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (149, 77, 13)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (150, 78, 13)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (151, 73, 28)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (152, 74, 28)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (153, 75, 28)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (154, 76, 28)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (155, 77, 28)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (156, 78, 28)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (157, 79, 14)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (158, 80, 14)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (159, 81, 14)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (160, 82, 14)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (161, 83, 14)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (162, 84, 14)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (163, 79, 29)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (164, 80, 29)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (165, 81, 29)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (166, 82, 29)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (167, 83, 29)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (168, 84, 29)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (169, 85, 15)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (170, 86, 15)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (171, 87, 15)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (172, 88, 15)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (173, 89, 15)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (174, 90, 15)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (175, 85, 30)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (176, 86, 30)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (177, 87, 30)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (178, 88, 30)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (179, 89, 30)
INSERT [dbo].[CoachArrangement] ([ArrangeID], [CoachID], [RouteID]) VALUES (180, 90, 30)
SET IDENTITY_INSERT [dbo].[CoachArrangement] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 04/07/2014 21:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[BackupPassword] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[BannedStatus] [bit] NULL,
	[StationID] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'ducnt', N'123456789', N'123456789', N'Customer', N'ducnt@gmail.com', 0, 11)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'long', N'123456789', N'123456789', N'Admin', N'long@gmail.com', 0, 11)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'lulp', N'123456789', N'123456789', N'Customer', N'lulp@gmail.com', 0, 11)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'staff1', N'staff1', N'staff1', N'Staff', N'staff1@gmail.com', 0, 1)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'staff10', N'staff10', N'staff10', N'Staff', N'staff10@gmail.com', 0, 10)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'staff2', N'staff2', N'staff2', N'Staff', N'staff1@gmail.com', 0, 2)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'staff3', N'staff3', N'staff3', N'Staff', N'staff3@gmail.com', 0, 3)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'staff4', N'staff4', N'staff4', N'Staff', N'staff4@gmail.com', 0, 4)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'staff5', N'staff5', N'staff5', N'Staff', N'staff5@gmail.com', 0, 5)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'staff6', N'staff6', N'staff6', N'Staff', N'staff6@gmail.com', 0, 6)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'staff7', N'staff7', N'staff7', N'Staff', N'staff7@gmail.com', 0, 7)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'staff8', N'staff8', N'staff8', N'Staff', N'staff8@gmail.com', 0, 8)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'staff9', N'staff9', N'staff9', N'Staff', N'staff9@gmail.com', 0, 9)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'taint', N'123456789', N'123456789', N'Customer', N'taint@gmail.com', 0, 11)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [BannedStatus], [StationID]) VALUES (N'tungnt', N'123456789', N'123456789', N'Customer', N'tungnt@gmail.com', 0, 11)
/****** Object:  Table [dbo].[Stage]    Script Date: 04/07/2014 21:26:56 ******/
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
/****** Object:  Table [dbo].[Schedule]    Script Date: 04/07/2014 21:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[ScheduleID] [int] IDENTITY(1,1) NOT NULL,
	[ArrangeID] [int] NOT NULL,
	[EstimateDepartureTime] [time](0) NOT NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[ScheduleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Schedule] ON
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (1, 1, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (2, 2, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (3, 3, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (4, 4, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (5, 5, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (6, 6, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (7, 12, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (8, 11, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (9, 10, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (10, 9, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (11, 8, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (12, 7, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (13, 13, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (14, 14, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (15, 15, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (16, 16, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (17, 17, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (18, 18, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (19, 24, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (20, 23, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (21, 22, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (22, 21, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (23, 20, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (24, 19, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (25, 25, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (26, 26, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (27, 27, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (28, 28, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (29, 29, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (30, 30, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (31, 36, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (32, 35, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (33, 34, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (34, 33, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (35, 32, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (36, 31, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (37, 37, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (38, 38, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (39, 39, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (40, 40, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (41, 41, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (42, 42, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (43, 48, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (44, 47, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (45, 46, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (46, 45, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (47, 44, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (48, 43, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (49, 49, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (50, 50, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (51, 51, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (52, 52, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (53, 53, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (54, 54, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (55, 60, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (56, 59, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (57, 58, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (58, 57, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (59, 56, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (60, 55, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (61, 61, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (62, 62, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (63, 63, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (64, 64, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (65, 65, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (66, 66, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (67, 72, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (68, 71, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (69, 70, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (70, 69, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (71, 68, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (72, 67, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (73, 73, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (74, 74, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (75, 75, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (76, 76, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (77, 77, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (78, 78, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (79, 84, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (80, 83, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (81, 82, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (82, 81, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (83, 80, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (84, 79, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (85, 85, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (86, 86, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (87, 87, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (88, 88, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (89, 89, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (90, 90, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (91, 96, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (92, 95, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (93, 94, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (94, 93, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (95, 92, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (96, 91, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (97, 97, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (98, 98, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (99, 99, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (100, 100, CAST(0x00E0C40000000000 AS Time))
GO
print 'Processed 100 total records'
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (101, 101, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (102, 102, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (103, 108, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (104, 107, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (105, 106, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (106, 105, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (107, 104, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (108, 103, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (109, 109, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (110, 110, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (111, 111, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (112, 112, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (113, 113, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (114, 114, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (115, 120, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (116, 119, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (117, 118, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (118, 117, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (119, 116, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (120, 115, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (121, 121, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (122, 122, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (123, 123, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (124, 124, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (125, 125, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (126, 126, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (127, 132, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (128, 131, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (129, 130, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (130, 129, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (131, 128, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (132, 127, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (133, 133, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (134, 134, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (135, 135, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (136, 136, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (137, 137, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (138, 138, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (139, 144, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (140, 143, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (141, 142, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (142, 141, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (143, 140, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (144, 139, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (145, 145, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (146, 146, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (147, 147, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (148, 148, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (149, 149, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (150, 150, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (151, 156, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (152, 155, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (153, 154, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (154, 153, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (155, 152, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (156, 151, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (157, 157, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (158, 158, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (159, 159, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (160, 160, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (161, 161, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (162, 162, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (163, 168, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (164, 167, CAST(0x0070620000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (165, 166, CAST(0x00907E0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (166, 165, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (167, 164, CAST(0x00D0B60000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (168, 163, CAST(0x00F0D20000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (169, 169, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (170, 170, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (171, 171, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (172, 172, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (173, 173, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (174, 174, CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (175, 180, CAST(0x0050460000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (176, 179, CAST(0x0080700000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (177, 178, CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (178, 177, CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (179, 176, CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Schedule] ([ScheduleID], [ArrangeID], [EstimateDepartureTime]) VALUES (180, 175, CAST(0x0040190100000000 AS Time))
SET IDENTITY_INSERT [dbo].[Schedule] OFF
/****** Object:  Table [dbo].[RouteStage]    Script Date: 04/07/2014 21:26:56 ******/
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
/****** Object:  Table [dbo].[Request]    Script Date: 04/07/2014 21:26:56 ******/
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
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 04/07/2014 21:26:56 ******/
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
/****** Object:  Table [dbo].[Comment]    Script Date: 04/07/2014 21:26:56 ******/
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
/****** Object:  Table [dbo].[Notification]    Script Date: 04/07/2014 21:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[ID] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[StationID] [int] NOT NULL,
	[isView] [bit] NOT NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 04/07/2014 21:26:56 ******/
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
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'staff1', N'Nguyễn', N'Văn Bình', N'Quận 1', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'staff10', N'Hoàng', N'Xuân Huy', N'Quận 10', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'staff2', N'Lê', N'Bảo Thi', N'Quận 2', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'staff3', N'Phạm', N'Thái Hoàng', N'Quận 3', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'staff4', N'Trần', N'Minh Trung', N'Quận 4', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'staff5', N'Châu ', N'Tuấn Kiệt', N'Quận 5', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'staff6', N'Vũ', N'Đại Nghĩa', N'Quận 6', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'staff7', N'Hồ', N'Đăng Hưng', N'Quận 7', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'staff8', N'Lâm', N'Thanh Phong', N'Quận 8', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'staff9', N'Mai', N'Hữu Nghĩa', N'Quận 9', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'taint', N'Nguyễn', N'Trọng Tài', N'Quận Bình Tân', N'0123456789')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address], [PhoneNumber]) VALUES (N'tungnt', N'Nguyễn', N'Thanh Tùng', N'Quận Tân Bình', N'0123456789')
/****** Object:  Table [dbo].[Trip]    Script Date: 04/07/2014 21:26:56 ******/
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
	[RouteID] [int] NOT NULL,
	[CoachID] [int] NOT NULL,
	[ScheduleID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Trip] PRIMARY KEY CLUSTERED 
(
	[TripID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 04/07/2014 21:26:56 ******/
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
/****** Object:  Table [dbo].[Assigning]    Script Date: 04/07/2014 21:26:56 ******/
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
/****** Object:  ForeignKey [FK_StationInProvince]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Station]  WITH CHECK ADD  CONSTRAINT [FK_StationInProvince] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[Station] CHECK CONSTRAINT [FK_StationInProvince]
GO
/****** Object:  ForeignKey [FK_Coach_CoachType]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Coach]  WITH CHECK ADD  CONSTRAINT [FK_Coach_CoachType] FOREIGN KEY([CoachTypeID])
REFERENCES [dbo].[CoachType] ([CoachTypeID])
GO
ALTER TABLE [dbo].[Coach] CHECK CONSTRAINT [FK_Coach_CoachType]
GO
/****** Object:  ForeignKey [FK_CoachArrangement_Coach]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[CoachArrangement]  WITH CHECK ADD  CONSTRAINT [FK_CoachArrangement_Coach] FOREIGN KEY([CoachID])
REFERENCES [dbo].[Coach] ([CoachID])
GO
ALTER TABLE [dbo].[CoachArrangement] CHECK CONSTRAINT [FK_CoachArrangement_Coach]
GO
/****** Object:  ForeignKey [FK_CoachArrangement_Route]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[CoachArrangement]  WITH NOCHECK ADD  CONSTRAINT [FK_CoachArrangement_Route] FOREIGN KEY([RouteID])
REFERENCES [dbo].[Route] ([RouteID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[CoachArrangement] CHECK CONSTRAINT [FK_CoachArrangement_Route]
GO
/****** Object:  ForeignKey [FK_StaffOfStation]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_StaffOfStation] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_StaffOfStation]
GO
/****** Object:  ForeignKey [FK_EndStationOfStage]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Stage]  WITH CHECK ADD  CONSTRAINT [FK_EndStationOfStage] FOREIGN KEY([EndPoint])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Stage] CHECK CONSTRAINT [FK_EndStationOfStage]
GO
/****** Object:  ForeignKey [FK_StartStationOfStage]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Stage]  WITH CHECK ADD  CONSTRAINT [FK_StartStationOfStage] FOREIGN KEY([StartPoint])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Stage] CHECK CONSTRAINT [FK_StartStationOfStage]
GO
/****** Object:  ForeignKey [FK_Schedule_CoachArrangement]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_CoachArrangement] FOREIGN KEY([ArrangeID])
REFERENCES [dbo].[CoachArrangement] ([ArrangeID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_CoachArrangement]
GO
/****** Object:  ForeignKey [FK_RouteStage_Route]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[RouteStage]  WITH CHECK ADD  CONSTRAINT [FK_RouteStage_Route] FOREIGN KEY([RouteID])
REFERENCES [dbo].[Route] ([RouteID])
GO
ALTER TABLE [dbo].[RouteStage] CHECK CONSTRAINT [FK_RouteStage_Route]
GO
/****** Object:  ForeignKey [FK_RouteStage_Stage]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[RouteStage]  WITH CHECK ADD  CONSTRAINT [FK_RouteStage_Stage] FOREIGN KEY([StageID])
REFERENCES [dbo].[Stage] ([StageID])
GO
ALTER TABLE [dbo].[RouteStage] CHECK CONSTRAINT [FK_RouteStage_Stage]
GO
/****** Object:  ForeignKey [FK_Request_DeliveryStatus]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_DeliveryStatus] FOREIGN KEY([DeliveryStatusID])
REFERENCES [dbo].[DeliveryStatus] ([DeliveryStatusID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_DeliveryStatus]
GO
/****** Object:  ForeignKey [FK_Request_FromStation]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_FromStation] FOREIGN KEY([FromLocation])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_FromStation]
GO
/****** Object:  ForeignKey [FK_Request_ManageFee]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_ManageFee] FOREIGN KEY([FeeID])
REFERENCES [dbo].[ManageFee] ([FeeID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_ManageFee]
GO
/****** Object:  ForeignKey [FK_Request_ToStation]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_ToStation] FOREIGN KEY([ToLocation])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_ToStation]
GO
/****** Object:  ForeignKey [FK_RequestOfAccount]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_RequestOfAccount] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_RequestOfAccount]
GO
/****** Object:  ForeignKey [FK_Rating_Account]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Account]
GO
/****** Object:  ForeignKey [FK_RatingForStation]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_RatingForStation] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_RatingForStation]
GO
/****** Object:  ForeignKey [FK_Comment_Account]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Account]
GO
/****** Object:  ForeignKey [FK_CommentForStation]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_CommentForStation] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_CommentForStation]
GO
/****** Object:  ForeignKey [FK_Notification_Account]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Account]
GO
/****** Object:  ForeignKey [FK_NotificationForStation]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_NotificationForStation] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_NotificationForStation]
GO
/****** Object:  ForeignKey [FK_UserInfo_Account]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserInfo_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [FK_UserInfo_Account]
GO
/****** Object:  ForeignKey [FK_Trip_Route]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Route] FOREIGN KEY([RouteID])
REFERENCES [dbo].[Route] ([RouteID])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_Route]
GO
/****** Object:  ForeignKey [FK_Trip_Schedule]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Schedule] FOREIGN KEY([ScheduleID])
REFERENCES [dbo].[Schedule] ([ScheduleID])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_Schedule]
GO
/****** Object:  ForeignKey [FK_InvoiceOfRequest]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceOfRequest] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_InvoiceOfRequest]
GO
/****** Object:  ForeignKey [FK_Assigning_Trip]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Assigning]  WITH CHECK ADD  CONSTRAINT [FK_Assigning_Trip] FOREIGN KEY([TripID])
REFERENCES [dbo].[Trip] ([TripID])
GO
ALTER TABLE [dbo].[Assigning] CHECK CONSTRAINT [FK_Assigning_Trip]
GO
/****** Object:  ForeignKey [FK_AssigningForRequest]    Script Date: 04/07/2014 21:26:56 ******/
ALTER TABLE [dbo].[Assigning]  WITH CHECK ADD  CONSTRAINT [FK_AssigningForRequest] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Assigning] CHECK CONSTRAINT [FK_AssigningForRequest]
GO
