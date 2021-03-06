/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [Collis]    Script Date: 6/21/2018 6:42:07 PM ******/
CREATE DATABASE [Collis]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Collis', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SERVER2018\MSSQL\DATA\Collis.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Collis_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SERVER2018\MSSQL\DATA\Collis_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Collis] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Collis].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Collis] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Collis] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Collis] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Collis] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Collis] SET ARITHABORT OFF 
GO
ALTER DATABASE [Collis] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Collis] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Collis] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Collis] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Collis] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Collis] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Collis] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Collis] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Collis] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Collis] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Collis] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Collis] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Collis] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Collis] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Collis] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Collis] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Collis] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Collis] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Collis] SET  MULTI_USER 
GO
ALTER DATABASE [Collis] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Collis] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Collis] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Collis] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Collis] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Collis] SET QUERY_STORE = OFF
GO
USE [Collis]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Collis]
GO
/****** Object:  Table [dbo].[AboutMe]    Script Date: 6/21/2018 6:42:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutMe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[About] [ntext] NOT NULL,
 CONSTRAINT [PK_AboutMe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 6/21/2018 6:42:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BackPhoto] [nvarchar](250) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Text] [ntext] NOT NULL,
	[AuthorPhoto] [nvarchar](250) NULL,
	[AuthorFullName] [nvarchar](50) NULL,
	[Date] [date] NOT NULL,
	[CommentCount] [int] NOT NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Counter]    Script Date: 6/21/2018 6:42:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Counter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Count] [int] NOT NULL,
	[Icon] [nvarchar](250) NULL,
 CONSTRAINT [PK_Counter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Portfolio]    Script Date: 6/21/2018 6:42:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Portfolio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](250) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[PortfolioCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Portfolio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PortfolioCategoryId]    Script Date: 6/21/2018 6:42:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortfolioCategoryId](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PortfolioCategoryId] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 6/21/2018 6:42:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Icon] [nvarchar](250) NULL,
	[Text] [ntext] NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 6/21/2018 6:42:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](250) NULL,
	[Logo] [nvarchar](250) NULL,
	[FullName] [nvarchar](50) NULL,
	[Facebook] [nvarchar](250) NULL,
	[Twitter] [nvarchar](250) NULL,
	[Googleplus] [nvarchar](250) NULL,
	[Linkedin] [nvarchar](250) NULL,
	[Pinterest] [nvarchar](250) NULL,
	[GoComeWords] [nvarchar](50) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 6/21/2018 6:42:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Percente] [int] NOT NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonials]    Script Date: 6/21/2018 6:42:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [ntext] NOT NULL,
	[Author] [nvarchar](50) NULL,
	[Position] [nvarchar](50) NULL,
	[Photo] [nvarchar](250) NULL,
 CONSTRAINT [PK_Testimonials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([Id], [Title], [Icon], [Text]) VALUES (1, N'Web Design', N'zmdi zmdi-laptop-mac', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.')
INSERT [dbo].[Service] ([Id], [Title], [Icon], [Text]) VALUES (2, N'Web Development', N'zmdi zmdi-language-javascript', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.')
INSERT [dbo].[Service] ([Id], [Title], [Icon], [Text]) VALUES (3, N'WordPress', N'zmdi zmdi-view-dashboard', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.')
INSERT [dbo].[Service] ([Id], [Title], [Icon], [Text]) VALUES (5, N'Responsive Design', N'zmdi zmdi-devices', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.')
INSERT [dbo].[Service] ([Id], [Title], [Icon], [Text]) VALUES (6, N'Web Research', N'zmdi zmdi-search-in-file', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.')
INSERT [dbo].[Service] ([Id], [Title], [Icon], [Text]) VALUES (7, N'HTML5', N'zmdi zmdi-language-html5', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.')
SET IDENTITY_INSERT [dbo].[Service] OFF
ALTER TABLE [dbo].[Portfolio]  WITH CHECK ADD  CONSTRAINT [FK_Portfolio_PortfolioCategoryId] FOREIGN KEY([PortfolioCategoryId])
REFERENCES [dbo].[PortfolioCategoryId] ([Id])
GO
ALTER TABLE [dbo].[Portfolio] CHECK CONSTRAINT [FK_Portfolio_PortfolioCategoryId]
GO
ALTER TABLE [dbo].[PortfolioCategoryId]  WITH CHECK ADD  CONSTRAINT [FK_PortfolioCategoryId_PortfolioCategoryId] FOREIGN KEY([Id])
REFERENCES [dbo].[PortfolioCategoryId] ([Id])
GO
ALTER TABLE [dbo].[PortfolioCategoryId] CHECK CONSTRAINT [FK_PortfolioCategoryId_PortfolioCategoryId]
GO
USE [master]
GO
ALTER DATABASE [Collis] SET  READ_WRITE 
GO
