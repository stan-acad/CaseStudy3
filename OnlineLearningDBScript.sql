USE [master]
GO

/****** Object:  Database [OnlineLearningDB]    Script Date: 12/18/2024 22:27:44 ******/
CREATE DATABASE [OnlineLearningDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineLearningDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\OnlineLearningDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OnlineLearningDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\OnlineLearningDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineLearningDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [OnlineLearningDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [OnlineLearningDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [OnlineLearningDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [OnlineLearningDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET  ENABLE_BROKER 
GO

ALTER DATABASE [OnlineLearningDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [OnlineLearningDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [OnlineLearningDB] SET  MULTI_USER 
GO

ALTER DATABASE [OnlineLearningDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [OnlineLearningDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [OnlineLearningDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [OnlineLearningDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [OnlineLearningDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [OnlineLearningDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [OnlineLearningDB] SET QUERY_STORE = ON
GO

ALTER DATABASE [OnlineLearningDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [OnlineLearningDB] SET  READ_WRITE 
GO
