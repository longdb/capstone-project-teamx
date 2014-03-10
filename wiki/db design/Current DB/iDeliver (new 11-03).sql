USE [iDeliver]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 03/11/2014 00:41:58 ******/
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
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (3, N'Nha Trang')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (4, N'Đà Lạt')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (5, N'Vũng Tàu')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (6, N'Đồng Tháp')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (7, N'Đồng Nai')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (8, N'An Giang')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (9, N'Tiền Giang')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (10, N'Cà Mau')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (11, N'Cần Thơ')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (12, N'Đà Nẵng')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (13, N'Kiên Giang')
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (14, N'Hậu Giang')
SET IDENTITY_INSERT [dbo].[Province] OFF
/****** Object:  Table [dbo].[ManageFee]    Script Date: 03/11/2014 00:41:58 ******/
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
/****** Object:  Table [dbo].[CoachType]    Script Date: 03/11/2014 00:41:58 ******/
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
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (4, 45, 6)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (5, 52, NULL)
SET IDENTITY_INSERT [dbo].[CoachType] OFF
/****** Object:  Table [dbo].[DeliveryStatus]    Script Date: 03/11/2014 00:41:58 ******/
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
SET IDENTITY_INSERT [dbo].[DeliveryStatus] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 03/11/2014 00:41:58 ******/
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
/****** Object:  Table [dbo].[Coach]    Script Date: 03/11/2014 00:41:58 ******/
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
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (3, N'53S-2951', 1, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (4, N'51B-04134', 1, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (5, N'51B-10558', 1, 4)
SET IDENTITY_INSERT [dbo].[Coach] OFF
/****** Object:  Table [dbo].[Station]    Script Date: 03/11/2014 00:41:58 ******/
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
	[ProvinceID] [int] NULL,
 CONSTRAINT [PK_Station] PRIMARY KEY CLUSTERED 
(
	[StationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Station] ON
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (1, N'SG.Lê Hồng Phong', N'233 Lê Hồng Phong, F4, Q.5, TP Hồ Chí Minh', 2, N'(08) 38 309 309', N'Phòng vé Lê Hồng Phong', N'10.7584848, 106.6777557', 1)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (2, N'Tạ Uyên - VT', N'03 Tạ Uyên, Vũng Tàu', 1.5, N'0643 52 53 54', N'Phòng vé VT1', N'10.3491804, 107.0855695', 5)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (3, N'Bến xe liên tỉnh Đà Lạt', N'01 Tô Hiến Thành, F3, Đà Lạt', 2.5, N'0633 58 58 58', N'Phòng vé LĐ1', N'11.9264949, 108.4460601', 4)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (4, N'SG2.Xa Lộ Hà Nội', N'798A Xa Lộ Hà Nội, Q9, Hồ Chí Minh', 1.5, N'(08) 3897 3894', N'Phòng vé: Xa Lộ Hà Nội', N'10.8512267, 106.7767284', 1)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (6, N'Bến xe Phía Nam Nha Trang', N'Số 58, đường 23/10, Xã Vĩnh Hiệp , Nha Trang, Tỉnh Khánh Hòa ', 1.5, N'(058) 3562626', N'VP Bến xe Phía Nam Nha Trang', N'12.2527081, 109.1627343', 3)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (7, N'Bến xe Cao Lãnh', N'71 Nguyễn Văn Trỗi, Tp Cao Lãnh, Đồng Tháp', 2, N'(067)3876850', N'VP Bến xe Cao Lãnh', N'10.4560583, 105.6381782', 6)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (8, N'Suối Linh - Biên Hòa', N'D9 - Tổ 2 - KP.4 - P. Long Bình - Đồng Nai', 3, N'(0618)890639', N'Phòng vé Suối Linh - Đồng Nai', N'10.9413981, 106.9004472', 7)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (9, N'SG.Bến xe Miền Tây', N'395 Kinh Dương Vương, phường An Lạc, Quận Bình Tân, Hồ Chí Minh', 3, N'(08) 38776594', N'VP Bến xe Miền Tây', N'10.740993, 106.617980', 1)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (10, N'SG.Bến xe Miền Đông', N'367 Đinh Bộ Lĩnh, 26, Bình Thạnh, Hồ Chí Minh', 6, N'08.38 309 309 ', N'VP Bến xe Miền Đông', N'10.815213, 106.710674', 1)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (11, N'Bến xe Châu Đốc', N'89 Phan Văn Vàng, Phường Châu Phú A, Châu Đốc, Tỉnh An Giang', 6, N'( 076) 3565888 ', N'VP Bến xe Châu Đốc', N'10.7097216, 105.1184159', 8)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (12, N'Bến xe Gò Công', N'Đồng Khởi - Phường 4 - Gò Công - Tiền Giang', 8.5, N'(073)3841278', N'VP Bến xe Gò Công', N'10.360669, 106.6628406', 9)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (13, N'Rạch Giá', N'260A Nguyễn Bỉnh Khiêm, Phường Vĩnh Quang, Rạch Giá, Tỉnh Kiên Giang ', 1, N'(077) 3691691', N'VP Rạch Giá', N'10.021507, 105.0910974', 13)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (14, N'Bến Xe Vị Thanh', N'Trần Hưng Đạo, Phường 5, Vị Thanh, Tỉnh Hậu Giang', 2, N'(0711) 3583583', N'VP Bến Xe Vị Thanh', N'9.786458300000001, 105.4703164', 14)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (15, N'Bến xe Hùng Vương - Cần Thơ', N'01 Hùng Vương, Thới Bình, Ninh Kiều, TP.Cần Thơ ', 1, N'(0710)3769768', N'VP Bến xe Hùng Vương', N'10.0449994, 105.7799216', 11)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID]) VALUES (16, N'Bến Xe Trung Tâm Đà Nẵng', N'201 Tôn Đức Thắng, Phường Hòa Minh, Liên Chiểu, TP.Đà Nẵng', NULL, N'(0511) 3786 786', N'VP Bến Xe Trung Tâm Đà Nẵng', N'16.051571, 108.214897', 12)
SET IDENTITY_INSERT [dbo].[Station] OFF
/****** Object:  Table [dbo].[UserInfo]    Script Date: 03/11/2014 00:41:58 ******/
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
/****** Object:  Table [dbo].[Route]    Script Date: 03/11/2014 00:41:58 ******/
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
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [AvgRateLevel], [Duration], [Distance], [Container]) VALUES (1, N'Sài Gòn - Vũng Tàu', 1, 2, NULL, 1.3, 130, NULL)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [AvgRateLevel], [Duration], [Distance], [Container]) VALUES (2, N'Sài Gòn - Đà Lạt', 1, 3, NULL, 8.1, 300, NULL)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [AvgRateLevel], [Duration], [Distance], [Container]) VALUES (3, N'Sài Gòn - Cao Lãnh', 9, 7, NULL, 3.5, 163, NULL)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [AvgRateLevel], [Duration], [Distance], [Container]) VALUES (4, N'Sài Gòn - Sa Đéc', 9, 12, NULL, 1.5, 71, NULL)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [AvgRateLevel], [Duration], [Distance], [Container]) VALUES (5, N'Sài Gòn - Rạch Giá', 9, 13, NULL, 5.5, 248, NULL)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [AvgRateLevel], [Duration], [Distance], [Container]) VALUES (6, N'Sài Gòn - Vị Thanh', 9, 14, NULL, 5, 240, NULL)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [AvgRateLevel], [Duration], [Distance], [Container]) VALUES (7, N'Nha Trang - Sài Gòn', 6, 10, NULL, 11, 439, NULL)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [AvgRateLevel], [Duration], [Distance], [Container]) VALUES (8, N'Cần Thơ - Sài Gòn', 15, 9, NULL, 3, 167, NULL)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [AvgRateLevel], [Duration], [Distance], [Container]) VALUES (9, N'Đà Nẵng - Sài Gòn', 16, 10, NULL, 23, 960, NULL)
SET IDENTITY_INSERT [dbo].[Route] OFF
/****** Object:  Table [dbo].[Request]    Script Date: 03/11/2014 00:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[DeliveryStatusID] [int] NOT NULL,
	[FeeID] [int] NULL,
	[EstimateWeight] [nvarchar](50) NOT NULL,
	[EstimateVolume] [nvarchar](50) NOT NULL,
	[DateRequest] [date] NOT NULL,
	[Description] [nvarchar](500) NULL,
	[FromLocation] [int] NOT NULL,
	[ToLocation] [int] NOT NULL,
	[SenderAddress] [nvarchar](500) NULL,
	[ReceiverAddress] [nvarchar](500) NULL,
	[SenderPhone] [nvarchar](50) NULL,
	[ReceiverName] [nvarchar](100) NOT NULL,
	[ReceiverPhone] [nvarchar](50) NULL,
	[Type] [bit] NULL,
	[TypeOfPayment] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Request] ON
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [Description], [FromLocation], [ToLocation], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment]) VALUES (2, N'customer1', 2, 4, N'1.1 - 5', N'100.1 - 500', CAST(0x3B380B00 AS Date), N'', 3, 1, N'1/30 trần nhân tông, phường 8, đà lạt', N'22/14 phan văn hớn, hồ chí minh', N'01628468737', N'lolLong', N'06338264863', NULL, N'')
SET IDENTITY_INSERT [dbo].[Request] OFF
/****** Object:  Table [dbo].[Rating]    Script Date: 03/11/2014 00:41:58 ******/
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
/****** Object:  Table [dbo].[Comment]    Script Date: 03/11/2014 00:41:58 ******/
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
/****** Object:  Table [dbo].[Invoice]    Script Date: 03/11/2014 00:41:58 ******/
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
/****** Object:  Table [dbo].[Schedule]    Script Date: 03/11/2014 00:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[ScheduleID] [int] IDENTITY(1,1) NOT NULL,
	[RouteID] [int] NOT NULL,
	[CoachID] [int] NOT NULL,
	[EstimateDepartureTime] [time](0) NOT NULL,
	[EstimateArrivalTime] [time](0) NOT NULL,
	[EstimateVolume] [float] NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[ScheduleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Schedule] ON
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (1, 6, 2, CAST(0x00BC150100000000 AS Time), CAST(0x008C0A0000000000 AS Time), NULL)
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (2, 6, 2, CAST(0x00DC310100000000 AS Time), CAST(0x00AC260000000000 AS Time), NULL)
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (3, 6, 2, CAST(0x00FC4D0100000000 AS Time), CAST(0x00CC420000000000 AS Time), NULL)
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (4, 6, 2, CAST(0x003CA50000000000 AS Time), CAST(0x008CEB0000000000 AS Time), NULL)
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (5, 4, 3, CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), NULL)
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (6, 4, 3, CAST(0x0008E80000000000 AS Time), CAST(0x0040190100000000 AS Time), NULL)
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (7, 8, 5, CAST(0x0050460000000000 AS Time), CAST(0x0080700000000000 AS Time), NULL)
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (8, 8, 5, CAST(0x0060540000000000 AS Time), CAST(0x00907E0000000000 AS Time), NULL)
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (9, 8, 5, CAST(0x0070620000000000 AS Time), CAST(0x00A08C0000000000 AS Time), NULL)
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (10, 8, 5, CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), NULL)
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (11, 8, 5, CAST(0x00907E0000000000 AS Time), CAST(0x00C0A80000000000 AS Time), NULL)
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (12, 8, 5, CAST(0x00A08C0000000000 AS Time), CAST(0x00D0B60000000000 AS Time), NULL)
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (13, 8, 5, CAST(0x00B09A0000000000 AS Time), CAST(0x00E0C40000000000 AS Time), NULL)
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (14, 8, 5, CAST(0x00C0A80000000000 AS Time), CAST(0x00F0D20000000000 AS Time), NULL)
SET IDENTITY_INSERT [dbo].[Schedule] OFF
/****** Object:  Table [dbo].[Trip]    Script Date: 03/11/2014 00:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trip](
	[TripID] [int] IDENTITY(1,1) NOT NULL,
	[EstimateDepartureTime] [time](0) NULL,
	[EstimateArrivalTime] [time](0) NULL,
	[RealDepartureTime] [time](0) NULL,
	[RealArrivalTime] [time](0) NULL,
	[EstimateVolume] [float] NULL,
	[AvailableVolume] [float] NULL,
	[RealVolume] [float] NULL,
	[Date] [date] NOT NULL,
	[RouteID] [int] NOT NULL,
	[CoachID] [int] NOT NULL,
	[ScheduleID] [int] NULL,
 CONSTRAINT [PK_Trip] PRIMARY KEY CLUSTERED 
(
	[TripID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Trip] ON
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [Date], [RouteID], [CoachID], [ScheduleID]) VALUES (1, CAST(0x0080700000000000 AS Time), CAST(0x0098850000000000 AS Time), NULL, NULL, NULL, NULL, NULL, CAST(0x3E380B00 AS Date), 1, 2, NULL)
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [Date], [RouteID], [CoachID], [ScheduleID]) VALUES (2, CAST(0x0088770000000000 AS Time), CAST(0x0058E30000000000 AS Time), NULL, NULL, NULL, NULL, NULL, CAST(0x5E380B00 AS Date), 2, 4, NULL)
SET IDENTITY_INSERT [dbo].[Trip] OFF
/****** Object:  Table [dbo].[CoachSchedule]    Script Date: 03/11/2014 00:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoachSchedule](
	[CoachID] [int] NOT NULL,
	[ScheduleID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assigning]    Script Date: 03/11/2014 00:41:58 ******/
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
/****** Object:  ForeignKey [FK_Coach_CoachType]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Coach]  WITH CHECK ADD  CONSTRAINT [FK_Coach_CoachType] FOREIGN KEY([CoachTypeID])
REFERENCES [dbo].[CoachType] ([CoachTypeID])
GO
ALTER TABLE [dbo].[Coach] CHECK CONSTRAINT [FK_Coach_CoachType]
GO
/****** Object:  ForeignKey [FK_Station_Province]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Station]  WITH CHECK ADD  CONSTRAINT [FK_Station_Province] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[Station] CHECK CONSTRAINT [FK_Station_Province]
GO
/****** Object:  ForeignKey [FK_UserInfo_Account]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserInfo_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [FK_UserInfo_Account]
GO
/****** Object:  ForeignKey [FK_EndStation]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Route]  WITH CHECK ADD  CONSTRAINT [FK_EndStation] FOREIGN KEY([EndPoint])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Route] CHECK CONSTRAINT [FK_EndStation]
GO
/****** Object:  ForeignKey [FK_StartStation]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Route]  WITH CHECK ADD  CONSTRAINT [FK_StartStation] FOREIGN KEY([StartPoint])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Route] CHECK CONSTRAINT [FK_StartStation]
GO
/****** Object:  ForeignKey [FK_Request_Account]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Account]
GO
/****** Object:  ForeignKey [FK_Request_DeliveryStatus]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_DeliveryStatus] FOREIGN KEY([DeliveryStatusID])
REFERENCES [dbo].[DeliveryStatus] ([DeliveryStatusID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_DeliveryStatus]
GO
/****** Object:  ForeignKey [FK_Request_ManageFee]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_ManageFee] FOREIGN KEY([FeeID])
REFERENCES [dbo].[ManageFee] ([FeeID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_ManageFee]
GO
/****** Object:  ForeignKey [FK_Request_Station]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Station] FOREIGN KEY([FromLocation])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Station]
GO
/****** Object:  ForeignKey [FK_Request_Station1]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Station1] FOREIGN KEY([ToLocation])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Station1]
GO
/****** Object:  ForeignKey [FK_Rating_Account]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Account]
GO
/****** Object:  ForeignKey [FK_Rating_Station]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Station] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Station]
GO
/****** Object:  ForeignKey [FK_Comment_Account]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Account]
GO
/****** Object:  ForeignKey [FK_Comment_Station]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Station] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Station]
GO
/****** Object:  ForeignKey [FK_Invoice_ManageFee]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_ManageFee] FOREIGN KEY([FeeID])
REFERENCES [dbo].[ManageFee] ([FeeID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_ManageFee]
GO
/****** Object:  ForeignKey [FK_Invoice_Request]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Request] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Request]
GO
/****** Object:  ForeignKey [FK_Schedule_Coach]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Coach] FOREIGN KEY([CoachID])
REFERENCES [dbo].[Coach] ([CoachID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Coach]
GO
/****** Object:  ForeignKey [FK_Schedule_Route]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Route] FOREIGN KEY([RouteID])
REFERENCES [dbo].[Route] ([RouteID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Route]
GO
/****** Object:  ForeignKey [FK_Trip_Coach]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Coach] FOREIGN KEY([CoachID])
REFERENCES [dbo].[Coach] ([CoachID])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_Coach]
GO
/****** Object:  ForeignKey [FK_Trip_Route]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Route] FOREIGN KEY([RouteID])
REFERENCES [dbo].[Route] ([RouteID])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_Route]
GO
/****** Object:  ForeignKey [FK_Trip_Schedule]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Schedule] FOREIGN KEY([ScheduleID])
REFERENCES [dbo].[Schedule] ([ScheduleID])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_Schedule]
GO
/****** Object:  ForeignKey [FK_CoachSchedule_Coach]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[CoachSchedule]  WITH CHECK ADD  CONSTRAINT [FK_CoachSchedule_Coach] FOREIGN KEY([CoachID])
REFERENCES [dbo].[Coach] ([CoachID])
GO
ALTER TABLE [dbo].[CoachSchedule] CHECK CONSTRAINT [FK_CoachSchedule_Coach]
GO
/****** Object:  ForeignKey [FK_CoachSchedule_Schedule]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[CoachSchedule]  WITH CHECK ADD  CONSTRAINT [FK_CoachSchedule_Schedule] FOREIGN KEY([ScheduleID])
REFERENCES [dbo].[Schedule] ([ScheduleID])
GO
ALTER TABLE [dbo].[CoachSchedule] CHECK CONSTRAINT [FK_CoachSchedule_Schedule]
GO
/****** Object:  ForeignKey [FK_Assigning_Request]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Assigning]  WITH CHECK ADD  CONSTRAINT [FK_Assigning_Request] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Assigning] CHECK CONSTRAINT [FK_Assigning_Request]
GO
/****** Object:  ForeignKey [FK_Assigning_Trip]    Script Date: 03/11/2014 00:41:58 ******/
ALTER TABLE [dbo].[Assigning]  WITH CHECK ADD  CONSTRAINT [FK_Assigning_Trip] FOREIGN KEY([TripID])
REFERENCES [dbo].[Trip] ([TripID])
GO
ALTER TABLE [dbo].[Assigning] CHECK CONSTRAINT [FK_Assigning_Trip]
GO
