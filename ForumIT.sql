USE [master]
GO
/****** Object:  Database [ForumIT]    Script Date: 01/11/2023 11:49:33 CH ******/
CREATE DATABASE [ForumIT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ForumIT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ForumIT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ForumIT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ForumIT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ForumIT] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ForumIT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ForumIT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ForumIT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ForumIT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ForumIT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ForumIT] SET ARITHABORT OFF 
GO
ALTER DATABASE [ForumIT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ForumIT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ForumIT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ForumIT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ForumIT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ForumIT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ForumIT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ForumIT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ForumIT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ForumIT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ForumIT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ForumIT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ForumIT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ForumIT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ForumIT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ForumIT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ForumIT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ForumIT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ForumIT] SET  MULTI_USER 
GO
ALTER DATABASE [ForumIT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ForumIT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ForumIT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ForumIT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ForumIT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ForumIT] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ForumIT] SET QUERY_STORE = ON
GO
ALTER DATABASE [ForumIT] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ForumIT]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBaiViet]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBaiViet](
	[idBaiViet] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](200) NULL,
	[img] [nvarchar](200) NULL,
	[noiDung] [nvarchar](1000) NULL,
	[trangThai] [nvarchar](20) NULL,
	[idLDD] [int] NULL,
	[idUser] [nvarchar](450) NULL,
	[Ngaydang] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idBaiViet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]



GO
/****** Object:  Table [dbo].[tblBinhLuan]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBinhLuan](
	[idBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[noiDung] [nvarchar](300) NULL,
	[ididBaiVietBL] [int] NULL,
	[idUser] [nvarchar](450) NULL,
	[NgayBL] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDaLuu]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDaLuu](
	[idDaluu] [int] IDENTITY(1,1) NOT NULL,
	[idBaiVietDL] [int] NULL,
	[idUser] [nvarchar](450) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDaluu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLoaiDD]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiDD](
	[idLoaiDD] [int] IDENTITY(1,1) NOT NULL,
	[tenLoaiDD] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idLoaiDD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTraLoiBL]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTraLoiBL](
	[idTraloi] [int] IDENTITY(1,1) NOT NULL,
	[noidung] [nvarchar](300) NULL,
	[NgayTL] [datetime] NULL,
	[idUser] [nvarchar](450) NULL,
	[idBLuanTLoi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idTraloi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 01/11/2023 11:49:33 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 01/11/2023 11:49:33 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 01/11/2023 11:49:33 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 01/11/2023 11:49:33 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 01/11/2023 11:49:33 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 01/11/2023 11:49:33 CH ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 01/11/2023 11:49:33 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[tblBaiViet]  WITH CHECK ADD  CONSTRAINT [FK__tblBaiVie__idLDD__59063A47] FOREIGN KEY([idLDD])
REFERENCES [dbo].[tblLoaiDD] ([idLoaiDD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblBaiViet] CHECK CONSTRAINT [FK__tblBaiVie__idLDD__59063A47]
GO
ALTER TABLE [dbo].[tblBaiViet]  WITH CHECK ADD  CONSTRAINT [FK__tblBaiVie__idUse__59FA5E80] FOREIGN KEY([idUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblBaiViet] CHECK CONSTRAINT [FK__tblBaiVie__idUse__59FA5E80]
GO
ALTER TABLE [dbo].[tblTraLoiBL]  WITH CHECK ADD  CONSTRAINT [FK__tblTraLoi__idBLu__7D439ABD] FOREIGN KEY([idBLuanTLoi])
REFERENCES [dbo].[tblBinhLuan] ([idBinhLuan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblTraLoiBL] CHECK CONSTRAINT [FK__tblTraLoi__idBLu__7D439ABD]
GO
ALTER TABLE [dbo].[tblTraLoiBL]  WITH CHECK ADD  CONSTRAINT [FK__tblTraLoi__idUse__7C4F7684] FOREIGN KEY([idUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblTraLoiBL] CHECK CONSTRAINT [FK__tblTraLoi__idUse__7C4F7684]
GO
/****** Object:  StoredProcedure [dbo].[DelBVietBLuan]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DelBVietBLuan] 
@idbv int
as begin
delete from tblBinhLuan where tblBinhLuan.ididBaiVietBL=@idbv
delete from tblDaLuu where tblDaLuu.idBaiVietDL=@idbv
delete from tblBaiViet where tblBaiViet.idBaiViet=@idbv
end
GO
/****** Object:  StoredProcedure [dbo].[DelUser]    Script Date: 01/11/2023 11:49:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DelUser] 
@idus nvarchar(450)
as begin
delete from tblTraLoiBL where tblTraLoiBL.idUser=@idus
delete from tblBinhLuan where tblBinhLuan.idUser=@idus
delete from tblBaiViet where tblBaiViet.idUser=@idus
delete from tblDaLuu where tblDaLuu.idUser=@idus
delete from AspNetUsers where AspNetUsers.Id=@idus
end

drop proc DelUser

create proc DelUser
@idus nvarchar(450)
as begin
delete from tblTraLoiBL where tblTraLoiBL.idUser=@idus
delete from tblDaLuu where tblDaLuu.idUser=@idus

DECLARE @idBLuanFound TABLE (idBluan INT);
DECLARE @idBVietFound TABLE (idBViet INT);

	INSERT INTO @idBVietFound (idBViet)
	select idBaiViet from tblBaiViet where tblBaiViet.idUser=@idus

    INSERT INTO @idBLuanFound (idBluan)
	select ididBaiVietBL from tblBinhLuan where tblBinhLuan.idUser=@idus or tblBinhLuan.ididBaiVietBL in (SELECT idBViet FROM @idBVietFound);


    IF (EXISTS (SELECT 1 FROM @idBLuanFound))
    BEGIN
		delete from tblBinhLuan where tblBinhLuan.ididBaiVietBL in (SELECT idBViet FROM @idBVietFound) or tblBinhLuan.idUser=@idus;
		delete from tblBaiViet where tblBaiViet.idUser=@idus
    END

delete from AspNetUsers where AspNetUsers.Id=@idus
end


DECLARE @idBLuanFound TABLE (idBluan INT);
INSERT INTO @idBLuanFound (idBluan)
	select ididBaiVietBL from tblBinhLuan where tblBinhLuan.idUser='0bf0b0a7-cb2c-4b75-9282-670138382eb6'
select*from @idBLuanFound

GO
USE [master]
GO
ALTER DATABASE [ForumIT] SET  READ_WRITE 
GO

delete from tblBinhLuan

alter table tblBinhLuan add constraint FK_BLuan_us FOREIGN KEY (ididBaiVietBL) REFERENCES tblBaiViet(idBaiViet)

alter table tblBinhLuan add constraint FK_User_BLuan FOREIGN KEY (idUser) REFERENCES AspNetUsers(Id)

alter table tblDaLuu add constraint FK_DLuu_us FOREIGN KEY (idBaiVietDL) REFERENCES tblBaiViet(idBaiViet)

alter table tblDaLuu add constraint FK_User_DLuu FOREIGN KEY (idUser) REFERENCES AspNetUsers(Id)

create proc DelType
@idtype int
as begin

	DECLARE @idBaiVietFound TABLE (idBaiViett INT);

    INSERT INTO @idBaiVietFound (idBaiViett)
	select idBaiViet from tblBaiViet where tblBaiViet.idLDD=@idtype

    IF (EXISTS (SELECT 1 FROM @idBaiVietFound))
    BEGIN
		delete from tblBinhLuan where tblBinhLuan.ididBaiVietBL in (SELECT idBaiViett FROM @idBaiVietFound)
		delete from tblDaLuu where tblDaLuu.idBaiVietDL in (SELECT idBaiViett FROM @idBaiVietFound);
    END

delete from tblBaiViet where tblBaiViet.idLDD=@idtype;
delete from tblLoaiDD where tblLoaiDD.idLoaiDD=@idtype;
end

drop proc DelType

select*from tblDaLuu
select*from tblLoaiDD
select*from tblBaiViet
select*from AspNetUsers
select*from tblBinhLuan

select idBaiViet from tblBaiViet where tblBaiViet.idLDD=11


delete from tblBinhLuan where tblBinhLuan.ididBaiVietBL=18

/*Them Truy cap*/
alter table tblBaiViet add TruyCap int
select*from tblBaiViet
update tblBaiViet set TruyCap=0

/*Them Loai*/
CREATE PROCEDURE InsertType
    @tenloai NVARCHAR(50)
AS
BEGIN
    INSERT INTO tblLoaiDD(tenLoaiDD)
    VALUES (@tenloai)
END

exec  InsertType 'Mua bán'

select*from tblLoaiDD

CREATE PROCEDURE UpdateType
	@IdType int,
    @nameType NVARCHAR(50)
   
AS
BEGIN
    UPDATE tblLoaiDD
    SET tenLoaiDD = @nameType 
    WHERE idLoaiDD = @IdType
END

CREATE PROCEDURE SearchType
    @Key NVARCHAR(100)  
AS
BEGIN
    SELECT *
    FROM tblLoaiDD
    WHERE  tenLoaiDD LIKE '%' + @Key + '%'
END

exec SearchType 'bán'


CREATE PROCEDURE SortType
    @KeyS NVARCHAR(100)  
AS
BEGIN
    select*from tblLoaiDD order by tenLoaiDD + @KeyS
END

exec SortTypeC2 'DESC'

CREATE PROCEDURE SortTypeC2
    @SortDirection NVARCHAR(4)
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX)

    SET @SQL = 'SELECT * FROM tblLoaiDD ORDER BY tenLoaiDD ' + @SortDirection

    EXEC sp_executesql @SQL
END

CREATE PROCEDURE TopType
    @SortDirection NVARCHAR(4),
	@top int
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX)

    SET @SQL = 'SELECT TOP '+ CAST(@top AS NVARCHAR(10)) + ' * FROM tblLoaiDD ORDER BY tenLoaiDD ' + @SortDirection

    EXEC sp_executesql @SQL
END

drop proc TopType
exec TopType 'ASC', 3


-----------------Exam
create table tblDisable(
FK_T2 int references tblBaiViet(idBaiViet),
Disable Bit,
LongTime Datetime)

select*from tblDisable
drop table tblDisable
select*from tblBaiViet

insert into tblDisable values (31,1,'12/12/2005')