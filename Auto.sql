USE [master]
GO
/****** Object:  Database [Auto]    Script Date: 06.12.2021 13:49:01 ******/
CREATE DATABASE [Auto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Auto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Auto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Auto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Auto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Auto] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Auto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Auto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Auto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Auto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Auto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Auto] SET ARITHABORT OFF 
GO
ALTER DATABASE [Auto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Auto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Auto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Auto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Auto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Auto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Auto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Auto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Auto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Auto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Auto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Auto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Auto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Auto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Auto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Auto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Auto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Auto] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Auto] SET  MULTI_USER 
GO
ALTER DATABASE [Auto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Auto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Auto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Auto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Auto] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Auto] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Auto] SET QUERY_STORE = OFF
GO
USE [Auto]
GO
/****** Object:  Table [dbo].[drivers]    Script Date: 06.12.2021 13:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[drivers](
	[id] [float] NULL,
	[name] [nvarchar](255) NULL,
	[middlename] [nvarchar](255) NULL,
	[passport serial] [nvarchar](255) NULL,
	[passport number] [nvarchar](255) NULL,
	[postcode] [float] NULL,
	[address] [nvarchar](255) NULL,
	[address life] [nvarchar](255) NULL,
	[company] [nvarchar](255) NULL,
	[jobname] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[photo] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06.12.2021 13:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
	[name] [nvarchar](200) NULL,
 CONSTRAINT [PK_Users_1] PRIMARY KEY CLUSTERED 
(
	[login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Auto] SET  READ_WRITE 
GO
