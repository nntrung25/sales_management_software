USE [master]
GO
/****** Object:  Database [QLBH_tech]    Script Date: 25/5/2022 10:34:49 AM ******/
CREATE DATABASE [QLBH_tech]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBH_tech', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLBH_tech.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBH_tech_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLBH_tech_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLBH_tech] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBH_tech].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBH_tech] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBH_tech] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBH_tech] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBH_tech] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBH_tech] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBH_tech] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBH_tech] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBH_tech] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBH_tech] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBH_tech] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBH_tech] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBH_tech] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBH_tech] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBH_tech] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBH_tech] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBH_tech] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBH_tech] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBH_tech] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBH_tech] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBH_tech] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBH_tech] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBH_tech] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBH_tech] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBH_tech] SET  MULTI_USER 
GO
ALTER DATABASE [QLBH_tech] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBH_tech] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBH_tech] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBH_tech] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBH_tech] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBH_tech] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLBH_tech', N'ON'
GO
ALTER DATABASE [QLBH_tech] SET QUERY_STORE = OFF
GO
USE [QLBH_tech]
GO
/****** Object:  Table [dbo].[BoThongSo]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoThongSo](
	[MaLSP] [nvarchar](50) NOT NULL,
	[MaTS] [nvarchar](50) NULL,
 CONSTRAINT [PK_BoThongSo] PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaSP] [nvarchar](50) NOT NULL,
	[DonGia] [money] NULL,
	[GiamGia] [real] NULL,
	[SoLuong] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietThongSoKyThuat]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietThongSoKyThuat](
	[MaSP] [nvarchar](50) NOT NULL,
	[MaTS] [nvarchar](50) NULL,
	[GiaTri] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChiTietThongSoKyThuat] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
	[NgayDatHang] [datetime] NULL,
	[NgayGiaoHang] [datetime] NULL,
	[MaShipper] [nvarchar](50) NULL,
	[DiaChiGiao] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[MaKho] [nvarchar](50) NOT NULL,
	[MaSP] [nvarchar](50) NULL,
	[SoLuongTonKho] [int] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Kho] PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLSP] [nvarchar](50) NOT NULL,
	[TenLSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](50) NOT NULL,
	[TenCongTy] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[NgayThue] [datetime] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](50) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[DonGia] [nvarchar](50) NULL,
	[MaNCC] [nvarchar](50) NULL,
	[MaKho] [nvarchar](50) NULL,
	[MaLSP] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipper](
	[MaShipper] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
	[MaHD] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shipper_1] PRIMARY KEY CLUSTERED 
(
	[MaShipper] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongSoKyThuat]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongSoKyThuat](
	[MaTS] [nvarchar](50) NOT NULL,
	[TenTS] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThongSoKyThuat] PRIMARY KEY CLUSTERED 
(
	[MaTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BoThongSo]  WITH CHECK ADD  CONSTRAINT [FK_BoThongSo_ThongSoKyThuat] FOREIGN KEY([MaTS])
REFERENCES [dbo].[ThongSoKyThuat] ([MaTS])
GO
ALTER TABLE [dbo].[BoThongSo] CHECK CONSTRAINT [FK_BoThongSo_ThongSoKyThuat]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[ChiTietThongSoKyThuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietThongSoKyThuat_ThongSoKyThuat] FOREIGN KEY([MaTS])
REFERENCES [dbo].[ThongSoKyThuat] ([MaTS])
GO
ALTER TABLE [dbo].[ChiTietThongSoKyThuat] CHECK CONSTRAINT [FK_ChiTietThongSoKyThuat_ThongSoKyThuat]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ChiTietThongSoKyThuat] FOREIGN KEY([MaSP])
REFERENCES [dbo].[ChiTietThongSoKyThuat] ([MaSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ChiTietThongSoKyThuat]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Kho] FOREIGN KEY([MaKho])
REFERENCES [dbo].[Kho] ([MaKho])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Kho]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[Shipper]  WITH CHECK ADD  CONSTRAINT [FK_Shipper_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [FK_Shipper_HoaDon]
GO
/****** Object:  StoredProcedure [dbo].[lsp_Select]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--LOAISANPHAM
CREATE PROC [dbo].[lsp_Select]
as
begin
select*from LoaiSanPham;
end
GO
/****** Object:  StoredProcedure [dbo].[NC_NhaCC]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--KHO
CREATE PROC [dbo].[NC_NhaCC]
as
begin
select *from NhaCungCap
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--HAM INSERT
CREATE PROC [dbo].[sp_Insert]
(
@MaSP nvarchar(50),
@TenSP nvarchar(50),
@DonGia nvarchar(50),
@MaNCC nvarchar(50),
@MaKho nvarchar(50),
@MaLSP nvarchar(50),
@TrangThai bit
)
as
begin 
insert into SanPham
values (@MaSP,@TenSP,@DonGia,@MaNCC,@MaKho,@MaLSP,@TrangThai);
end

GO
/****** Object:  StoredProcedure [dbo].[sp_Select]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--HAM SELECT
CREATE PROC [dbo].[sp_Select]
as
begin
select*from SanPham;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Update]    Script Date: 25/5/2022 10:34:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--HAM UPDATE
CREATE PROC [dbo].[sp_Update]
(
@MaSP nvarchar(50),
@TenSP nvarchar(50),
@DonGia nvarchar(50),
@MaNCC nvarchar(50),
@MaKho nvarchar(50),
@MaLSP nvarchar(50),
@TrangThai bit
)
as
begin 
UPDATE  SanPham
SET TenSP=@TenSP,DonGia=@DonGia,MaNCC=@MaNCC,@MaKho=@MaKho,MaLSP=@MaLSP,TrangThai=@TrangThai
WHERE MaSP=@MaSP
end
GO
USE [master]
GO
ALTER DATABASE [QLBH_tech] SET  READ_WRITE 
GO
