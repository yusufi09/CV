USE [master]
GO
/****** Object:  Database [CvDatabase]    Script Date: 23.06.2025 19:32:05 ******/
CREATE DATABASE [CvDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CvDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\CvDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CvDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\CvDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CvDatabase] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CvDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CvDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CvDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CvDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CvDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CvDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [CvDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CvDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CvDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CvDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CvDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CvDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CvDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CvDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CvDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CvDatabase] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CvDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CvDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CvDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CvDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CvDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CvDatabase] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CvDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CvDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [CvDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [CvDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CvDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CvDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CvDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CvDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CvDatabase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CvDatabase', N'ON'
GO
ALTER DATABASE [CvDatabase] SET QUERY_STORE = ON
GO
ALTER DATABASE [CvDatabase] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CvDatabase]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23.06.2025 19:32:05 ******/
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
/****** Object:  Table [dbo].[Abouts]    Script Date: 23.06.2025 19:32:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Birthday] [nvarchar](max) NOT NULL,
	[Age] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Baslıks]    Script Date: 23.06.2025 19:32:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baslıks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Baslıks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Headers]    Script Date: 23.06.2025 19:32:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Headers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[ProfileImage] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Headers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialMedias]    Script Date: 23.06.2025 19:32:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMedias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Icon] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[HeaderId] [int] NULL,
 CONSTRAINT [PK_SocialMedias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250622111025_CreateDatabase', N'8.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250622121055_Baslıkbase', N'8.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250622201530_AboutCreateBase', N'8.0.17')
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([Id], [Name], [Title], [Birthday], [Age], [Phone], [Email], [Address], [Image], [Description]) VALUES (2, N'Yusuf Açar', N'Backand Developer', N'27/11/2004', N'21', N'5373923523', N'yusf7acr7@icloud.com', N'İstanbul Türkiye', N'Yusuf.jpg', N'Falan Filan İnter Milan Alex de Souza')
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[Baslıks] ON 

INSERT [dbo].[Baslıks] ([Id], [Name], [Image], [Description]) VALUES (1, N'Yusuf ACAR', N'Yus.jpg', N'Ragnar Lothbrok')
SET IDENTITY_INSERT [dbo].[Baslıks] OFF
GO
SET IDENTITY_INSERT [dbo].[Headers] ON 

INSERT [dbo].[Headers] ([Id], [Name], [Surname], [ProfileImage]) VALUES (1, N'Yusuf İslam', N'Açar', N'Yusuf.jpg')
SET IDENTITY_INSERT [dbo].[Headers] OFF
GO
SET IDENTITY_INSERT [dbo].[SocialMedias] ON 

INSERT [dbo].[SocialMedias] ([Id], [Name], [Icon], [Url], [HeaderId]) VALUES (1, N'Facebook', N'bi bi-facebook', N'https://www.facebook.com', 1)
INSERT [dbo].[SocialMedias] ([Id], [Name], [Icon], [Url], [HeaderId]) VALUES (3, N'Twitter', N'bi bi-twitter', N'https://www.twitter.com', 1)
INSERT [dbo].[SocialMedias] ([Id], [Name], [Icon], [Url], [HeaderId]) VALUES (4, N'Instagram', N'bi bi-instagram', N'https://www.instagram.com', 1)
INSERT [dbo].[SocialMedias] ([Id], [Name], [Icon], [Url], [HeaderId]) VALUES (5, N'LinkedIn', N'bi bi-linkedin', N'https://www.linkedin.com', 1)
INSERT [dbo].[SocialMedias] ([Id], [Name], [Icon], [Url], [HeaderId]) VALUES (6, N'Skype', N'bi bi-skype', N'https://www.skype.com', 1)
SET IDENTITY_INSERT [dbo].[SocialMedias] OFF
GO
/****** Object:  Index [IX_SocialMedias_HeaderId]    Script Date: 23.06.2025 19:32:05 ******/
CREATE NONCLUSTERED INDEX [IX_SocialMedias_HeaderId] ON [dbo].[SocialMedias]
(
	[HeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SocialMedias]  WITH CHECK ADD  CONSTRAINT [FK_SocialMedias_Headers_HeaderId] FOREIGN KEY([HeaderId])
REFERENCES [dbo].[Headers] ([Id])
GO
ALTER TABLE [dbo].[SocialMedias] CHECK CONSTRAINT [FK_SocialMedias_Headers_HeaderId]
GO
USE [master]
GO
ALTER DATABASE [CvDatabase] SET  READ_WRITE 
GO
