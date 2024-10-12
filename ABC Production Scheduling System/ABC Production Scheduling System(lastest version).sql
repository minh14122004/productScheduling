USE [master]
GO
/****** Object:  Database [ABC Production Scheduling System]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Customer_Order]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Daily_Worker]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Factory]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Factory_Header]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Feature]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Human_rss_management]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Month_Shift_Plan]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[MSP_Worker]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Plan_detail]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Planer]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Salary]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Salary_Base]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[Shift]    Script Date: 10/12/2024 5:04:23 PM ******/
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
/****** Object:  Table [dbo].[User_infor]    Script Date: 10/12/2024 5:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_infor](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[aID] [int] NOT NULL,
	[name] [nvarchar](100) NULL,
	[gender] [bit] NULL,
	[dob] [date] NULL,
	[email] [varchar](100) NULL,
	[address] [nvarchar](150) NULL,
	[image] [varchar](150) NULL,
 CONSTRAINT [PK__User_inf__DD771E3C6EAB7AD5] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 10/12/2024 5:04:23 PM ******/
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
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([pID], [Prodcut_name], [estimated]) VALUES (1, N'Giỏ', 2)
INSERT [dbo].[Product] ([pID], [Prodcut_name], [estimated]) VALUES (2, N'Thúng', 1)
INSERT [dbo].[Product] ([pID], [Prodcut_name], [estimated]) VALUES (3, N'Mẹt', 1)
INSERT [dbo].[Product] ([pID], [Prodcut_name], [estimated]) VALUES (4, N'Ghế', 4)
INSERT [dbo].[Product] ([pID], [Prodcut_name], [estimated]) VALUES (5, N'Bàn', 12)
INSERT [dbo].[Product] ([pID], [Prodcut_name], [estimated]) VALUES (6, N'Rổ', 1)
INSERT [dbo].[Product] ([pID], [Prodcut_name], [estimated]) VALUES (7, N'Chụp đèn', 2)
INSERT [dbo].[Product] ([pID], [Prodcut_name], [estimated]) VALUES (8, N'Đó', 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
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

INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (1, 1, N'mr.A', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (2, 2, N'mr.B', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (3, 3, N'mr.C', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (4, 4, N'mr.D', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (5, 5, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (6, 6, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (7, 7, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (8, 8, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (9, 9, NULL, 0, NULL, NULL, NULL, NULL)
INSERT INTO User_infor (aID, [name], gender, dob, email, [address], image)
VALUES 
(10, 'Nguyễn Văn Cường', 1, '1990-05-12', 'cuong.nguyen10@gmail.com', N'Quận 1, Hồ Chí Minh', NULL),
(11, 'Lê Thị Hồng', 0, '1988-07-21', 'hong.le11@gmail.com', N'Quận 3, Hồ Chí Minh', NULL),
(12, 'Phạm Quốc Anh', 1, '1993-11-30', 'quocanh.pham12@gmail.com', N'Quận 5, Hồ Chí Minh', NULL),
(13, 'Trần Thị Mai', 0, '1996-01-15', 'mai.tran13@gmail.com', N'Quận 7, Hồ Chí Minh', NULL),
(14, 'Đỗ Thanh Sơn', 1, '1992-08-08', 'son.do14@gmail.com', N'Quận 10, Hồ Chí Minh', NULL),
(15, 'Ngô Thị Bích', 0, '1985-09-27', 'bich.ngo15@gmail.com', N'Quận Tân Bình, Hồ Chí Minh', NULL),
(16, 'Bùi Văn Tuấn', 1, '1991-02-04', 'tuan.bui16@gmail.com', N'Quận Bình Thạnh, Hồ Chí Minh', NULL),
(17, 'Vũ Thị Hoa', 0, '1994-03-23', 'hoa.vu17@gmail.com', N'Quận 2, Hồ Chí Minh', NULL),
(18, 'Trịnh Văn Hòa', 1, '1987-06-05', 'hoa.trinh18@gmail.com', N'Quận 9, Hồ Chí Minh', NULL),
(19, 'Hoàng Thị Nhung', 0, '1990-10-13', 'nhung.hoang19@gmail.com', N'Quận Thủ Đức, Hồ Chí Minh', NULL),
(20, 'Nguyễn Minh Tuấn', 1, '1994-04-11', 'tuan.nguyen20@gmail.com', N'Quận Phú Nhuận, Hồ Chí Minh', NULL),
(21, 'Lê Văn Kiên', 1, '1986-12-06', 'kien.le21@gmail.com', N'Quận Gò Vấp, Hồ Chí Minh', NULL),
(22, 'Trần Thị Kim', 0, '1995-03-18', 'kim.tran22@gmail.com', N'Quận Bình Tân, Hồ Chí Minh', NULL),
(23, 'Ngô Văn Hưng', 1, '1992-07-15', 'hung.ngo23@gmail.com', N'Quận Tân Phú, Hồ Chí Minh', NULL),
(24, 'Phạm Thị Lệ', 0, '1991-10-24', 'le.pham24@gmail.com', N'Quận Nhà Bè, Hồ Chí Minh', NULL),
(25, 'Bùi Văn Dũng', 1, '1989-09-12', 'dung.bui25@gmail.com', N'Quận Cần Giờ, Hồ Chí Minh', NULL),
(26, 'Vũ Thị Hằng', 0, '1990-11-30', 'hang.vu26@gmail.com', N'Quận Hóc Môn, Hồ Chí Minh', NULL),
(27, 'Trần Văn Tài', 1, '1993-01-14', 'tai.tran27@gmail.com', N'Quận 1, Hồ Chí Minh', NULL),
(28, 'Nguyễn Thị Nga', 0, '1988-08-22', 'nga.nguyen28@gmail.com', N'Quận 5, Hồ Chí Minh', NULL),
(29, 'Đỗ Văn Hải', 1, '1994-06-30', 'hai.do29@gmail.com', N'Quận 10, Hồ Chí Minh', NULL),
(30, 'Lê Văn Lâm', 1, '1987-03-05', 'lam.le30@gmail.com', N'Quận 3, Hồ Chí Minh', NULL),
(31, 'Nguyễn Thị Lan', 0, '1995-02-15', 'lan.nguyen31@gmail.com', N'Quận 7, Hồ Chí Minh', NULL),
(32, 'Phạm Minh Khôi', 1, '1991-05-21', 'khoi.pham32@gmail.com', N'Quận 9, Hồ Chí Minh', NULL),
(33, 'Bùi Thị Nhã', 0, '1996-07-18', 'nha.bui33@gmail.com', N'Quận Thủ Đức, Hồ Chí Minh', NULL),
(34, 'Ngô Văn Tân', 1, '1989-08-27', 'tan.ngo34@gmail.com', N'Quận Gò Vấp, Hồ Chí Minh', NULL),
(35, 'Vũ Văn Cảnh', 1, '1992-04-09', 'canh.vu35@gmail.com', N'Quận Bình Thạnh, Hồ Chí Minh', NULL),
(36, 'Trần Thị Tuyết', 0, '1990-10-11', 'tuyet.tran36@gmail.com', N'Quận Phú Nhuận, Hồ Chí Minh', NULL),
(37, 'Lê Minh Thông', 1, '1988-09-30', 'thong.le37@gmail.com', N'Quận Tân Bình, Hồ Chí Minh', NULL),
(38, 'Nguyễn Văn Tiến', 1, '1991-01-05', 'tien.nguyen38@gmail.com', N'Quận Bình Tân, Hồ Chí Minh', NULL),
(39, 'Đỗ Thị Yến', 0, '1995-12-17', 'yen.do39@gmail.com', N'Quận 1, Hồ Chí Minh', NULL),
(40, 'Ngô Văn Hoàng', 1, '1993-06-04', 'hoang.ngo40@gmail.com', N'Quận 2, Hồ Chí Minh', NULL),
(41, 'Phạm Thị Cúc', 0, '1990-11-19', 'cuc.pham41@gmail.com', N'Quận 3, Hồ Chí Minh', NULL),
(42, 'Bùi Văn Nguyên', 1, '1986-08-16', 'nguyen.bui42@gmail.com', N'Quận 5, Hồ Chí Minh', NULL),
(43, 'Lê Thị Cẩm', 0, '1992-07-20', 'cam.le43@gmail.com', N'Quận 7, Hồ Chí Minh', NULL),
(44, 'Nguyễn Văn Quốc', 1, '1994-02-03', 'quoc.nguyen44@gmail.com', N'Quận 10, Hồ Chí Minh', NULL),
(45, 'Trần Thị Lý', 0, '1995-09-11', 'ly.tran45@gmail.com', N'Quận Thủ Đức, Hồ Chí Minh', NULL),
(46, 'Vũ Văn Đức', 1, '1991-05-29', 'duc.vu46@gmail.com', N'Quận Gò Vấp, Hồ Chí Minh', NULL),
(47, 'Ngô Thị Tâm', 0, '1988-04-10', 'tam.ngo47@gmail.com', N'Quận Bình Thạnh, Hồ Chí Minh', NULL),
(48, 'Bùi Văn Thạnh', 1, '1993-03-22', 'thanh.bui48@gmail.com', N'Quận Phú Nhuận, Hồ Chí Minh', NULL),
(49, 'Phạm Thị Vân', 0, '1990-06-28', 'van.pham49@gmail.com', N'Quận 2, Hồ Chí Minh', NULL),
(50, 'Lê Văn Thái', 1, '1992-12-15', 'thai.le50@gmail.com', N'Quận 9, Hồ Chí Minh', NULL),
(51, 'Trần Thị Bích', 0, '1986-01-20', 'bich.tran51@gmail.com', N'Quận 1, Hồ Chí Minh', NULL),
(52, 'Nguyễn Minh Phương', 1, '1994-05-25', 'phuong.nguyen52@gmail.com', N'Quận 10, Hồ Chí Minh', NULL),
(53, 'Bùi Thị Ngọc', 0, '1993-02-07', 'ngoc.bui53@gmail.com', N'Quận 3, Hồ Chí Minh', NULL),
(54, 'Đỗ Văn Bình', 1, '1989-04-02', 'binh.do54@gmail.com', N'Quận 7, Hồ Chí Minh', NULL),
(55, 'Ngô Văn Hưng', 1, '1992-08-14', 'hung.ngo55@gmail.com', N'Quận Bình Tân, Hồ Chí Minh', NULL),
(56, 'Trần Thị Duyên', 0, '1995-12-01', 'duyen.tran56@gmail.com', N'Quận 5, Hồ Chí Minh', NULL),
(57, 'Phạm Minh Hoàng', 1, '1988-03-15', 'hoang.pham57@gmail.com', N'Quận 9, Hồ Chí Minh', NULL),
(58, 'Lê Văn Quang', 1, '1990-11-28', 'quang.le58@gmail.com', N'Quận Thủ Đức, Hồ Chí Minh', NULL),
(59, 'Vũ Thị Hòa', 0, '1992-09-19', 'hoa.vu59@gmail.com', N'Quận Gò Vấp, Hồ Chí Minh', NULL),
(60, 'Nguyễn Văn Bình', 1, '1991-04-11', 'binh.nguyen60@gmail.com', N'Quận Tân Bình, Hồ Chí Minh', NULL);
-- Insert data from aID 61 to 108 for the User_infor table
INSERT INTO [dbo].[User_infor] ([aID], [name], [gender], [dob], [email], [address], [image]) VALUES
(61, 'Phạm Quang Minh', 1, '1992-09-12', 'phamminh61@gmail.com', N'Quận Ba Đình, Hà Nội', NULL),
(62, 'Trần Khánh Linh', 0, '1987-12-08', 'khanhlinh62@gmail.com', N'Quận Cầu Giấy, Hà Nội', NULL),
(63, 'Nguyễn Minh Khoa', 1, '1993-01-15', 'minhkhoa63@gmail.com', N'Quận Đống Đa, Hà Nội', NULL),
(64, 'Lê Hoàng Yến', 0, '1991-03-22', 'hoangyen64@gmail.com', N'Quận Hai Bà Trưng, Hà Nội', NULL),
(65, 'Đặng Văn Long', 1, '1989-07-14', 'vanlong65@gmail.com', N'Quận Long Biên, Hà Nội', NULL),
(66, 'Nguyễn Ngọc Lan', 0, '1994-11-03', 'ngoclan66@gmail.com', N'Quận Hoàng Mai, Hà Nội', NULL),
(67, 'Bùi Xuân Trường', 1, '1992-05-18', 'xuantruong67@gmail.com', N'Quận Thanh Xuân, Hà Nội', NULL),
(68, 'Dương Thị Thảo', 0, '1985-10-10', 'thithao68@gmail.com', N'Quận Tây Hồ, Hà Nội', NULL),
(69, 'Ngô Văn An', 1, '1990-09-29', 'vanan69@gmail.com', N'Quận Hoàn Kiếm, Hà Nội', NULL),
(70, 'Vũ Hữu Đạt', 1, '1995-06-16', 'huudat70@gmail.com', N'Quận Đống Đa, Hà Nội', NULL),
(71, 'Phạm Thị Ngọc', 0, '1996-08-23', 'thngoc71@gmail.com', N'Quận Cầu Giấy, Hà Nội', NULL),
(72, 'Trần Hoài Nam', 1, '1991-01-02', 'hoainam72@gmail.com', N'Quận Hai Bà Trưng, Hà Nội', NULL),
(73, 'Lý Mạnh Hùng', 1, '1986-04-12', 'manhhung73@gmail.com', N'Quận Ba Đình, Hà Nội', NULL),
(74, 'Trần Anh Thư', 0, '1992-05-25', 'anhthu74@gmail.com', N'Quận Hoàn Kiếm, Hà Nội', NULL),
(75, 'Đặng Văn Toàn', 1, '1988-03-09', 'vantoan75@gmail.com', N'Quận Long Biên, Hà Nội', NULL),
(76, 'Nguyễn Thu Hà', 0, '1990-12-30', 'thuha76@gmail.com', N'Quận Thanh Xuân, Hà Nội', NULL),
(77, 'Bùi Thanh Bình', 1, '1994-07-08', 'thanhbinh77@gmail.com', N'Quận Hoàng Mai, Hà Nội', NULL),
(78, 'Nguyễn Văn Quý', 1, '1989-11-26', 'vanquy78@gmail.com', N'Quận Ba Đình, Hà Nội', NULL),
(79, 'Phạm Minh Hạnh', 0, '1993-06-14', 'minhhanh79@gmail.com', N'Quận Đống Đa, Hà Nội', NULL),
(80, 'Nguyễn Đức Tuấn', 1, '1991-04-20', 'ductuan80@gmail.com', N'Quận Cầu Giấy, Hà Nội', NULL),
(81, 'Đỗ Văn Hải', 1, '1987-08-05', 'vanhai81@gmail.com', N'Quận Hai Bà Trưng, Hà Nội', NULL),
(82, 'Lê Văn Dũng', 1, '1986-02-28', 'vandung82@gmail.com', N'Quận Tây Hồ, Hà Nội', NULL),
(83, 'Hoàng Thị Hồng', 0, '1995-07-10', 'honghoang83@gmail.com', N'Quận Hoàng Mai, Hà Nội', NULL),
(84, 'Đinh Minh Nguyệt', 0, '1992-09-06', 'minhnguyet84@gmail.com', N'Quận Hoàn Kiếm, Hà Nội', NULL),
(85, 'Nguyễn Văn Thái', 1, '1989-03-23', 'vanthai85@gmail.com', N'Quận Ba Đình, Hà Nội', NULL),
(86, 'Phạm Hải Đăng', 1, '1994-12-22', 'haidang86@gmail.com', N'Quận Đống Đa, Hà Nội', NULL),
(87, 'Lê Bảo Trâm', 0, '1991-04-14', 'baotram87@gmail.com', N'Quận Cầu Giấy, Hà Nội', NULL),
(88, 'Ngô Minh Châu', 0, '1995-06-25', 'minhchau88@gmail.com', N'Quận Hai Bà Trưng, Hà Nội', NULL),
(89, 'Trương Văn Tú', 1, '1987-11-18', 'vantutruong89@gmail.com', N'Quận Hoàn Kiếm, Hà Nội', NULL),
(90, 'Phan Thị Quỳnh', 0, '1993-07-12', 'thiquynh90@gmail.com', N'Quận Tây Hồ, Hà Nội', NULL),
(91, 'Đỗ Văn Tùng', 1, '1992-01-27', 'vantung91@gmail.com', N'Quận Ba Đình, Hà Nội', NULL),
(92, 'Hoàng Quốc Anh', 1, '1988-05-21', 'quocanh92@gmail.com', N'Quận Hoàng Mai, Hà Nội', NULL),
(93, 'Nguyễn Thị Hương', 0, '1995-09-08', 'thihoanghuong93@gmail.com', N'Quận Thanh Xuân, Hà Nội', NULL),
(94, 'Phạm Ngọc Trinh', 0, '1992-03-29', 'ngoctrihn94@gmail.com', N'Quận Long Biên, Hà Nội', NULL),
(95, 'Nguyễn Văn Đạt', 1, '1987-10-14', 'vandat95@gmail.com', N'Quận Hoàn Kiếm, Hà Nội', NULL),
(96, 'Trần Minh Quân', 1, '1993-02-11', 'minhquan96@gmail.com', N'Quận Ba Đình, Hà Nội', NULL),
(97, 'Lê Thị Lan', 0, '1990-07-19', 'thilan97@gmail.com', N'Quận Hai Bà Trưng, Hà Nội', NULL),
(98, 'Phan Xuân Dương', 1, '1994-09-24', 'xuanduong98@gmail.com', N'Quận Đống Đa, Hà Nội', NULL),
(99, 'Nguyễn Thị Thu', 0, '1991-06-07', 'thithu99@gmail.com', N'Quận Tây Hồ, Hà Nội', NULL),
(100, 'Vũ Thị Ánh', 0, '1995-11-15', 'thianh100@gmail.com', N'Quận Hoàng Mai, Hà Nội', NULL),
(101, 'Lê Văn Quang', 1, '1989-03-31', 'vanquang101@gmail.com', N'Quận Long Biên, Hà Nội', NULL),
(102, 'Nguyễn Thuỳ Linh', 0, '1992-06-21', 'thuylinh102@gmail.com', N'Quận Hoàn Kiếm, Hà Nội', NULL),
(103, 'Bùi Văn Bình', 1, '1990-12-17', 'vanbinh103@gmail.com', N'Quận Cầu Giấy, Hà Nội', NULL),
(104, 'Phan Văn Đông', 1, '1987-09-28', 'vandong104@gmail.com', N'Quận Đống Đa, Hà Nội', NULL),
(105, 'Nguyễn Thị Ngọc', 0, '1994-10-09', 'thngoc105@gmail.com', N'Quận Thanh Xuân, Hà Nội', NULL);
-- Insert data from aID 106 to 108 for the User_infor table
INSERT INTO [dbo].[User_infor] ([aID], [name], [gender], [dob], [email], [address], [image]) VALUES
(106, 'Lê Phước Hưng', 1, '1986-04-04', 'phuochung106@gmail.com', N'Quận Thanh Xuân, Hà Nội', NULL),
(107, 'Võ Minh Quân', 1, '1992-02-13', 'minhquan107@gmail.com', N'Quận Cầu Giấy, Hà Nội', NULL),
(108, 'Nguyễn Thanh Vân', 0, '1991-09-30', 'thanhvan108@gmail.com', N'Quận Ba Đình, Hà Nội', NULL);


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
