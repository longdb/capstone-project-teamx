USE [iDeliver]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 03/27/2014 23:04:52 ******/
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
/****** Object:  Table [dbo].[ManageFee]    Script Date: 03/27/2014 23:04:52 ******/
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
/****** Object:  Table [dbo].[CoachType]    Script Date: 03/27/2014 23:04:52 ******/
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
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (1, 16, 1000)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (2, 29, 2500)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (4, 40, 4500)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (5, 45, 5000)
INSERT [dbo].[CoachType] ([CoachTypeID], [Seats], [Capacity]) VALUES (6, 52, 6000)
SET IDENTITY_INSERT [dbo].[CoachType] OFF
/****** Object:  Table [dbo].[DeliveryStatus]    Script Date: 03/27/2014 23:04:52 ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 03/27/2014 23:04:52 ******/
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
	[StationID] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'billgates', N'billgates', N'billgates', N'Customer', N'billgates@microsoft.com', N'01234567890', 0, 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'customer1', N'customer1', N'customer1', N'Customer', N'customer1@gmail.com', N'0906425539', 0, 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'duc', N'abc', N'abc', N'Staff', N'duc@yahoo.com', N'09125934873', 0, 9)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'long', N'aaaa', N'aaaa', N'Admin', N'vuhoanglong1992.lv@gmail.com', N'0123456789', 0, 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'longbv', N'123', N'123', N'Customer', N'longbv@yahoo.com', N'09696969696', 1, 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'longdb', N'longdb', N'longdb', N'Customer', N'winvn92@gmail.com', N'0906425539', 0, 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'lulp', N'123456', N'123456', N'Staff', N'lulp@yahoo.com', N'01636987483', 0, 3)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'newstaff', N'newstaff', N'newstaff', N'Customer', N'newstaff@staff.com', N'2673228852', 0, 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'staff15', N'staff15', N'staff15', N'Staff', N'staff6@gmail.com', N'0123456789', 0, 15)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'staff16', N'staff16', N'staff16', N'Staff', N'staff6@gmail.com', N'0123456789', 0, 16)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'staff6', N'staff6', N'staff6', N'Staff', N'staff6@gmail.com', N'0123456789', 0, 6)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'staff7', N'staff7', N'staff7', N'Staff', N'staff6@gmail.com', N'0123456789', 0, 7)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'staff9', N'staff9', N'staff9', N'Staff', N'staff6@gmail.com', N'0123456789', 0, 9)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'stevejobs', N'stevejobs', N'stevejobs', N'Customer', N'stevejobs@apple.com', N'0976777879', 0, 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'tungnt', N'iridescent', N'iridescent', N'Staff', N'tungnt@yahoo.com', N'01628468737', 0, 7)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'vanvd', N'vanvd', N'vanvd', N'Customer', N'vanvd@fpt.edu.vn', N'0977767774', 0, 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'vinhnt', N'vinhnt', N'vinhnt', N'Customer', N'vinhnt@fpt.edu.vn', N'0937842371', 0, 0)
INSERT [dbo].[Account] ([Username], [Password], [BackupPassword], [Role], [Email], [Phone], [BannedStatus], [StationID]) VALUES (N'VuHoangLong', N'aaaaa', N'aaaaa', N'Customer', N'vuhoanglong1992.lv@gmail.com', N'0123456789', 0, 0)
/****** Object:  Table [dbo].[Coach]    Script Date: 03/27/2014 23:04:52 ******/
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
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (2, N'53N-9795', 1, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (3, N'53S-2951', 1, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (4, N'51B-04134', 1, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (5, N'51B-10558', 1, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (6, N'51C-52125', 3, 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (7, N'53N-3712', 6, 2)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (8, N'53N-2589', 8, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (9, N'54L-5915', 8, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (10, N'53N-1228', 8, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (11, N'53S-3259', 1, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (12, N'53S-3245', 1, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (15, N'53S-3273', 1, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (16, N'53S-3218', 1, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (17, N'53S-3296', 1, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (18, N'53S-3218', 1, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (19, N'53S-3260', 1, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (20, N'53S-3218', 4, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (21, N'53S-3228', 4, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (22, N'53U-8930', 3, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (23, N'53U-8247', 3, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (24, N'53U-8511', 3, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (25, N'53U-8632', 3, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (26, N'53U-8021', 3, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (27, N'53U-8735', 3, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (28, N'53U-8812', 3, 1)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (29, N'54V-3259', 8, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (30, N'54V-3245', 8, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (31, N'54V-3251', 8, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (32, N'54V-3252', 8, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (33, N'54V-3253', 8, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (34, N'54V-3254', 8, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (35, N'54V-3255', 8, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (36, N'54V-3256', 8, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (37, N'54V-3257', 8, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (38, N'54V-3258', 8, 4)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (40, N'55N-4221', 11, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (41, N'55N-4225', 11, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (42, N'51B-10251', 12, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (43, N'51B-10692', 12, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (44, N'51B-11037', 12, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (45, N'51B-25021', 12, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (46, N'51B-57634', 12, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (47, N'51B-90735', 12, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (48, N'51B-12302', 6, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (50, N'51B-23148', 6, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (51, N'51B-81627', 6, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (52, N'51B-67512', 6, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (53, N'51A-12375', 2, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (54, N'51A-12376', 2, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (55, N'51A-12377', 2, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (56, N'51A-12378', 2, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (57, N'51A-12379', 2, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (58, N'51A-12371', 2, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (59, N'51A-12372', 2, 6)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (60, N'51A-12373', 2, 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (61, N'51A-12374', 2, 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (62, N'51A-12391', 2, 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (63, N'51A-12392', 2, 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (64, N'51A-38921', 9, 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (65, N'51A-38922', 9, 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (66, N'51A-38923', 9, 5)
INSERT [dbo].[Coach] ([CoachID], [NumberPlate], [RouteID], [CoachTypeID]) VALUES (67, N'51A-38924', 9, 5)
SET IDENTITY_INSERT [dbo].[Coach] OFF
/****** Object:  Table [dbo].[Station]    Script Date: 03/27/2014 23:04:52 ******/
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
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (1, N'SG.Lê Hồng Phong', N'233 Lê Hồng Phong, F4, Q.5, TP Hồ Chí Minh', 1, N'(08) 38 309 309', N'Phòng vé Lê Hồng Phong', N'10.7584848, 106.6777557', 1, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (2, N'Tạ Uyên - VT', N'03 Tạ Uyên, Vũng Tàu', 1, N'0643 52 53 54', N'Phòng vé VT1', N'10.3491804, 107.0855695', 5, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (3, N'Bến xe liên tỉnh Đà Lạt', N'01 Tô Hiến Thành, F3, Đà Lạt', 1, N'0633 58 58 58', N'Phòng vé LĐ1', N'11.9264949, 108.4460601', 4, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (4, N'SG2.Xa Lộ Hà Nội', N'798A Xa Lộ Hà Nội, Q9, Hồ Chí Minh', 1, N'(08) 3897 3894', N'Phòng vé: Xa Lộ Hà Nội', N'10.8512267, 106.7767284', 1, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (6, N'Bến xe Phía Nam Nha Trang', N'Số 58, đường 23/10, Xã Vĩnh Hiệp , Nha Trang, Tỉnh Khánh Hòa ', 1, N'(058) 3562626', N'VP Bến xe Phía Nam Nha Trang', N'12.2527081, 109.1627343', 3, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (7, N'Bến xe Cao Lãnh', N'71 Nguyễn Văn Trỗi, Tp Cao Lãnh, Đồng Tháp', 1, N'(067)3876850', N'VP Bến xe Cao Lãnh', N'10.4560583, 105.6381782', 6, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (8, N'Suối Linh - Biên Hòa', N'D9 - Tổ 2 - KP.4 - P. Long Bình - Đồng Nai', 1, N'(0618)890639', N'Phòng vé Suối Linh - Đồng Nai', N'10.9413981, 106.9004472', 7, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (9, N'SG.Bến xe Miền Tây', N'395 Kinh Dương Vương, phường An Lạc, Quận Bình Tân, Hồ Chí Minh', 1, N'(08) 38776594', N'VP Bến xe Miền Tây', N'10.740993, 106.617980', 1, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (10, N'SG.Bến xe Miền Đông', N'367 Đinh Bộ Lĩnh, 26, Bình Thạnh, Hồ Chí Minh', 1, N'08.38 309 309 ', N'VP Bến xe Miền Đông', N'10.815213, 106.710674', 1, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (11, N'Bến xe Châu Đốc', N'89 Phan Văn Vàng, Phường Châu Phú A, Châu Đốc, Tỉnh An Giang', 1, N'( 076) 3565888 ', N'VP Bến xe Châu Đốc', N'10.7097216, 105.1184159', 8, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (12, N'Bến xe Gò Công', N'Đồng Khởi - Phường 4 - Gò Công - Tiền Giang', 1, N'(073)3841278', N'VP Bến xe Gò Công', N'10.360669, 106.6628406', 9, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (13, N'Rạch Giá', N'260A Nguyễn Bỉnh Khiêm, Phường Vĩnh Quang, Rạch Giá, Tỉnh Kiên Giang ', 1, N'(077) 3691691', N'VP Rạch Giá', N'10.021507, 105.0910974', 13, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (14, N'Bến Xe Vị Thanh', N'Trần Hưng Đạo, Phường 5, Vị Thanh, Tỉnh Hậu Giang', 1, N'(0711) 3583583', N'VP Bến Xe Vị Thanh', N'9.786458300000001, 105.4703164', 14, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (15, N'Bến xe Hùng Vương - Cần Thơ', N'01 Hùng Vương, Thới Bình, Ninh Kiều, TP.Cần Thơ ', 1, N'(0710)3769768', N'VP Bến xe Hùng Vương', N'10.0449994, 105.7799216', 11, NULL)
INSERT [dbo].[Station] ([StationID], [StationName], [StationLocation], [BreakTime], [StationPhone], [Description], [Coordinate], [ProvinceID], [AvgRatingLevel]) VALUES (16, N'Bến Xe Trung Tâm Đà Nẵng', N'201 Tôn Đức Thắng, Phường Hòa Minh, Liên Chiểu, TP.Đà Nẵng', 1, N'(0511) 3786 786', N'VP Bến Xe Trung Tâm Đà Nẵng', N'16.051571, 108.214897', 12, NULL)
SET IDENTITY_INSERT [dbo].[Station] OFF
/****** Object:  Table [dbo].[UserInfo]    Script Date: 03/27/2014 23:04:52 ******/
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
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address]) VALUES (N'billgates', NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address]) VALUES (N'long', N'long', N'vu', N'phan đăng lưu')
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address]) VALUES (N'newstaff', NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address]) VALUES (N'vinhnt', NULL, NULL, NULL)
INSERT [dbo].[UserInfo] ([Username], [Firstname], [Lastname], [Address]) VALUES (N'VuHoangLong', N'Long', N'Vũ', N'hehe')
/****** Object:  Table [dbo].[Route]    Script Date: 03/27/2014 23:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Route](
	[RouteID] [int] IDENTITY(1,1) NOT NULL,
	[RouteName] [nvarchar](50) NOT NULL,
	[StartPoint] [int] NOT NULL,
	[EndPoint] [int] NOT NULL,
	[Duration] [float] NULL,
	[Distance] [float] NULL,
	[Container] [float] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Route] PRIMARY KEY CLUSTERED 
(
	[RouteID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Route] ON
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (1, N'Sài Gòn - Vũng Tàu', 1, 2, 2, 125, 0.8, 200)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (2, N'Sài Gòn - Đà Lạt', 1, 3, 2, 308, 0.55, 300)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (3, N'Sài Gòn - Cao Lãnh', 9, 7, 2, 163, 0.67, 400)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (4, N'Sài Gòn - Sa Đéc', 9, 12, 2, 143, 0.8, 500)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (5, N'Sài Gòn - Rạch Giá', 9, 13, 2, 279, 0.55, 600)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (6, N'Sài Gòn - Vị Thanh', 9, 14, 2, 240, 0.67, 700)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (7, N'Nha Trang - Sài Gòn', 6, 10, 2, 441, 0.3, 800)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (8, N'Cần Thơ - Sài Gòn', 15, 9, 2, 167, 0.67, 900)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (10, N'Đà Lạt - Sài Gòn', 3, 1, 2, 293, 0.55, 250)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (11, N'Rạch Giá - Sài Gòn', 13, 9, 2, 279, 0.55, 350)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (12, N'Sài Gòn - Nha Trang', 9, 6, 2, 488, 0.3, 450)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (13, N'Nha Trang - Đà Nẵng', 6, 16, 2, 521, 0.2, 550)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (14, N'Sài Gòn - Cao Lãnh', 10, 7, 2, 163, 0.67, 650)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (16, N'Vũng Tàu - Nha Trang', 2, 6, 2, 513, 0.2, 750)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (18, N'Nha Trang - Vũng Tàu', 6, 2, 2, 513, 0.2, 950)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (19, N'Sa Đéc - Sài Gòn', 12, 9, 2, 143, 0.8, 220)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (20, N'Cao Lãnh - Sài Gòn', 7, 9, 2, 163, 0.67, 320)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (21, N'Vị Thanh - Sài Gòn', 14, 9, 2, 240, 0.67, 420)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (22, N'Sài Gòn - Cần Thơ', 9, 15, 2, 168, 0.67, 520)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (23, N'Sài Gòn - Nha Trang', 10, 6, 2, 488, 0.3, 620)
INSERT [dbo].[Route] ([RouteID], [RouteName], [StartPoint], [EndPoint], [Duration], [Distance], [Container], [Price]) VALUES (24, N'Đà Nẵng - Nha Trang', 16, 6, 2, 521, 0.2, 720)
SET IDENTITY_INSERT [dbo].[Route] OFF
/****** Object:  Table [dbo].[Request]    Script Date: 03/27/2014 23:04:52 ******/
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
	[ArrivedDate] [date] NULL,
	[Payment] [bit] NULL,
	[RequestCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Request] ON
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [Description], [FromLocation], [ToLocation], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode]) VALUES (15, N'billgates', 1, 2, N'1.1 - 5', N'100.1 - 500', CAST(0x56380B00 AS Date), N'Hehe', 7, 9, N'Cao Lãnh', N'BXMT', N'0906425539', N'Lý Tiểu Long', N'01628468737', 1, N'Thanh toán online', NULL, 0, N'sad76&&&^')
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [Description], [FromLocation], [ToLocation], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode]) VALUES (17, N'billgates', 1, 2, N'1.1 - 5', N'500 - 1000', CAST(0x56380B00 AS Date), N'Hehe', 7, 16, N'Cao Lãnh', N'Đà Nẵng', N'0906425539', N'Kiều Trọng Khánh', N'01628468737', 1, N'Thanh toán online', NULL, 0, N'^%VS*^')
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [Description], [FromLocation], [ToLocation], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode]) VALUES (18, N'customer1', 1, 2, N'1.1 - 5', N'100.1 - 500', CAST(0x56380B00 AS Date), N'Hehe', 9, 6, N'BXMT', N'Nha Trang', N'0906425539', N'Thích Quảng Đức', N'01628468737', 1, N'Thanh toán online', NULL, 0, N')*&ASC')
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [Description], [FromLocation], [ToLocation], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode]) VALUES (21, N'customer1', 1, 2, N'1.1 - 5', N'100.1 - 500', CAST(0x56380B00 AS Date), N'Hehe', 9, 16, N'BXMT', N'Đà Nẵng', N'0906425539', N'Osama Binladen', N'01628468737', 1, N'Thanh toán online', NULL, 0, N'098CA^')
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [Description], [FromLocation], [ToLocation], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode]) VALUES (22, N'longdb', 1, 2, N'1.1 - 5', N'100.1 - 500', CAST(0x56380B00 AS Date), N'Hehe', 6, 16, N'Nha Trang', N'Đà Nẵng', N'0906425539', N'Nguyễn Trọng Tài', N'01628468737', 1, N'Thanh toán online', NULL, 0, N'BEc@8#j')
INSERT [dbo].[Request] ([RequestID], [Username], [DeliveryStatusID], [FeeID], [EstimateWeight], [EstimateVolume], [DateRequest], [Description], [FromLocation], [ToLocation], [SenderAddress], [ReceiverAddress], [SenderPhone], [ReceiverName], [ReceiverPhone], [Type], [TypeOfPayment], [ArrivedDate], [Payment], [RequestCode]) VALUES (27, N'longdb', 1, 2, N'1.1 - 5', N'100.1 - 500', CAST(0x56380B00 AS Date), N'Hehe', 6, 15, N'Nha Trang', N'Cần Thơ', N'0906425539', N'Phan Đình Tùng', N'01628468737', 1, N'Thanh toán online', NULL, 0, N'fvs*^VD')
SET IDENTITY_INSERT [dbo].[Request] OFF
/****** Object:  Table [dbo].[Rating]    Script Date: 03/27/2014 23:04:52 ******/
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
/****** Object:  Table [dbo].[Comment]    Script Date: 03/27/2014 23:04:52 ******/
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
/****** Object:  Table [dbo].[Invoice]    Script Date: 03/27/2014 23:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[Weight] [float] NULL,
	[Volume] [float] NULL,
	[Price] [float] NOT NULL,
	[RequestID] [int] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (10, 1, 1, 1, 15)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (11, 1, 1, 1, 17)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (12, 1, 1, 1, 18)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (13, 1, 1, 1, 21)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (14, 1, 1, 1, 22)
INSERT [dbo].[Invoice] ([InvoiceID], [Weight], [Volume], [Price], [RequestID]) VALUES (15, 1, 1, 1, 27)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
/****** Object:  Table [dbo].[Schedule]    Script Date: 03/27/2014 23:04:52 ******/
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
INSERT [dbo].[Schedule] ([ScheduleID], [RouteID], [CoachID], [EstimateDepartureTime], [EstimateArrivalTime], [EstimateVolume]) VALUES (15, 10, 4, CAST(0x0088770000000000 AS Time), CAST(0x00C8AF0000000000 AS Time), NULL)
SET IDENTITY_INSERT [dbo].[Schedule] OFF
/****** Object:  Table [dbo].[Trip]    Script Date: 03/27/2014 23:04:52 ******/
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
	[IsActive] [bit] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Trip] PRIMARY KEY CLUSTERED 
(
	[TripID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Trip] ON
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [Date], [RouteID], [CoachID], [ScheduleID], [IsActive], [Status]) VALUES (1, CAST(0x0070620000000000 AS Time), CAST(0x00907E0000000000 AS Time), NULL, NULL, 3015, 200, NULL, CAST(0x5B380B00 AS Date), 20, 2, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [Date], [RouteID], [CoachID], [ScheduleID], [IsActive], [Status]) VALUES (2, CAST(0x0080700000000000 AS Time), CAST(0x00A08C0000000000 AS Time), NULL, NULL, 3015, 600, NULL, CAST(0x5B380B00 AS Date), 20, 2, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [Date], [RouteID], [CoachID], [ScheduleID], [IsActive], [Status]) VALUES (54, CAST(0x00A08C0000000000 AS Time), CAST(0x00C0A80000000000 AS Time), NULL, NULL, 1350, 200, NULL, CAST(0x5B380B00 AS Date), 12, 4, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [Date], [RouteID], [CoachID], [ScheduleID], [IsActive], [Status]) VALUES (56, CAST(0x00B09A0000000000 AS Time), CAST(0x00D0B60000000000 AS Time), NULL, NULL, 1350, 200, NULL, CAST(0x5B380B00 AS Date), 12, 4, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [Date], [RouteID], [CoachID], [ScheduleID], [IsActive], [Status]) VALUES (57, CAST(0x00D0B60000000000 AS Time), CAST(0x00F0D20000000000 AS Time), NULL, NULL, 900, 200, NULL, CAST(0x5B380B00 AS Date), 13, 2, 15, 1, N'Chưa chạy')
INSERT [dbo].[Trip] ([TripID], [EstimateDepartureTime], [EstimateArrivalTime], [RealDepartureTime], [RealArrivalTime], [EstimateVolume], [AvailableVolume], [RealVolume], [Date], [RouteID], [CoachID], [ScheduleID], [IsActive], [Status]) VALUES (60, CAST(0x00E0C40000000000 AS Time), CAST(0x0000E10000000000 AS Time), NULL, NULL, 900, 200, NULL, CAST(0x5B380B00 AS Date), 13, 2, 15, 1, N'Chưa chạy')
SET IDENTITY_INSERT [dbo].[Trip] OFF
/****** Object:  Table [dbo].[CoachSchedule]    Script Date: 03/27/2014 23:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoachSchedule](
	[CoachID] [int] NOT NULL,
	[ScheduleID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assigning]    Script Date: 03/27/2014 23:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assigning](
	[TripID] [int] NOT NULL,
	[RequestID] [int] NOT NULL,
	[IndicateOrder] [int] NULL,
	[AssignedDate] [date] NULL,
 CONSTRAINT [PK_Assigning] PRIMARY KEY CLUSTERED 
(
	[TripID] ASC,
	[RequestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Assigning] ([TripID], [RequestID], [IndicateOrder], [AssignedDate]) VALUES (1, 15, 1, CAST(0x56380B00 AS Date))
INSERT [dbo].[Assigning] ([TripID], [RequestID], [IndicateOrder], [AssignedDate]) VALUES (1, 17, 1, CAST(0x56380B00 AS Date))
INSERT [dbo].[Assigning] ([TripID], [RequestID], [IndicateOrder], [AssignedDate]) VALUES (1, 27, 1, CAST(0x56380B00 AS Date))
INSERT [dbo].[Assigning] ([TripID], [RequestID], [IndicateOrder], [AssignedDate]) VALUES (54, 17, 2, CAST(0x56380B00 AS Date))
INSERT [dbo].[Assigning] ([TripID], [RequestID], [IndicateOrder], [AssignedDate]) VALUES (54, 18, 1, CAST(0x56380B00 AS Date))
INSERT [dbo].[Assigning] ([TripID], [RequestID], [IndicateOrder], [AssignedDate]) VALUES (54, 21, 1, CAST(0x56380B00 AS Date))
INSERT [dbo].[Assigning] ([TripID], [RequestID], [IndicateOrder], [AssignedDate]) VALUES (57, 17, 3, CAST(0x56380B00 AS Date))
INSERT [dbo].[Assigning] ([TripID], [RequestID], [IndicateOrder], [AssignedDate]) VALUES (57, 21, 2, CAST(0x56380B00 AS Date))
INSERT [dbo].[Assigning] ([TripID], [RequestID], [IndicateOrder], [AssignedDate]) VALUES (57, 22, 1, CAST(0x56380B00 AS Date))
/****** Object:  ForeignKey [FK_Assigning_Request]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Assigning]  WITH CHECK ADD  CONSTRAINT [FK_Assigning_Request] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Assigning] CHECK CONSTRAINT [FK_Assigning_Request]
GO
/****** Object:  ForeignKey [FK_Assigning_Trip]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Assigning]  WITH CHECK ADD  CONSTRAINT [FK_Assigning_Trip] FOREIGN KEY([TripID])
REFERENCES [dbo].[Trip] ([TripID])
GO
ALTER TABLE [dbo].[Assigning] CHECK CONSTRAINT [FK_Assigning_Trip]
GO
/****** Object:  ForeignKey [FK_Coach_CoachType]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Coach]  WITH CHECK ADD  CONSTRAINT [FK_Coach_CoachType] FOREIGN KEY([CoachTypeID])
REFERENCES [dbo].[CoachType] ([CoachTypeID])
GO
ALTER TABLE [dbo].[Coach] CHECK CONSTRAINT [FK_Coach_CoachType]
GO
/****** Object:  ForeignKey [FK_CoachSchedule_Coach]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[CoachSchedule]  WITH CHECK ADD  CONSTRAINT [FK_CoachSchedule_Coach] FOREIGN KEY([CoachID])
REFERENCES [dbo].[Coach] ([CoachID])
GO
ALTER TABLE [dbo].[CoachSchedule] CHECK CONSTRAINT [FK_CoachSchedule_Coach]
GO
/****** Object:  ForeignKey [FK_CoachSchedule_Schedule]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[CoachSchedule]  WITH CHECK ADD  CONSTRAINT [FK_CoachSchedule_Schedule] FOREIGN KEY([ScheduleID])
REFERENCES [dbo].[Schedule] ([ScheduleID])
GO
ALTER TABLE [dbo].[CoachSchedule] CHECK CONSTRAINT [FK_CoachSchedule_Schedule]
GO
/****** Object:  ForeignKey [FK_Comment_Account]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Account]
GO
/****** Object:  ForeignKey [FK_Comment_Station]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Station] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Station]
GO
/****** Object:  ForeignKey [FK_Invoice_Request]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Request] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Request]
GO
/****** Object:  ForeignKey [FK_Rating_Account]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Account]
GO
/****** Object:  ForeignKey [FK_Rating_Station]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Station] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Station]
GO
/****** Object:  ForeignKey [FK_Request_Account]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Account]
GO
/****** Object:  ForeignKey [FK_Request_DeliveryStatus]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_DeliveryStatus] FOREIGN KEY([DeliveryStatusID])
REFERENCES [dbo].[DeliveryStatus] ([DeliveryStatusID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_DeliveryStatus]
GO
/****** Object:  ForeignKey [FK_Request_ManageFee]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_ManageFee] FOREIGN KEY([FeeID])
REFERENCES [dbo].[ManageFee] ([FeeID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_ManageFee]
GO
/****** Object:  ForeignKey [FK_Request_Station]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Station] FOREIGN KEY([FromLocation])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Station]
GO
/****** Object:  ForeignKey [FK_Request_Station1]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Station1] FOREIGN KEY([ToLocation])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Station1]
GO
/****** Object:  ForeignKey [FK_EndStation]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Route]  WITH CHECK ADD  CONSTRAINT [FK_EndStation] FOREIGN KEY([EndPoint])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Route] CHECK CONSTRAINT [FK_EndStation]
GO
/****** Object:  ForeignKey [FK_StartStation]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Route]  WITH CHECK ADD  CONSTRAINT [FK_StartStation] FOREIGN KEY([StartPoint])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Route] CHECK CONSTRAINT [FK_StartStation]
GO
/****** Object:  ForeignKey [FK_Schedule_Coach]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Coach] FOREIGN KEY([CoachID])
REFERENCES [dbo].[Coach] ([CoachID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Coach]
GO
/****** Object:  ForeignKey [FK_Schedule_Route]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Route] FOREIGN KEY([RouteID])
REFERENCES [dbo].[Route] ([RouteID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Route]
GO
/****** Object:  ForeignKey [FK_Station_Province]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Station]  WITH CHECK ADD  CONSTRAINT [FK_Station_Province] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[Station] CHECK CONSTRAINT [FK_Station_Province]
GO
/****** Object:  ForeignKey [FK_Trip_Coach]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Coach] FOREIGN KEY([CoachID])
REFERENCES [dbo].[Coach] ([CoachID])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_Coach]
GO
/****** Object:  ForeignKey [FK_Trip_Route]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Route] FOREIGN KEY([RouteID])
REFERENCES [dbo].[Route] ([RouteID])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_Route]
GO
/****** Object:  ForeignKey [FK_Trip_Schedule]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Schedule] FOREIGN KEY([ScheduleID])
REFERENCES [dbo].[Schedule] ([ScheduleID])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_Schedule]
GO
/****** Object:  ForeignKey [FK_UserInfo_Account]    Script Date: 03/27/2014 23:04:52 ******/
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserInfo_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [FK_UserInfo_Account]
GO
