USE [master]
GO
/****** Object:  Database [ABC Production Scheduling System]    Script Date: 10/11/2024 3:21:01 PM ******/
CREATE DATABASE [ABC Production Scheduling System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ABC Production Scheduling System', FILENAME = N'D:\sql\MSSQL16.SQLEXPRESS\MSSQL\DATA\ABC Production Scheduling System.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ABC Production Scheduling System_log', FILENAME = N'D:\sql\MSSQL16.SQLEXPRESS\MSSQL\DATA\ABC Production Scheduling System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ABC Production Scheduling System] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ABC Production Scheduling System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ABC Production Scheduling System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET ARITHABORT OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ABC Production Scheduling System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ABC Production Scheduling System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ABC Production Scheduling System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ABC Production Scheduling System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ABC Production Scheduling System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ABC Production Scheduling System] SET  MULTI_USER 
GO
ALTER DATABASE [ABC Production Scheduling System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ABC Production Scheduling System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ABC Production Scheduling System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ABC Production Scheduling System] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ABC Production Scheduling System] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ABC Production Scheduling System] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ABC Production Scheduling System] SET QUERY_STORE = ON
GO
ALTER DATABASE [ABC Production Scheduling System] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ABC Production Scheduling System]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[aID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[rID] [int] NOT NULL,
 CONSTRAINT [PK__Account__DE518BE6A49EF23B] PRIMARY KEY CLUSTERED 
(
	[aID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Order]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Order](
	[oID] [int] IDENTITY(1,1) NOT NULL,
	[pID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[done] [bit] NULL,
 CONSTRAINT [PK__Customer__C2FECB1BDF948D47] PRIMARY KEY CLUSTERED 
(
	[oID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Daily_Worker]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Daily_Worker](
	[dwID] [int] IDENTITY(1,1) NOT NULL,
	[day] [date] NOT NULL,
	[wID] [int] NOT NULL,
	[sID] [int] NOT NULL,
	[KPI] [float] NULL,
 CONSTRAINT [PK__Daily_Wo__2F7525022EF10A90] PRIMARY KEY CLUSTERED 
(
	[dwID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factory]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factory](
	[facID] [int] IDENTITY(1,1) NOT NULL,
	[Factory_name] [nvarchar](100) NULL,
 CONSTRAINT [PK__Factory__BC0FA0EF6586CD8A] PRIMARY KEY CLUSTERED 
(
	[facID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factory_Header]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factory_Header](
	[fhID] [int] IDENTITY(1,1) NOT NULL,
	[aID] [int] NOT NULL,
	[facID] [int] NULL,
	[name] [nvarchar](100) NULL,
 CONSTRAINT [PK__Factory___350E8B86CC87444D] PRIMARY KEY CLUSTERED 
(
	[fhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[fID] [int] IDENTITY(1,1) NOT NULL,
	[Feature_Name] [varchar](100) NULL,
 CONSTRAINT [PK__Feature__D9F8259C26C1845E] PRIMARY KEY CLUSTERED 
(
	[fID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Human_rss_management]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Human_rss_management](
	[mID] [int] IDENTITY(1,1) NOT NULL,
	[aID] [int] NOT NULL,
	[name] [varchar](100) NULL,
 CONSTRAINT [PK__Human_rs__DF513EB4F4684466] PRIMARY KEY CLUSTERED 
(
	[mID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Month_Shift_Plan]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Month_Shift_Plan](
	[msID] [int] IDENTITY(1,1) NOT NULL,
	[facID] [int] NOT NULL,
	[Month] [int] NULL,
	[day] [date] NULL,
	[wID] [int] NOT NULL,
	[sID] [int] NOT NULL,
 CONSTRAINT [PK__Month_Sh__763458CE0B4EA1E1] PRIMARY KEY CLUSTERED 
(
	[msID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MSP_Worker]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSP_Worker](
	[wID] [int] NOT NULL,
	[msID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wID] ASC,
	[msID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plan_detail]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plan_detail](
	[pldID] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[pID] [int] NOT NULL,
	[oID] [int] NOT NULL,
	[facID] [int] NOT NULL,
	[planerID] [int] NOT NULL,
	[Quantity] [float] NULL,
	[note] [varchar](255) NULL,
	[done] [bit] NULL,
 CONSTRAINT [PK__Plan_det__0EFE587D93B4EAEB] PRIMARY KEY CLUSTERED 
(
	[pldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planer]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planer](
	[planerID] [int] IDENTITY(1,1) NOT NULL,
	[aID] [int] NOT NULL,
	[name] [varchar](100) NULL,
 CONSTRAINT [PK__Planer__42B303316FFE0A9E] PRIMARY KEY CLUSTERED 
(
	[planerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[pID] [int] IDENTITY(1,1) NOT NULL,
	[Prodcut_name] [nvarchar](100) NULL,
	[estimated] [int] NULL,
 CONSTRAINT [PK__Product__DD36D502816714D8] PRIMARY KEY CLUSTERED 
(
	[pID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[rID] [int] IDENTITY(1,1) NOT NULL,
	[name_role] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Role__C2BEC91047CB5594] PRIMARY KEY CLUSTERED 
(
	[rID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[rID] [int] NOT NULL,
	[fID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rID] ASC,
	[fID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary](
	[salID] [int] IDENTITY(1,1) NOT NULL,
	[wID] [int] NOT NULL,
	[Month] [date] NULL,
	[Salary] [float] NULL,
	[total_KPI] [float] NULL,
 CONSTRAINT [PK__Salary__E3E892F636329131] PRIMARY KEY CLUSTERED 
(
	[salID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salary_Base]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary_Base](
	[salID] [int] IDENTITY(1,1) NOT NULL,
	[rID] [int] NOT NULL,
	[Salary_Base] [float] NULL,
 CONSTRAINT [PK__Salary_B__E3E892F67F0C67BB] PRIMARY KEY CLUSTERED 
(
	[salID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shift]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shift](
	[sID] [int] IDENTITY(1,1) NOT NULL,
	[facID] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[start] [time](7) NULL,
	[to] [time](7) NULL,
 CONSTRAINT [PK__Shift__DDDED94E73868E07] PRIMARY KEY CLUSTERED 
(
	[sID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_infor]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_infor](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[aID] [int] NOT NULL,
	[name] [varchar](100) NULL,
	[gender] [bit] NULL,
	[dob] [date] NULL,
 CONSTRAINT [PK__User_inf__DD771E3C6EAB7AD5] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 10/11/2024 3:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[wID] [int] IDENTITY(1,1) NOT NULL,
	[aID] [int] NOT NULL,
	[name] [varchar](100) NULL,
	[facID] [int] NOT NULL,
 CONSTRAINT [PK__Worker__30FE574384E80B81] PRIMARY KEY CLUSTERED 
(
	[wID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (1, N'user1', N'1', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (2, N'user2', N'1', 2)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (3, N'user3', N'1', 3)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (4, N'user4', N'1', 4)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (5, N'user5', N'1', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (6, N'user6', N'1', 2)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (7, N'user7', N'1', 2)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (8, N'user8', N'1', 2)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (9, N'user9', N'1', 2)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (10, N'user1', N'user1pass101', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (11, N'user2', N'user2pass102', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (12, N'user3', N'user3pass103', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (13, N'user4', N'user4pass104', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (14, N'user5', N'user5pass105', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (15, N'user6', N'user6pass106', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (16, N'user7', N'user7pass107', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (17, N'user8', N'user8pass108', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (18, N'user9', N'user9pass109', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (19, N'user10', N'user10pass110', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (20, N'user11', N'user11pass111', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (21, N'user12', N'user12pass112', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (22, N'user13', N'user13pass113', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (23, N'user14', N'user14pass114', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (24, N'user15', N'user15pass115', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (25, N'user16', N'user16pass116', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (26, N'user17', N'user17pass117', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (27, N'user18', N'user18pass118', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (28, N'user19', N'user19pass119', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (29, N'user20', N'user20pass120', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (30, N'user21', N'user21pass121', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (31, N'user22', N'user22pass122', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (32, N'user23', N'user23pass123', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (33, N'user24', N'user24pass124', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (34, N'user25', N'user25pass125', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (35, N'user26', N'user26pass126', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (36, N'user27', N'user27pass127', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (37, N'user28', N'user28pass128', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (38, N'user29', N'user29pass129', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (39, N'user30', N'user30pass130', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (40, N'user31', N'user31pass131', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (41, N'user32', N'user32pass132', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (42, N'user33', N'user33pass133', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (43, N'user34', N'user34pass134', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (44, N'user35', N'user35pass135', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (45, N'user36', N'user36pass136', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (46, N'user37', N'user37pass137', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (47, N'user38', N'user38pass138', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (48, N'user39', N'user39pass139', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (49, N'user40', N'user40pass140', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (50, N'user41', N'user41pass141', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (51, N'user42', N'user42pass142', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (52, N'user43', N'user43pass143', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (53, N'user44', N'user44pass144', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (54, N'user45', N'user45pass145', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (55, N'user46', N'user46pass146', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (56, N'user47', N'user47pass147', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (57, N'user48', N'user48pass148', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (58, N'user49', N'user49pass149', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (59, N'user50', N'user50pass150', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (60, N'user51', N'user51pass151', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (61, N'user52', N'user52pass152', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (62, N'user53', N'user53pass153', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (63, N'user54', N'user54pass154', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (64, N'user55', N'user55pass155', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (65, N'user56', N'user56pass156', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (66, N'user57', N'user57pass157', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (67, N'user58', N'user58pass158', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (68, N'user59', N'user59pass159', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (69, N'user60', N'user60pass160', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (70, N'user61', N'user61pass161', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (71, N'user62', N'user62pass162', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (72, N'user63', N'user63pass163', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (73, N'user64', N'user64pass164', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (74, N'user65', N'user65pass165', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (75, N'user66', N'user66pass166', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (76, N'user67', N'user67pass167', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (77, N'user68', N'user68pass168', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (78, N'user69', N'user69pass169', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (79, N'user70', N'user70pass170', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (80, N'user71', N'user71pass171', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (81, N'user72', N'user72pass172', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (82, N'user73', N'user73pass173', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (83, N'user74', N'user74pass174', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (84, N'user75', N'user75pass175', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (85, N'user76', N'user76pass176', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (86, N'user77', N'user77pass177', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (87, N'user78', N'user78pass178', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (88, N'user79', N'user79pass179', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (89, N'user80', N'user80pass180', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (90, N'user81', N'user81pass181', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (91, N'user82', N'user82pass182', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (92, N'user83', N'user83pass183', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (93, N'user84', N'user84pass184', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (94, N'user85', N'user85pass185', 1)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (95, N'header1', N'admin1pass201', 2)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (96, N'header2', N'admin2pass202', 2)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (97, N'admin3', N'admin3pass203', 2)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (98, N'admin4', N'admin4pass204', 2)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (99, N'admin5', N'admin5pass205', 2)
GO
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (100, N'planer1', N'planer1pass301', 3)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (101, N'planer2', N'planer2pass302', 3)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (102, N'planer3', N'planer3pass303', 3)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (103, N'planer4', N'planer4pass304', 3)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (104, N'planer5', N'planer5pass305', 3)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (105, N'planer6', N'planer6pass306', 3)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (106, N'planer7', N'planer7pass307', 3)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (107, N'hr1', N'hr1pass401', 4)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (108, N'hr2', N'hr2pass402', 4)
INSERT [dbo].[Account] ([aID], [username], [password], [rID]) VALUES (109, N'hr3', N'hr3pass403', 4)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Factory] ON 

INSERT [dbo].[Factory] ([facID], [Factory_name]) VALUES (1, N'F1')
INSERT [dbo].[Factory] ([facID], [Factory_name]) VALUES (2, N'F2')
INSERT [dbo].[Factory] ([facID], [Factory_name]) VALUES (3, N'K1')
INSERT [dbo].[Factory] ([facID], [Factory_name]) VALUES (4, N'K2')
SET IDENTITY_INSERT [dbo].[Factory] OFF
GO
SET IDENTITY_INSERT [dbo].[Factory_Header] ON 

INSERT [dbo].[Factory_Header] ([fhID], [aID], [facID], [name]) VALUES (1, 2, 1, N'mr.B')
INSERT [dbo].[Factory_Header] ([fhID], [aID], [facID], [name]) VALUES (2, 6, 2, N'mr.F')
INSERT [dbo].[Factory_Header] ([fhID], [aID], [facID], [name]) VALUES (3, 7, 3, N'mr.G')
INSERT [dbo].[Factory_Header] ([fhID], [aID], [facID], [name]) VALUES (4, 8, 4, N'mr.H')
INSERT [dbo].[Factory_Header] ([fhID], [aID], [facID], [name]) VALUES (5, 9, NULL, N'mr.I')
SET IDENTITY_INSERT [dbo].[Factory_Header] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([rID], [name_role]) VALUES (1, N'Worker')
INSERT [dbo].[Role] ([rID], [name_role]) VALUES (2, N'Factory Header')
INSERT [dbo].[Role] ([rID], [name_role]) VALUES (3, N'Planer')
INSERT [dbo].[Role] ([rID], [name_role]) VALUES (4, N'Human resourse manager')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Shift] ON 

INSERT [dbo].[Shift] ([sID], [facID], [name], [start], [to]) VALUES (1, 1, N'Ca 1', CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[Shift] ([sID], [facID], [name], [start], [to]) VALUES (2, 1, N'Ca 2', CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[Shift] ([sID], [facID], [name], [start], [to]) VALUES (3, 1, N'Ca 3', CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[Shift] ([sID], [facID], [name], [start], [to]) VALUES (4, 2, N'Ca 1', CAST(N'07:00:00' AS Time), CAST(N'11:00:00' AS Time))
INSERT [dbo].[Shift] ([sID], [facID], [name], [start], [to]) VALUES (5, 2, N'Ca 2', CAST(N'11:00:00' AS Time), CAST(N'15:00:00' AS Time))
INSERT [dbo].[Shift] ([sID], [facID], [name], [start], [to]) VALUES (6, 2, N'Ca 3', CAST(N'15:00:00' AS Time), CAST(N'19:00:00' AS Time))
INSERT [dbo].[Shift] ([sID], [facID], [name], [start], [to]) VALUES (7, 3, N'Ca 1', CAST(N'06:00:00' AS Time), CAST(N'10:00:00' AS Time))
INSERT [dbo].[Shift] ([sID], [facID], [name], [start], [to]) VALUES (8, 3, N'Ca 2', CAST(N'10:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Shift] ([sID], [facID], [name], [start], [to]) VALUES (9, 3, N'Ca 3', CAST(N'14:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[Shift] ([sID], [facID], [name], [start], [to]) VALUES (10, 4, N'Ca 1', CAST(N'06:00:00' AS Time), CAST(N'10:00:00' AS Time))
INSERT [dbo].[Shift] ([sID], [facID], [name], [start], [to]) VALUES (11, 4, N'Ca 2', CAST(N'11:00:00' AS Time), CAST(N'15:00:00' AS Time))
INSERT [dbo].[Shift] ([sID], [facID], [name], [start], [to]) VALUES (12, 4, N'Ca 3', CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[Shift] OFF
GO
SET IDENTITY_INSERT [dbo].[User_infor] ON 

INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob]) VALUES (1, 1, N'mr.A', 1, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob]) VALUES (2, 2, N'mr.B', 0, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob]) VALUES (3, 3, N'mr.C', 1, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob]) VALUES (4, 4, N'mr.D', 0, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob]) VALUES (5, 5, NULL, 1, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob]) VALUES (6, 6, NULL, 1, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob]) VALUES (7, 7, NULL, 1, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob]) VALUES (8, 8, NULL, 0, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob]) VALUES (9, 9, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[User_infor] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK__Account__rID__3D5E1FD2] FOREIGN KEY([rID])
REFERENCES [dbo].[Role] ([rID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK__Account__rID__3D5E1FD2]
GO
ALTER TABLE [dbo].[Customer_Order]  WITH CHECK ADD  CONSTRAINT [FK__Customer_Or__pID__48CFD27E] FOREIGN KEY([pID])
REFERENCES [dbo].[Product] ([pID])
GO
ALTER TABLE [dbo].[Customer_Order] CHECK CONSTRAINT [FK__Customer_Or__pID__48CFD27E]
GO
ALTER TABLE [dbo].[Daily_Worker]  WITH CHECK ADD  CONSTRAINT [FK__Daily_Worke__sID__6754599E] FOREIGN KEY([sID])
REFERENCES [dbo].[Shift] ([sID])
GO
ALTER TABLE [dbo].[Daily_Worker] CHECK CONSTRAINT [FK__Daily_Worke__sID__6754599E]
GO
ALTER TABLE [dbo].[Daily_Worker]  WITH CHECK ADD  CONSTRAINT [FK__Daily_Worke__wID__66603565] FOREIGN KEY([wID])
REFERENCES [dbo].[Worker] ([wID])
GO
ALTER TABLE [dbo].[Daily_Worker] CHECK CONSTRAINT [FK__Daily_Worke__wID__66603565]
GO
ALTER TABLE [dbo].[Factory_Header]  WITH CHECK ADD  CONSTRAINT [FK__Factory_H__facID__4F7CD00D] FOREIGN KEY([facID])
REFERENCES [dbo].[Factory] ([facID])
GO
ALTER TABLE [dbo].[Factory_Header] CHECK CONSTRAINT [FK__Factory_H__facID__4F7CD00D]
GO
ALTER TABLE [dbo].[Factory_Header]  WITH CHECK ADD  CONSTRAINT [FK__Factory_Hea__aID__4E88ABD4] FOREIGN KEY([aID])
REFERENCES [dbo].[Account] ([aID])
GO
ALTER TABLE [dbo].[Factory_Header] CHECK CONSTRAINT [FK__Factory_Hea__aID__4E88ABD4]
GO
ALTER TABLE [dbo].[Human_rss_management]  WITH CHECK ADD  CONSTRAINT [FK__Human_rss_m__aID__52593CB8] FOREIGN KEY([aID])
REFERENCES [dbo].[Account] ([aID])
GO
ALTER TABLE [dbo].[Human_rss_management] CHECK CONSTRAINT [FK__Human_rss_m__aID__52593CB8]
GO
ALTER TABLE [dbo].[Month_Shift_Plan]  WITH CHECK ADD  CONSTRAINT [FK__Month_Shi__facID__619B8048] FOREIGN KEY([facID])
REFERENCES [dbo].[Factory] ([facID])
GO
ALTER TABLE [dbo].[Month_Shift_Plan] CHECK CONSTRAINT [FK__Month_Shi__facID__619B8048]
GO
ALTER TABLE [dbo].[Month_Shift_Plan]  WITH CHECK ADD  CONSTRAINT [FK__Month_Shift__sID__6383C8BA] FOREIGN KEY([sID])
REFERENCES [dbo].[Shift] ([sID])
GO
ALTER TABLE [dbo].[Month_Shift_Plan] CHECK CONSTRAINT [FK__Month_Shift__sID__6383C8BA]
GO
ALTER TABLE [dbo].[Month_Shift_Plan]  WITH CHECK ADD  CONSTRAINT [FK__Month_Shift__wID__628FA481] FOREIGN KEY([wID])
REFERENCES [dbo].[Worker] ([wID])
GO
ALTER TABLE [dbo].[Month_Shift_Plan] CHECK CONSTRAINT [FK__Month_Shift__wID__628FA481]
GO
ALTER TABLE [dbo].[MSP_Worker]  WITH CHECK ADD  CONSTRAINT [FK__MSP_Worker__msID__6B24EA82] FOREIGN KEY([msID])
REFERENCES [dbo].[Month_Shift_Plan] ([msID])
GO
ALTER TABLE [dbo].[MSP_Worker] CHECK CONSTRAINT [FK__MSP_Worker__msID__6B24EA82]
GO
ALTER TABLE [dbo].[MSP_Worker]  WITH CHECK ADD  CONSTRAINT [FK__MSP_Worker__wID__6A30C649] FOREIGN KEY([wID])
REFERENCES [dbo].[Worker] ([wID])
GO
ALTER TABLE [dbo].[MSP_Worker] CHECK CONSTRAINT [FK__MSP_Worker__wID__6A30C649]
GO
ALTER TABLE [dbo].[Plan_detail]  WITH CHECK ADD  CONSTRAINT [FK__Plan_deta__facID__6FE99F9F] FOREIGN KEY([facID])
REFERENCES [dbo].[Factory] ([facID])
GO
ALTER TABLE [dbo].[Plan_detail] CHECK CONSTRAINT [FK__Plan_deta__facID__6FE99F9F]
GO
ALTER TABLE [dbo].[Plan_detail]  WITH CHECK ADD  CONSTRAINT [FK__Plan_deta__plane__70DDC3D8] FOREIGN KEY([planerID])
REFERENCES [dbo].[Planer] ([planerID])
GO
ALTER TABLE [dbo].[Plan_detail] CHECK CONSTRAINT [FK__Plan_deta__plane__70DDC3D8]
GO
ALTER TABLE [dbo].[Plan_detail]  WITH CHECK ADD  CONSTRAINT [FK__Plan_detail__oID__6EF57B66] FOREIGN KEY([oID])
REFERENCES [dbo].[Customer_Order] ([oID])
GO
ALTER TABLE [dbo].[Plan_detail] CHECK CONSTRAINT [FK__Plan_detail__oID__6EF57B66]
GO
ALTER TABLE [dbo].[Plan_detail]  WITH CHECK ADD  CONSTRAINT [FK__Plan_detail__pID__6E01572D] FOREIGN KEY([pID])
REFERENCES [dbo].[Product] ([pID])
GO
ALTER TABLE [dbo].[Plan_detail] CHECK CONSTRAINT [FK__Plan_detail__pID__6E01572D]
GO
ALTER TABLE [dbo].[Planer]  WITH CHECK ADD  CONSTRAINT [FK__Planer__aID__4BAC3F29] FOREIGN KEY([aID])
REFERENCES [dbo].[Account] ([aID])
GO
ALTER TABLE [dbo].[Planer] CHECK CONSTRAINT [FK__Planer__aID__4BAC3F29]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK__Role_Featur__fID__59063A47] FOREIGN KEY([fID])
REFERENCES [dbo].[Feature] ([fID])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK__Role_Featur__fID__59063A47]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK__Role_Featur__rID__5812160E] FOREIGN KEY([rID])
REFERENCES [dbo].[Role] ([rID])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK__Role_Featur__rID__5812160E]
GO
ALTER TABLE [dbo].[Salary]  WITH CHECK ADD  CONSTRAINT [FK__Salary__wID__5EBF139D] FOREIGN KEY([wID])
REFERENCES [dbo].[Worker] ([wID])
GO
ALTER TABLE [dbo].[Salary] CHECK CONSTRAINT [FK__Salary__wID__5EBF139D]
GO
ALTER TABLE [dbo].[Salary_Base]  WITH CHECK ADD  CONSTRAINT [FK__Salary_Base__rID__5BE2A6F2] FOREIGN KEY([rID])
REFERENCES [dbo].[Role] ([rID])
GO
ALTER TABLE [dbo].[Salary_Base] CHECK CONSTRAINT [FK__Salary_Base__rID__5BE2A6F2]
GO
ALTER TABLE [dbo].[Shift]  WITH CHECK ADD  CONSTRAINT [FK__Shift__facID__45F365D3] FOREIGN KEY([facID])
REFERENCES [dbo].[Factory] ([facID])
GO
ALTER TABLE [dbo].[Shift] CHECK CONSTRAINT [FK__Shift__facID__45F365D3]
GO
ALTER TABLE [dbo].[User_infor]  WITH CHECK ADD  CONSTRAINT [FK__User_infor__aID__5535A963] FOREIGN KEY([aID])
REFERENCES [dbo].[Account] ([aID])
GO
ALTER TABLE [dbo].[User_infor] CHECK CONSTRAINT [FK__User_infor__aID__5535A963]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK__Worker__aID__4222D4EF] FOREIGN KEY([aID])
REFERENCES [dbo].[Account] ([aID])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK__Worker__aID__4222D4EF]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK__Worker__facID__4316F928] FOREIGN KEY([facID])
REFERENCES [dbo].[Factory] ([facID])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK__Worker__facID__4316F928]
GO
USE [master]
GO
ALTER DATABASE [ABC Production Scheduling System] SET  READ_WRITE 
GO
