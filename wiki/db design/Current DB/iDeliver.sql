USE [master]
GO
/****** Object:  Database [iDeliver]    Script Date: 02/28/2014 12:41:02 ******/
CREATE DATABASE [iDeliver] ON  PRIMARY 
( NAME = N'iDeliver', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\iDeliver.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'iDeliver_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\iDeliver_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
ALTER DATABASE [iDeliver] SET  DISABLE_BROKER
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
/****** Object:  Table [dbo].[ManageFee]    Script Date: 02/28/2014 12:41:04 ******/
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
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (2, 100000, 0.1, 1, 0.1, 100)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (4, 200000, 1.1, 5, 100.1, 500)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (5, 350000, 5.1, 10, 500.1, 1000)
INSERT [dbo].[ManageFee] ([FeeID], [Fee], [MinWeight], [MaxWeight], [MinVolume], [MaxVolume]) VALUES (6, 500000, 10.1, 50, 1000.1, 1500)
SET IDENTITY_INSERT [dbo].[ManageFee] OFF
/****** Object:  Table [dbo].[DeliveryStatus]    Script Date: 02/28/2014 12:41:04 ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 02/28/2014 12:41:04 ******/
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
	[Phone] [nvarchar](50) NOT NULL,
	[BannedStatus] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus]) VALUES (N'customer1', N'customer1', N'customer1', N'Customer', N'customer1@gmail.com', N'0906425539', 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus]) VALUES (N'duc', N'abc', N'abc', N'Staff', N'duc@yahoo.com', N'09125934873', 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus]) VALUES (N'long', N'aaaa', N'aaaa', N'Admin', N'vuhoanglong1992.lv@gmail.com', N'0123456789', 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus]) VALUES (N'longbv', N'123', N'123', N'Customer', N'longbv@yahoo.com', N'09696969696', 1)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus]) VALUES (N'longdb', N'longdb', N'longdb', N'Customer', N'winvn92@gmail.com', N'0906425539', 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus]) VALUES (N'lulp', N'123456', N'123456', N'Staff', N'lulp@yahoo.com', N'01636987483', 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus]) VALUES (N'tungnt', N'iridescent', N'iridescent', N'Staff', N'tungnt@yahoo.com', N'01628468737', 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus]) VALUES (N'VuHoangLong', N'aaaaa', N'aaaaa', N'Customer', N'vuhoanglong1992.lv@gmail.com', N'0123456789', 0)
/****** Object:  Table [dbo].[CoachType]    Script Date: 02/28/2014 12:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoachType](
	[CoachTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Seats] [int] NOT NULL,
	[Capacity] [float] NULL,
 CONSTRAINT [PK_CoachType] PRIMARY KEY CLUSTERED 
(
	[CoachTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CoachType] ON
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (1, 16, NULL)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (2, 29, NULL)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (4, 45, NULL)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (5, 52, NULL)
SET IDENTITY_INSERT [dbo].[CoachType] OFF
/****** Object:  Table [dbo].[Station]    Script Date: 02/28/2014 12:41:04 ******/
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
	[BreakTime] [float] NULL,
	[StationPhone] [varchar](15) NULL,
	[Description] [nvarchar](500) NULL,
	[Coordinate] [nvarchar](500) NULL,
	[Province] [nvarchar](50) NULL,
 CONSTRAINT [PK_Station] PRIMARY KEY CLUSTERED 
(
	[StationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Station] ON
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [Province]) VALUES (1, N'SG1.LHP', N'233 Lê Hồng Phong, F4, Q.5, TP Hồ Chí Minh', 2, N'(08) 38 309 309', N'Phòng vé Lê Hồng Phong', N'10.7584848, 106.6777557', N'TPHCM')
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [Province]) VALUES (2, N'Tạ Uyên - VT', N'03 Tạ Uyên, TP Vũng Tàu', 1.5, N'0643 52 53 54', N'Phòng vé VT1', N'10.3491804, 107.0855695', N'Vũng Tàu')
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [Province]) VALUES (3, N'Bến xe liên tỉnh Đà Lạt', N'01 Tô Hiến Thành, F3, Tp Đà Lạt', 2.5, N'0633 58 58 58', N'Phòng vé LĐ1', N'11.9264949, 108.4460601', N'Đà Lạt')
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [Province]) VALUES (4, N'SG2.Xa Lộ Hà Nội', N'798A Xa Lộ Hà Nội, Q9, TP Hồ Chí Minh', 1.5, N'(08) 3897 3894', N'Phòng vé: Xa Lộ Hà Nội', N'10.8512267, 106.7767284', N'TPHCM')
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [Province]) VALUES (5, N'Cafe Đào Tiên', N'21 Quốc lộ 51B, Vũng Tàu Bà Rịa - Vũng Tàu', 2, N'(0643) 32 33 34', N'Phòng vé VT2', N'10.4056777, 107.148183', N'Vũng Tàu')
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [Province]) VALUES (6, N'NT - Hoàng Hoa Thám ', N'7 Hoàng Hoa Thám, Nha Trang, Khánh Hòa', 2, N'(058)3812812', N'Phòng vé NT1', N'12.2510872, 109.1938555', NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [Province]) VALUES (7, N'Đồng Tháp 1', N'19 Võ Thị Sáu, Tp Cao Lãnh, Đồng Tháp', 5, N'(067)3876850', N'Phòng vé Cao Lãnh', N'10.4560583, 105.6381782', N'Đồng Tháp')
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [Province]) VALUES (8, N'Đồng Nai 1', N'D9 - Tổ 2 - KP.4 - P. Long Bình - Đồng Nai', 3, N'(0618)890639', N'Phòng vé Suối Linh - Đồng Nai', N'10.9413981, 106.9004472', N'Đồng Nai')
SET IDENTITY_INSERT [dbo].[Station] OFF
/****** Object:  Table [dbo].[Route]    Script Date: 02/28/2014 12:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Route](
	[RouteID] [int] IDENTITY(1,1) NOT NULL,
	[RouteName] [nvarchar](50) NOT NULL,
	[StartPoint] [int] NOT NULL,
	[EndPoint] [int] NOT NULL,
	[AvgRateLevel] [float] NULL,
	[Duration] [float] NULL,
	[Distance] [float] NULL,
	[Container] [float] NULL,
 CONSTRAINT [PK_Route] PRIMARY KEY CLUSTERED 
(
	[RouteID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Route] ON
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [AvgRateLevel], [Duration], [Distance], [Container]) VALUES (1, N'SG-VT1', 1, 2, NULL, 1.3, 120, NULL)
SET IDENTITY_INSERT [dbo].[Route] OFF
/****** Object:  Table [dbo].[Request]    Script Date: 02/28/2014 12:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[DeliveryStatusID] [int] NOT NULL,
	[FeeID] [int] NULL,
	[EstimateWeight] [float] NULL,
	[EstimateVolume] [float] NULL,
	[DateRequest] [date] NOT NULL,
	[Description] [nvarchar](500) NULL,
	[FromLocation] [int] NOT NULL,
	[ToLocation] [int] NOT NULL,
	[SenderAddress] [nvarchar](500) NULL,
	[ReceiverAddress] [nvarchar](500) NULL,
	[SenderPhone] [nvarchar](50) NULL,
	[ReceiverPhone] [nvarchar](50) NULL,
	[Type] [bit] NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 02/28/2014 12:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[RateLevel] [int] NOT NULL,
	[StationID] [int] NOT NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coach]    Script Date: 02/28/2014 12:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coach](
	[CoachID] [int] IDENTITY(1,1) NOT NULL,
	[NumberPlate] [nvarchar](50) NOT NULL,
	[RouteID] [int] NULL,
	[CoachTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Coach] PRIMARY KEY CLUSTERED 
(
	[CoachID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Coach] ON
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (2, N'53N-9795', NULL, 4)
SET IDENTITY_INSERT [dbo].[Coach] OFF
/****** Object:  Table [dbo].[Comment]    Script Date: 02/28/2014 12:41:04 ******/
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
/****** Object:  Table [dbo].[UserInfo]    Script Date: 02/28/2014 12:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Username] [nvarchar](50) NOT NULL,
	[Firstname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
 CONSTRAINT [PK_UserInfo_1] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address]) VALUES (N'long', N'long', N'vu', N'phan đăng lưu')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address]) VALUES (N'VuHoangLong', N'Long', N'Vũ', N'hehe')
/****** Object:  Table [dbo].[Trip]    Script Date: 02/28/2014 12:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trip](
	[TripID] [int] IDENTITY(1,1) NOT NULL,
	[EstimateDepartureTime] [time](7) NULL,
	[EstimateArrivalTime] [time](7) NULL,
	[RealDepartureTime] [time](7) NULL,
	[RealArrivalTime] [time](7) NULL,
	[EstimateVolume] [float] NULL,
	[AvailableVolume] [float] NULL,
	[RealVolume] [float] NULL,
	[Date] [date] NOT NULL,
	[RouteID] [int] NOT NULL,
	[CoachID] [int] NOT NULL,
 CONSTRAINT [PK_Trip] PRIMARY KEY CLUSTERED 
(
	[TripID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Trip] ON
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [Date], [RouteID], [CoachID]) VALUES (1, CAST(0x070040230E430000 AS Time), CAST(0x0700DCC9A04F0000 AS Time), NULL, NULL, NULL, NULL, NULL, CAST(0x01380B00 AS Date), 1, 2)
SET IDENTITY_INSERT [dbo].[Trip] OFF
/****** Object:  Table [dbo].[Invoice]    Script Date: 02/28/2014 12:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[Weight] [float] NULL,
	[Volume] [float] NULL,
	[Price] [float] NOT NULL,
	[FeeID] [int] NULL,
	[RequestID] [int] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assigning]    Script Date: 02/28/2014 12:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assigning](
	[TripID] [int] NOT NULL,
	[RequestID] [int] NOT NULL,
	[IndicateOrder] [int] NULL,
 CONSTRAINT [PK_Assigning] PRIMARY KEY CLUSTERED 
(
	[TripID] ASC,
	[RequestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_EndStation]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Route]  WITH CHECK ADD  CONSTRAINT [FK_EndStation] FOREIGN KEY([EndPoint])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Route] CHECK CONSTRAINT [FK_EndStation]
GO
/****** Object:  ForeignKey [FK_StartStation]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Route]  WITH CHECK ADD  CONSTRAINT [FK_StartStation] FOREIGN KEY([StartPoint])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Route] CHECK CONSTRAINT [FK_StartStation]
GO
/****** Object:  ForeignKey [FK_Request_Account]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Account]
GO
/****** Object:  ForeignKey [FK_Request_DeliveryStatus]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_DeliveryStatus] FOREIGN KEY([DeliveryStatusID])
REFERENCES [dbo].[DeliveryStatus] ([DeliveryStatusID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_DeliveryStatus]
GO
/****** Object:  ForeignKey [FK_Request_ManageFee]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_ManageFee] FOREIGN KEY([FeeID])
REFERENCES [dbo].[ManageFee] ([FeeID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_ManageFee]
GO
/****** Object:  ForeignKey [FK_Request_Station]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Station] FOREIGN KEY([FromLocation])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Station]
GO
/****** Object:  ForeignKey [FK_Request_Station1]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Station1] FOREIGN KEY([ToLocation])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Station1]
GO
/****** Object:  ForeignKey [FK_Rating_Account]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Account]
GO
/****** Object:  ForeignKey [FK_Rating_Station]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Station] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Station]
GO
/****** Object:  ForeignKey [FK_Coach_CoachType]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Coach]  WITH CHECK ADD  CONSTRAINT [FK_Coach_CoachType] FOREIGN KEY([CoachTypeID])
REFERENCES [dbo].[CoachType] ([CoachTypeID])
GO
ALTER TABLE [dbo].[Coach] CHECK CONSTRAINT [FK_Coach_CoachType]
GO
/****** Object:  ForeignKey [FK_Comment_Account]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Account]
GO
/****** Object:  ForeignKey [FK_Comment_Station]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Station] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Station]
GO
/****** Object:  ForeignKey [FK_UserInfo_Account]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserInfo_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [FK_UserInfo_Account]
GO
/****** Object:  ForeignKey [FK_Trip_Coach]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Coach] FOREIGN KEY([CoachID])
REFERENCES [dbo].[Coach] ([CoachID])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_Coach]
GO
/****** Object:  ForeignKey [FK_Trip_Route]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Route] FOREIGN KEY([RouteID])
REFERENCES [dbo].[Route] ([RouteID])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_Route]
GO
/****** Object:  ForeignKey [FK_Invoice_ManageFee]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_ManageFee] FOREIGN KEY([FeeID])
REFERENCES [dbo].[ManageFee] ([FeeID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_ManageFee]
GO
/****** Object:  ForeignKey [FK_Invoice_Request]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Request] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Request]
GO
/****** Object:  ForeignKey [FK_Assigning_Request]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Assigning]  WITH CHECK ADD  CONSTRAINT [FK_Assigning_Request] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Assigning] CHECK CONSTRAINT [FK_Assigning_Request]
GO
/****** Object:  ForeignKey [FK_Assigning_Trip]    Script Date: 02/28/2014 12:41:04 ******/
ALTER TABLE [dbo].[Assigning]  WITH CHECK ADD  CONSTRAINT [FK_Assigning_Trip] FOREIGN KEY([TripID])
REFERENCES [dbo].[Trip] ([TripID])
GO
ALTER TABLE [dbo].[Assigning] CHECK CONSTRAINT [FK_Assigning_Trip]
GO
