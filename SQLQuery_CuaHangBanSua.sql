CREATE DATABASE CuaHangBanSua
GO
USE [CuaHangBanSua]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/9/2022 2:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [varchar](100) NOT NULL,
	[RoleID] [int] NOT NULL,
	[CreateDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 6/9/2022 2:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaCTDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
	[Ngaygiao] [int] NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucSP]    Script Date: 6/9/2022 2:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSP](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](200) NOT NULL,
	[AnhDM] [nvarchar](max) NULL,
	[MoTaDM] [nvarchar](500) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 6/9/2022 2:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[NgayTao] [date] NOT NULL,
	[TrangThaiHuyDon] [bit] NOT NULL,
	[ThanhToan] [bit] NOT NULL,
	[NgayThanhToan] [date] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[TongTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/9/2022 2:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](200) NOT NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[AvatarKH] [nvarchar](max) NULL,
	[Diachi] [nvarchar](500) NULL,
	[Ngaysinh] [date] NULL,
	[Phone] [int] NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[Password] [varchar](26) NOT NULL,
	[CreateDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLyShipper]    Script Date: 6/9/2022 2:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLyShipper](
	[MaShipper] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NOT NULL,
	[TenShipper] [nvarchar](100) NOT NULL,
	[NgayLayHang] [date] NOT NULL,
	[Phone] [int] NOT NULL,
	[TenCongty] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaShipper] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleAccount]    Script Date: 6/9/2022 2:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleAccount](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](12) NOT NULL,
	[Mota] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/9/2022 2:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaDM] [int] NULL,
	[TenSP] [nvarchar](200) NOT NULL,
	[AnhSP] [nvarchar](max) NOT NULL,
	[VideoSP] [nvarchar](max) NULL,
	[GiaSP] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[BestSeller] [bit] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[NgaySua] [date] NOT NULL,
	[MotaSP] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 6/9/2022 2:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[TenTT] [nvarchar](200) NOT NULL,
	[AnhTT] [nvarchar](max) NOT NULL,
	[Motangan] [nvarchar](200) NOT NULL,
	[Motadai] [nvarchar](max) NOT NULL,
	[Tacgia] [nvarchar](100) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[LoaiTin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiDH]    Script Date: 6/9/2022 2:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiDH](
	[MaTTDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NOT NULL,
	[TrangThai] [nvarchar](200) NOT NULL,
	[Mota] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (3, N'dung2001@gmail.com', 1, CAST(N'2022-05-24' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (8, N'phuong1808@gmail.com', 3, CAST(N'2022-05-05' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (11, N'dat09@gmail.com', 3, CAST(N'2022-05-23' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (12, N'hung@gmail.com', 3, CAST(N'2022-05-24' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (13, N'dungnguyen@gmail.com', 3, CAST(N'2022-06-07' AS Date))
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (9, 8, 2, 24000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (10, 8, 6, 25000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (11, 9, 2, 24000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (12, 9, 9, 39000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (13, 10, 7, 15000, 0, 1)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMucSP] ON 

INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM], [AnhDM], [MoTaDM], [TrangThai]) VALUES (1, N'Sữa Chua', N'https://www.thmilk.vn/wp-content/uploads/2019/11/ic-suachua.png', NULL, 1)
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM], [AnhDM], [MoTaDM], [TrangThai]) VALUES (2, N'Sữa Tươi Tuyệt Trùng', N'https://www.thmilk.vn/wp-content/uploads/2019/11/ic-suatietrung.png', NULL, 1)
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM], [AnhDM], [MoTaDM], [TrangThai]) VALUES (3, N'Nước Giải Khát', N'https://www.thmilk.vn/wp-content/uploads/2020/09/icon-Beverage.png', NULL, 1)
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM], [AnhDM], [MoTaDM], [TrangThai]) VALUES (4, N'Sữa Hạt', N'https://www.thmilk.vn/wp-content/uploads/2019/11/ic-suahat.png', NULL, 1)
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM], [AnhDM], [MoTaDM], [TrangThai]) VALUES (5, N'Kem', N'https://www.thmilk.vn/wp-content/uploads/2019/11/ic-kem.png', NULL, 1)
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM], [AnhDM], [MoTaDM], [TrangThai]) VALUES (6, N'Bơ, Phomat', N'https://www.thmilk.vn/wp-content/uploads/2019/11/ic-phomat.png', NULL, 1)
SET IDENTITY_INSERT [dbo].[DanhMucSP] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayTao], [TrangThaiHuyDon], [ThanhToan], [NgayThanhToan], [Note], [TongTien]) VALUES (8, 35, CAST(N'2022-06-07' AS Date), 1, 1, CAST(N'2022-06-07' AS Date), NULL, 49000)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayTao], [TrangThaiHuyDon], [ThanhToan], [NgayThanhToan], [Note], [TongTien]) VALUES (9, 35, CAST(N'2022-06-07' AS Date), 1, 1, CAST(N'2022-06-07' AS Date), NULL, 63000)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayTao], [TrangThaiHuyDon], [ThanhToan], [NgayThanhToan], [Note], [TongTien]) VALUES (10, 35, CAST(N'2022-06-07' AS Date), 1, 1, CAST(N'2022-06-07' AS Date), NULL, 15000)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate]) VALUES (9, N'Đoàn Thị Phương', N'Nữ', NULL, N'Hải Phòng', CAST(N'2001-06-03' AS Date), 444444, N'phuong1808@gmail.com', N'20012001', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate]) VALUES (12, N'Nguyễn Tiến Dũng', N'Nam', NULL, N'Phú Thọ', CAST(N'2001-06-04' AS Date), 1646358829, N'dung2001@gmail.com', N'123456', CAST(N'2022-05-23' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate]) VALUES (26, N'Nguyễn Thị Đạt', NULL, NULL, NULL, CAST(N'2001-10-23' AS Date), 346358829, N'dat09@gmail.com', N'123456', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate]) VALUES (34, N'Nguyễn Mạnh Hùng', N'Nam', NULL, N'Phú Thọ', CAST(N'2001-06-03' AS Date), 346354323, N'hung@gmail.com', N'123456', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate]) VALUES (35, N'Nguyễn Tiến Dũng', N'Nam', NULL, N'Tam Nông - Phú Thọ', CAST(N'2001-06-04' AS Date), 3333333, N'dungnguyen@gmail.com', N'123456', CAST(N'0001-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleAccount] ON 

INSERT [dbo].[RoleAccount] ([RoleID], [RoleName], [Mota]) VALUES (1, N'Admin', N'Quản Lý')
INSERT [dbo].[RoleAccount] ([RoleID], [RoleName], [Mota]) VALUES (2, N'Staff', N'Nhân Viên')
INSERT [dbo].[RoleAccount] ([RoleID], [RoleName], [Mota]) VALUES (3, N'User', N'Người dùng')
SET IDENTITY_INSERT [dbo].[RoleAccount] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP]) VALUES (2, 2, N'Sữa Tươi Tiệt Trùng Có Đường TH true MILK 180 ml', N'https://www.thmilk.vn/wp-content/uploads/2019/11/UHT-180-ID-800x800.png', NULL, 24000, 1, 38, 0, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-11' AS Date), N'Hoàn toàn từ sữa tươi sạch nguyên chất của Trang trại TH')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP]) VALUES (3, 2, N'Sữa Tươi Tiệt Trùng Nguyên Chất TH true MILK 180 ml', N'https://www.thmilk.vn/wp-content/uploads/2019/11/UHT-180-NC-800x800.png', NULL, 30000, 1, 38, 0, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-11' AS Date), N'Hoàn toàn từ sữa tươi sạch nguyên chất của Trang trại TH')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP]) VALUES (4, 2, N'Sữa Tươi Tiệt Trùng TH true MILK Sô Cô La Nguyên Chất 180 ml', N'https://www.thmilk.vn/wp-content/uploads/2019/11/UHT-180-socola-800x800.png', NULL, 35000, 1, 46, 0, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-11' AS Date), N'Hoàn toàn từ sữa tươi sạch nguyên chất của Trang trại TH')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP]) VALUES (5, 2, N'Sữa Tươi Tiệt Trùng TH true MILK Hương Dâu Tự Nhiên 180 ml', N'https://www.thmilk.vn/wp-content/uploads/2019/11/UHT-180-dau-800x800.png', NULL, 25000, 1, 25, 0, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-11' AS Date), N'Hoàn toàn từ sữa tươi sạch nguyên chất của Trang trại TH')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP]) VALUES (6, 1, N'Sữa Chua Ăn TH true YOGURT Ít Đường', N'https://www.thmilk.vn/wp-content/uploads/2021/04/SCA-it-duong-loc-800x800.png', NULL, 25000, 1, 22, 1, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-11' AS Date), N'Hoàn toàn từ sữa tươi sạch nguyên chất của Trang trại TH')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP]) VALUES (7, 3, N'Trà Xanh Vị Chanh Tự Nhiên – TH true TEA', N'https://www.thmilk.vn/wp-content/uploads/2021/08/TEA-tra-xanh-800.png', NULL, 15000, 1, 11, 0, CAST(N'2022-05-22' AS Date), CAST(N'2022-05-11' AS Date), N'Hoàn toàn từ sữa tươi sạch nguyên chất của Trang trại TH')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP]) VALUES (8, 1, N'Sữa Chua Ăn TH true YOGURT Dừa Tự Nhiên', N'https://www.thmilk.vn/wp-content/uploads/2019/11/SCA-dua-800x800.png', NULL, 15000, 1, 12, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-15' AS Date), N'Hoàn toàn từ sữa tươi sạch nguyên chất của Trang trại TH')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP]) VALUES (9, 6, N'Phomat Que TH true CHEESE Mozzarella', N'https://www.thmilk.vn/wp-content/uploads/2019/11/Cheese-mat-truoc_800x800.png', NULL, 39000, 1, 11, 1, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-11' AS Date), N'Phomat Tự Nhiên được làm hoàn toàn từ sữa tươi sạch nguyên chất của trang trại TH, bằng công nghệ hiện đại của Italia và Thụy Sĩ, mang lại hương vị đặc trưng của Phomat Mozzarella Italia. Cần 10 lít sữa tươi để sản xuất ra 1 kg phomat, đây là nguồn dinh dưỡng hoàn hảo, cung cấp Năng lượng và Canxi dồi dào cho cơ thể. Sản phẩm ngon khi ăn trực tiếp hoặc dùng chế biến nhiều món ăn tuyệt hảo.')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP]) VALUES (10, 1, N'1/7 Lốc 4 hộp sữa chua Vinamilk không đường 100g', N'https://www.thmilk.vn/wp-content/uploads/2019/11/SCA-nhadam-800x800.png', NULL, 15000, 1, 12, 0, CAST(N'2022-05-27' AS Date), CAST(N'2022-05-27' AS Date), N'1/7
Lốc 4 hộp sữa chua Vinamilk không đường 100g')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP]) VALUES (11, 2, N'Sữa Tươi Tiệt Trùng Ít Đường TH true MILK 220 ml', N'https://www.thmilk.vn/wp-content/uploads/2019/11/UHT-FINO-ID-800x800.png', NULL, 7000, 1, 30, 1, CAST(N'2022-05-28' AS Date), CAST(N'2022-05-28' AS Date), N'Hoàn toàn từ sữa tươi sạch trang trại, sạch, nguyên chất của Trang trại TH
Được sản xuất theo một quy trình sạch, khép kín từ đồng cỏ đến bàn ăn')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP]) VALUES (12, 2, N'Sữa Tươi Bổ sung Ngũ Cốc TH true MILK LIGHT MEAL 180ml', N'https://www.thmilk.vn/wp-content/uploads/2021/11/Light-Meal-loc-800x800-1.png', NULL, 35000, 1, 34, 1, CAST(N'2022-05-28' AS Date), CAST(N'2022-05-28' AS Date), N'Kết hợp dưỡng chất của sữa tươi sạch nguyên chất của trang trại TH và dinh dưỡng từ thực vật (yến mạch, óc chó, mắc ca)')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP]) VALUES (13, 2, N'Sữa Tươi Hữu Cơ TH true MILK Organic 500 ml', N'https://www.thmilk.vn/wp-content/uploads/2019/11/UHT-Organic-800x800-1.png', NULL, 30000, 1, 43, 1, CAST(N'2022-05-28' AS Date), CAST(N'2022-05-28' AS Date), N'Được sản xuất theo một quy trình sạch, khép kín từ đồng cỏ đến bàn ăn')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([MaTT], [TenTT], [AnhTT], [Motangan], [Motadai], [Tacgia], [CreateDate], [LoaiTin]) VALUES (11, N'Tiết lộ sản phẩm mới nhất của của hàng sữa Dũng Phương.', N'https://www.youtube.com/watch?v=JkrHUi3BXzE', N'Nếu bạn có hai hoặc nhiều hơn các phần tử block-level cần được căn giữa trong một hàng. Tốt hơn hết bạn nên thay đổi cách chúng display sang inline-block.', N'Nếu bạn có hai hoặc nhiều hơn các phần tử block-level cần được căn giữa trong một hàng. Tốt hơn hết bạn nên thay đổi cách chúng display sang inline-block.', N'Youtube', CAST(N'0001-01-01' AS Date), 1)
INSERT [dbo].[TinTuc] ([MaTT], [TenTT], [AnhTT], [Motangan], [Motadai], [Tacgia], [CreateDate], [LoaiTin]) VALUES (12, N'Quy định về hạn mức khuyến mại và giảm giá', N'http://media3.scdn.vn/img3/2019/10_17/xuPtEy.png', N'Cụ thể, từ ngày 21/10/2019, mức khuyến mại của tất cả sản phẩm đăng bán tại Sendo.vn không vượt mức 45%. ', N'Theo đó, Quý Shop vui lòng kiểm tra các sản phẩm thuộc gian hàng, thực hiện điều chỉnh các sản phẩm đang có mức giảm giá cao hơn 45% về mức theo đúng quy định. 

Sau 09:00 sáng ngày 21/10/2019, các sản phẩm có mức giảm giá trên mức quy định sẽ được hệ thống Sendo tự động điều chỉnh giá trước khuyến mãi của sản phẩm (giá sau khuyến mãi không đổi) để đảm bảo mức 45%.', N'Nguyễn Dũng', CAST(N'2022-05-22' AS Date), 0)
INSERT [dbo].[TinTuc] ([MaTT], [TenTT], [AnhTT], [Motangan], [Motadai], [Tacgia], [CreateDate], [LoaiTin]) VALUES (13, N'Có thể bạn chưa biết về những kinh nghiệm này khi mua sắm online !', N'data:image/jpeg;base64,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', N'SUNO.vn
Kỹ năng bán hàng - Thủ thuật cơ bản để chốt sale hiệu quả', N'SUNO.vn
Kỹ năng bán hàng - Thủ thuật cơ bản để chốt sale hiệu quả
', N'Nguyễn Dũng', CAST(N'0001-01-01' AS Date), 0)
INSERT [dbo].[TinTuc] ([MaTT], [TenTT], [AnhTT], [Motangan], [Motadai], [Tacgia], [CreateDate], [LoaiTin]) VALUES (14, N'Quy định về hạn mức khuyến mại và giảm giá', N'http://media3.scdn.vn/img3/2019/10_17/xuPtEy.png', N'SUNO.vn
Kỹ năng bán hàng - Thủ thuật cơ bản để chốt sale hiệu quả', N'SUNO.vn
Kỹ năng bán hàng - Thủ thuật cơ bản để chốt sale hiệu quả', N'Nguyễn Dũng', CAST(N'2022-05-24' AS Date), 0)
INSERT [dbo].[TinTuc] ([MaTT], [TenTT], [AnhTT], [Motangan], [Motadai], [Tacgia], [CreateDate], [LoaiTin]) VALUES (15, N'Để tải lại trang hiện tại, ta truy cập vào phương thức reload() của đối tượng location.', N'data:image/png;base64,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', N'Để tải lại trang hiện tại, ta truy cập vào phương thức reload() của đối tượng location.', N'Để tải lại trang hiện tại, ta truy cập vào phương thức reload() của đối tượng location.', N'Nguyễn Dũng', CAST(N'2022-05-26' AS Date), 0)
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[RoleAccount] ([RoleID])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[QuanLyShipper]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMucSP] ([MaDM])
GO
ALTER TABLE [dbo].[TrangThaiDH]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
USE [master]
GO
ALTER DATABASE [CuaHangBanSua] SET  READ_WRITE 
GO
