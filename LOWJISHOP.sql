USE [LOWJISHOP]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 12/6/2019 5:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[mahoadon] [int] NOT NULL,
	[machitietsanpham] [int] NOT NULL,
	[soluong] [int] NULL,
	[giatien] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[mahoadon] ASC,
	[machitietsanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETKHUYENMAI]    Script Date: 12/6/2019 5:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETKHUYENMAI](
	[makhuyenmai] [int] NOT NULL,
	[masanpham] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[makhuyenmai] ASC,
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETSANPHAM]    Script Date: 12/6/2019 5:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETSANPHAM](
	[machitietsanpham] [int] IDENTITY(1,1) NOT NULL,
	[masanpham] [int] NULL,
	[masize] [int] NULL,
	[mamau] [int] NULL,
	[soluong] [int] NULL,
	[ngaynhap] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[machitietsanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 12/6/2019 5:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[machucvu] [int] IDENTITY(1,1) NOT NULL,
	[tenchucvu] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[machucvu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUCSANPHAM]    Script Date: 12/6/2019 5:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUCSANPHAM](
	[madanhmuc] [int] IDENTITY(1,1) NOT NULL,
	[tendanhmuc] [nvarchar](100) NULL,
	[hinhdanhmuc] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[madanhmuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/6/2019 5:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[mahoadon] [int] IDENTITY(1,1) NOT NULL,
	[tenkhachhang] [nvarchar](100) NULL,
	[sodt] [char](12) NULL,
	[diachigiaohang] [nvarchar](200) NULL,
	[tinhtrang] [bit] NULL,
	[ngaylap] [varchar](50) NULL,
	[hinhthucgiaohang] [varchar](45) NULL,
	[ghichu] [text] NULL,
 CONSTRAINT [PK__HOADON__8C708E0C0EBA8256] PRIMARY KEY CLUSTERED 
(
	[mahoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 12/6/2019 5:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[makhuyenmai] [int] IDENTITY(1,1) NOT NULL,
	[tenkhuyenmai] [nvarchar](200) NULL,
	[thoigianbatdau] [nvarchar](50) NULL,
	[thoigianketthuc] [nvarchar](50) NULL,
	[mota] [text] NULL,
	[hinhkhuyenmai] [text] NULL,
	[giagiam] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[makhuyenmai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAUSANPHAM]    Script Date: 12/6/2019 5:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAUSANPHAM](
	[mamau] [int] IDENTITY(1,1) NOT NULL,
	[tenmau] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[mamau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/6/2019 5:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[manhanvien] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](30) NULL,
	[diachi] [nvarchar](200) NULL,
	[gioitinh] [bit] NULL,
	[cmnd] [char](14) NULL,
	[machucvu] [int] NULL,
	[email] [varchar](50) NULL,
	[tendangnhap] [varchar](50) NULL,
	[matkhau] [varchar](50) NULL,
 CONSTRAINT [PK__NHANVIEN__75A28B52B2454282] PRIMARY KEY CLUSTERED 
(
	[manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/6/2019 5:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[masanpham] [int] IDENTITY(1,1) NOT NULL,
	[madanhmuc] [int] NULL,
	[tensanpham] [nvarchar](100) NULL,
	[giatien] [varchar](50) NULL,
	[mota] [nvarchar](max) NULL,
	[hinhsanpham] [text] NULL,
	[gianhcho] [varchar](50) NULL,
 CONSTRAINT [PK__SANPHAM__8F121B2FD4036FE5] PRIMARY KEY CLUSTERED 
(
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIZESANPHAM]    Script Date: 12/6/2019 5:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIZESANPHAM](
	[masize] [int] IDENTITY(1,1) NOT NULL,
	[size] [nvarchar](50) NULL,
 CONSTRAINT [PK__SIZESANP__DAD65C73496E2CA3] PRIMARY KEY CLUSTERED 
(
	[masize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (15, 1, 1, N'125.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (15, 3, 1, N'125.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (15, 71, 1, N'125.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (15, 72, 1, N'125.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (19, 4, 1, N'300.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (19, 5, 1, N'300.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (19, 6, 1, N'300.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (20, 4, 12, N'300.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (20, 5, 1, N'300.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (20, 6, 1, N'300.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (21, 4, 1, N'300.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (21, 5, 1, N'300.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (21, 6, 1, N'300.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (22, 1, 4, N'125.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (22, 3, 1, N'125.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (22, 72, 1, N'125.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (23, 1, 3, N'125.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (23, 4, 1, N'300.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (23, 5, 3, N'300.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (23, 71, 1, N'125.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (24, 4, 2, N'300.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (24, 5, 2, N'300.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (24, 6, 2, N'300.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (25, 1, 1, N'125.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (25, 3, 1, N'125.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (25, 71, 6, N'125.000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (25, 72, 1, N'125.000')
SET IDENTITY_INSERT [dbo].[CHITIETSANPHAM] ON 

INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (1, 1, 1, 6, 25, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (3, 1, 1, 8, 50, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (4, 2, 2, 8, 20, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (5, 2, 2, 1, 25, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (6, 2, 1, 2, 15, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (7, 3, 1, 4, 15, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (8, 3, 4, 2, 15, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (9, 3, 1, 5, 25, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (10, 4, 1, 6, 14, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (11, 4, 2, 7, 25, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (12, 4, 3, 8, 30, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (13, 5, 1, 1, 25, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (14, 5, 2, 2, 17, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (15, 5, 3, 3, 16, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (16, 6, 1, 4, 18, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (17, 6, 2, 5, 19, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (18, 6, 3, 6, 26, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (22, 8, 1, 5, 6, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (23, 8, 2, 4, 9, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (24, 8, 3, 5, 7, N'23/11/2019')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (71, 1, 1, 2, 125, NULL)
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (72, 1, 2, 4, 150, NULL)
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (73, NULL, 1, 1, 1, NULL)
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (76, NULL, 1, 2, 123, NULL)
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (77, NULL, 1, 2, 123, NULL)
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (86, NULL, 2, 2, 12, NULL)
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (87, NULL, 1, 1, 10, NULL)
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (90, 36, 1, 1, 1, NULL)
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (91, 36, 1, 3, 12, NULL)
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (96, NULL, 1, 1, 1, NULL)
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (97, NULL, 1, 5, 1123, NULL)
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (98, NULL, 1, 5, 1123, NULL)
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (99, NULL, 1, 1, 1, NULL)
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (102, 40, 1, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[CHITIETSANPHAM] OFF
SET IDENTITY_INSERT [dbo].[CHUCVU] ON 

INSERT [dbo].[CHUCVU] ([machucvu], [tenchucvu]) VALUES (1, N'Nhan Viên')
INSERT [dbo].[CHUCVU] ([machucvu], [tenchucvu]) VALUES (2, N'Admin')
INSERT [dbo].[CHUCVU] ([machucvu], [tenchucvu]) VALUES (3, N'Người Dùng')
SET IDENTITY_INSERT [dbo].[CHUCVU] OFF
SET IDENTITY_INSERT [dbo].[DANHMUCSANPHAM] ON 

INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (1, N'Áo Khoác', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (2, N'Áo Thun', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (3, N'Quần Sort', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (4, N'Đồ Kiểu', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (5, N'Áo Khoác', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (6, N'Áo Đôi', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (7, N'Áo Sơ Mi nữ', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (8, N'Quần Tây', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (10, N'Quần Jean', NULL)
SET IDENTITY_INSERT [dbo].[DANHMUCSANPHAM] OFF
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([mahoadon], [tenkhachhang], [sodt], [diachigiaohang], [tinhtrang], [ngaylap], [hinhthucgiaohang], [ghichu]) VALUES (15, N'Vo Thanh Tu', N'0326662016  ', N'Quan 9 HCM', NULL, NULL, N'NHáº¬N Táº I Cá»¬A HÃ?NG', N'Giao Nhanh')
INSERT [dbo].[HOADON] ([mahoadon], [tenkhachhang], [sodt], [diachigiaohang], [tinhtrang], [ngaylap], [hinhthucgiaohang], [ghichu]) VALUES (19, N'Nguyen Thanh Phong', N'0326662135  ', N'Quan 9 HCM', NULL, NULL, N'GIAO HÃ?NG Táº¬N NÆ I', N'Nhanh')
INSERT [dbo].[HOADON] ([mahoadon], [tenkhachhang], [sodt], [diachigiaohang], [tinhtrang], [ngaylap], [hinhthucgiaohang], [ghichu]) VALUES (20, N'Vo Thanh Tu 1', N'032666201166', N'Quan 9 HCM', NULL, NULL, N'NHáº¬N Táº I Cá»¬A HÃ?NG', N'Giao Nhanh')
INSERT [dbo].[HOADON] ([mahoadon], [tenkhachhang], [sodt], [diachigiaohang], [tinhtrang], [ngaylap], [hinhthucgiaohang], [ghichu]) VALUES (21, N'Vo Thanh Tu 2', N'03266620166 ', N'Quan 9 HCM', NULL, NULL, N'NHáº¬N Táº I Cá»¬A HÃ?NG', N'Giao Nhanh Nha')
INSERT [dbo].[HOADON] ([mahoadon], [tenkhachhang], [sodt], [diachigiaohang], [tinhtrang], [ngaylap], [hinhthucgiaohang], [ghichu]) VALUES (22, N'Vo Thanh Tu', N'0326665201  ', N'Quan 9 HCMM', NULL, NULL, N'NHáº¬N Táº I Cá»¬A HÃ?NG', N'Giao Nhanh Nha')
INSERT [dbo].[HOADON] ([mahoadon], [tenkhachhang], [sodt], [diachigiaohang], [tinhtrang], [ngaylap], [hinhthucgiaohang], [ghichu]) VALUES (23, N'Vo Thanh Tuu', N'0326662016  ', N'Quan9 HCM', NULL, NULL, N'NHáº¬N Táº I Cá»¬A HÃ?NG', N'Giao Nhanh')
INSERT [dbo].[HOADON] ([mahoadon], [tenkhachhang], [sodt], [diachigiaohang], [tinhtrang], [ngaylap], [hinhthucgiaohang], [ghichu]) VALUES (24, N'Vo Thanh Tu 123', N'0326662016  ', N'Quan 9 HCM', NULL, NULL, N'NHáº¬N Táº I Cá»¬A HÃ?NG', N'Giao Nhanh')
INSERT [dbo].[HOADON] ([mahoadon], [tenkhachhang], [sodt], [diachigiaohang], [tinhtrang], [ngaylap], [hinhthucgiaohang], [ghichu]) VALUES (25, N'VO Thanh tu', N'032666      ', N'123', NULL, NULL, N'NHáº¬N Táº I Cá»¬A HÃ?NG', N'123')
SET IDENTITY_INSERT [dbo].[HOADON] OFF
SET IDENTITY_INSERT [dbo].[MAUSANPHAM] ON 

INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (1, N'XANH DƯƠNG')
INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (2, N'XÁM')
INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (3, N'TRẮNG')
INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (4, N'HỒNG')
INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (5, N'ĐỎ')
INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (6, N'ĐEN')
INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (7, N'HỒNG')
INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (8, N'NÂU')
SET IDENTITY_INSERT [dbo].[MAUSANPHAM] OFF
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([manhanvien], [hoten], [diachi], [gioitinh], [cmnd], [machucvu], [email], [tendangnhap], [matkhau]) VALUES (1, N'Võ Thanh Tú', N'Quận 9 HCM', 1, N'230125541     ', 2, N'lowji55@gmail.com', N'lowji55', N'1234567')
INSERT [dbo].[NHANVIEN] ([manhanvien], [hoten], [diachi], [gioitinh], [cmnd], [machucvu], [email], [tendangnhap], [matkhau]) VALUES (2, N'Tú Thanh Võ', N'Quận 10 HCM', 1, N'231546541     ', 2, N'lowji33@gmail.com', N'lowji555', N'12345')
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (1, 1, N'Áo Khoác Nam No11', N'125.000', N'Áo Khoác Nam No11', N'25.jpg', N'nu')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (2, 1, N'Áo Khoác Nam No2', N'300.000', N'Chất liệu vải nỉ. Họa tiết trơn màu da bò', N'2.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (3, 1, N'Áo Khoác Nam No3', N'150.000', N'Chất liệu vải dù có viền bo sọc.', N'3.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (4, 2, N'Áo Thun No1', N'175.000', N'Chất liệu vải thun co dãn 4 chiều.', N'7.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (5, 2, N'Áo Thun No2', N'360.000', N'Chất liệu vải thun co dãn 4 chiều.', N'10.jpg', N'nu')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (6, 2, N'Áo Thun No3', N'250.000', N'Chất liệu vải thun co dãn 4 chiều.', N'22.jpg', N'nu')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (8, 3, N'Quần Sort No2', N'275.000', N'Chất liệu vải thun lạnh co dãn, mát mẻ thoải mái.', N'25.jpg', N'nu')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (17, 10, N'Quần Jeans No1', N'275.000', N'Chất liệu vải thun lạnh co dãn, mát mẻ thoải mái.', N'25.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (18, 10, N'Quần Jeans No2', N'275.000', N'Chất liệu vải thun lạnh co dãn, mát mẻ thoải mái.', N'26.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (20, 10, N'Quần Jeans No4', N'175.000', N'Chất liệu vải thun lạnh co dãn, mát mẻ thoải mái.', N'29.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (21, 10, N'Quần Jeans No5', N'300.000', N'Chất liệu vải thun lạnh co dãn, mát mẻ thoải mái.', N'28.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (36, 2, N'ao thun ', N'123456', N'ao thun dep', N't?i xu?ng.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (40, 1, N'quan quan', N'123123', N'123123', N't?i xu?ng.jpg', N'nam')
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
SET IDENTITY_INSERT [dbo].[SIZESANPHAM] ON 

INSERT [dbo].[SIZESANPHAM] ([masize], [size]) VALUES (1, N'M')
INSERT [dbo].[SIZESANPHAM] ([masize], [size]) VALUES (2, N'L')
INSERT [dbo].[SIZESANPHAM] ([masize], [size]) VALUES (3, N'XL')
INSERT [dbo].[SIZESANPHAM] ([masize], [size]) VALUES (4, N'XXL')
SET IDENTITY_INSERT [dbo].[SIZESANPHAM] OFF
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_HOADON] FOREIGN KEY([mahoadon])
REFERENCES [dbo].[HOADON] ([mahoadon])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_HOADON]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHOADON_CTSANPHAM] FOREIGN KEY([machitietsanpham])
REFERENCES [dbo].[CHITIETSANPHAM] ([machitietsanpham])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CTHOADON_CTSANPHAM]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHOADON_HOADON] FOREIGN KEY([mahoadon])
REFERENCES [dbo].[HOADON] ([mahoadon])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CTHOADON_HOADON]
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETKHUYENMAI_KHUYENMAI] FOREIGN KEY([makhuyenmai])
REFERENCES [dbo].[KHUYENMAI] ([makhuyenmai])
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI] CHECK CONSTRAINT [FK_CHITIETKHUYENMAI_KHUYENMAI]
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETKHUYENMAI_SANPHAM] FOREIGN KEY([masanpham])
REFERENCES [dbo].[SANPHAM] ([masanpham])
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI] CHECK CONSTRAINT [FK_CHITIETKHUYENMAI_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_MAUSANPHAM] FOREIGN KEY([mamau])
REFERENCES [dbo].[MAUSANPHAM] ([mamau])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK_CHITIET_MAUSANPHAM]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_SANPHAM] FOREIGN KEY([masanpham])
REFERENCES [dbo].[SANPHAM] ([masanpham])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK_CHITIET_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_SIZE] FOREIGN KEY([masize])
REFERENCES [dbo].[SIZESANPHAM] ([masize])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK_CHITIET_SIZE]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETSANPHAM_MAUSANPHAM] FOREIGN KEY([mamau])
REFERENCES [dbo].[MAUSANPHAM] ([mamau])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK_CHITIETSANPHAM_MAUSANPHAM]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETSANPHAM_SANPHAM] FOREIGN KEY([masanpham])
REFERENCES [dbo].[SANPHAM] ([masanpham])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK_CHITIETSANPHAM_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETSANPHAM_SIZESANPHAM] FOREIGN KEY([masize])
REFERENCES [dbo].[SIZESANPHAM] ([masize])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK_CHITIETSANPHAM_SIZESANPHAM]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_CHUCVU] FOREIGN KEY([machucvu])
REFERENCES [dbo].[CHUCVU] ([machucvu])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_CHUCVU]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_DANHMUC] FOREIGN KEY([madanhmuc])
REFERENCES [dbo].[DANHMUCSANPHAM] ([madanhmuc])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_DANHMUC]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_DANHMUCSANPHAM] FOREIGN KEY([madanhmuc])
REFERENCES [dbo].[DANHMUCSANPHAM] ([madanhmuc])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_DANHMUCSANPHAM]
GO
