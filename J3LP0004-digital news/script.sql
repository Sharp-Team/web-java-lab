USE [master]
GO
/****** Object:  Database [J3LP0004]    Script Date: 2/21/2019 9:38:28 AM ******/
CREATE DATABASE [J3LP0004]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'J3LP0004', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\J3LP0004.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'J3LP0004_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\J3LP0004_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [J3LP0004] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J3LP0004].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J3LP0004] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [J3LP0004] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [J3LP0004] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [J3LP0004] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [J3LP0004] SET ARITHABORT OFF 
GO
ALTER DATABASE [J3LP0004] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [J3LP0004] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [J3LP0004] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [J3LP0004] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [J3LP0004] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [J3LP0004] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [J3LP0004] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [J3LP0004] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [J3LP0004] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [J3LP0004] SET  DISABLE_BROKER 
GO
ALTER DATABASE [J3LP0004] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [J3LP0004] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [J3LP0004] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [J3LP0004] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [J3LP0004] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [J3LP0004] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [J3LP0004] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [J3LP0004] SET RECOVERY FULL 
GO
ALTER DATABASE [J3LP0004] SET  MULTI_USER 
GO
ALTER DATABASE [J3LP0004] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [J3LP0004] SET DB_CHAINING OFF 
GO
ALTER DATABASE [J3LP0004] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [J3LP0004] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [J3LP0004] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'J3LP0004', N'ON'
GO
USE [J3LP0004]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 2/21/2019 9:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[image] [nvarchar](255) NOT NULL,
	[category] [int] NOT NULL,
	[created] [date] NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 2/21/2019 9:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2/21/2019 9:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[name] [nvarchar](255) NOT NULL,
	[phone] [int] NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[opend] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([id], [title], [description], [image], [category], [created]) VALUES (1, N'
Maria''s Cosy Cafe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica', N'1.jpg', 1, CAST(N'2019-01-02' AS Date))
INSERT [dbo].[Article] ([id], [title], [description], [image], [category], [created]) VALUES (2, N'In the Afternoon', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'2.jpg', 2, CAST(N'2019-01-09' AS Date))
INSERT [dbo].[Article] ([id], [title], [description], [image], [category], [created]) VALUES (3, N'In the Afternoon', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', N'3.jpg', 2, CAST(N'2019-01-08' AS Date))
INSERT [dbo].[Article] ([id], [title], [description], [image], [category], [created]) VALUES (5, N'About my cakes', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum. ', N'4.jpg', 3, CAST(N'2019-01-02' AS Date))
SET IDENTITY_INSERT [dbo].[Article] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Introduction')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Post')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'About us')
SET IDENTITY_INSERT [dbo].[Category] OFF
INSERT [dbo].[Contact] ([name], [phone], [email], [opend]) VALUES (N'Copenhagen, Denmark', 123456, N'your-email@your-email.com', N'Monday: Closed
Tuesday - Friday: 10:00 - 20:00
Saturday and Sunday: 11.00 - 21:00')
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_Category] FOREIGN KEY([category])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_Category]
GO
USE [master]
GO
ALTER DATABASE [J3LP0004] SET  READ_WRITE 
GO
