/****** Object:  Database [ABC Production Scheduling System]    Script Date: 10/17/2024 12:57:11 PM ******/
CREATE DATABASE [ABC Production Scheduling System]
GO
USE [ABC Production Scheduling System]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/17/2024 12:57:11 PM ******/
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
/****** Object:  Table [dbo].[Customer_Order]    Script Date: 10/17/2024 12:57:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Order](
	[oID] [int] IDENTITY(1,1) NOT NULL,
	[number_order] [int] NULL,
	[pID] [int] NULL,
	[Quantity] [int] NULL,
	[done] [bit] NULL,
	[date] [date] NULL,
 CONSTRAINT [PK__Customer__C2FECB1BDF948D47] PRIMARY KEY CLUSTERED 
(
	[oID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Daily_Worker]    Script Date: 10/17/2024 12:57:11 PM ******/
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
/****** Object:  Table [dbo].[Factory]    Script Date: 10/17/2024 12:57:11 PM ******/
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
/****** Object:  Table [dbo].[Factory_Header]    Script Date: 10/17/2024 12:57:11 PM ******/
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
/****** Object:  Table [dbo].[Feature]    Script Date: 10/17/2024 12:57:11 PM ******/
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
/****** Object:  Table [dbo].[Human_rss_management]    Script Date: 10/17/2024 12:57:11 PM ******/
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
/****** Object:  Table [dbo].[Plan_detail]    Script Date: 10/17/2024 12:57:11 PM ******/
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
/****** Object:  Table [dbo].[Planer]    Script Date: 10/17/2024 12:57:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planer](
	[planerID] [int] IDENTITY(1,1) NOT NULL,
	[aID] [int] NOT NULL,
	[name] [nvarchar](100) NULL,
 CONSTRAINT [PK__Planer__42B303316FFE0A9E] PRIMARY KEY CLUSTERED 
(
	[planerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/17/2024 12:57:11 PM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 10/17/2024 12:57:11 PM ******/
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
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 10/17/2024 12:57:11 PM ******/
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
/****** Object:  Table [dbo].[Salary]    Script Date: 10/17/2024 12:57:11 PM ******/
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
/****** Object:  Table [dbo].[Salary_Base]    Script Date: 10/17/2024 12:57:11 PM ******/
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
/****** Object:  Table [dbo].[Shift]    Script Date: 10/17/2024 12:57:11 PM ******/
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
/****** Object:  Table [dbo].[Total_Product]    Script Date: 10/17/2024 12:57:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Total_Product](
	[tID] [int] IDENTITY(1,1) NOT NULL,
	[facID] [int] NULL,
	[pID] [int] NULL,
	[amount] [int] NULL,
 CONSTRAINT [PK__Total_Pr__DC11570777989D24] PRIMARY KEY CLUSTERED 
(
	[tID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_infor]    Script Date: 10/17/2024 12:57:11 PM ******/
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
/****** Object:  Table [dbo].[Worker]    Script Date: 10/17/2024 12:57:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[wID] [int] IDENTITY(1,1) NOT NULL,
	[aID] [int] NOT NULL,
	[facID] [int] NOT NULL,
	[sID] [int] NULL,
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
SET IDENTITY_INSERT [dbo].[Customer_Order] ON 

INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (1, 1, 1, 150, 0, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (2, 1, 2, 300, 0, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (3, 2, 3, 500, 1, CAST(N'2024-10-02' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (4, 2, 4, 200, 1, CAST(N'2024-10-02' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (5, 2, 5, 100, 1, CAST(N'2024-10-02' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (6, 3, 6, 750, 0, CAST(N'2024-10-03' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (7, 4, 2, 250, 1, CAST(N'2024-10-04' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (8, 4, 3, 400, 1, CAST(N'2024-10-04' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (9, 4, 7, 800, 1, CAST(N'2024-10-04' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (10, 4, 8, 650, 1, CAST(N'2024-10-04' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (11, 5, 5, 100, 0, CAST(N'2024-10-05' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (12, 5, 6, 300, 0, CAST(N'2024-10-05' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (13, 6, 8, 600, 1, CAST(N'2024-10-06' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (14, 7, 1, 200, 0, CAST(N'2024-10-07' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (15, 7, 7, 400, 0, CAST(N'2024-10-07' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (16, 8, 2, 350, 1, CAST(N'2024-10-08' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (17, 8, 5, 900, 1, CAST(N'2024-10-08' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (18, 8, 6, 150, 1, CAST(N'2024-10-08' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (19, 9, 3, 500, 0, CAST(N'2024-10-09' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (20, 10, 7, 850, 1, CAST(N'2024-10-10' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (21, 10, 8, 700, 0, CAST(N'2024-10-10' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (22, 11, 1, 100, 0, CAST(N'2024-10-11' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (23, 11, 3, 250, 0, CAST(N'2024-10-11' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (24, 11, 4, 450, 0, CAST(N'2024-10-11' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (25, 12, 6, 650, 1, CAST(N'2024-10-12' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (26, 13, 5, 300, 0, CAST(N'2024-10-13' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (27, 13, 7, 400, 0, CAST(N'2024-10-13' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (28, 14, 2, 500, 0, CAST(N'2024-10-14' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (29, 14, 4, 300, 0, CAST(N'2024-10-14' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (30, 14, 6, 1000, 0, CAST(N'2024-10-14' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (31, 14, 8, 750, 0, CAST(N'2024-10-14' AS Date))
INSERT [dbo].[Customer_Order] ([oID], [number_order], [pID], [Quantity], [done], [date]) VALUES (32, 15, 1, 900, 0, CAST(N'2024-10-15' AS Date))
SET IDENTITY_INSERT [dbo].[Customer_Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Factory] ON 

INSERT [dbo].[Factory] ([facID], [Factory_name]) VALUES (1, N'F1')
INSERT [dbo].[Factory] ([facID], [Factory_name]) VALUES (2, N'F2')
INSERT [dbo].[Factory] ([facID], [Factory_name]) VALUES (3, N'K1')
INSERT [dbo].[Factory] ([facID], [Factory_name]) VALUES (4, N'K2')
INSERT [dbo].[Factory] ([facID], [Factory_name]) VALUES (5, N'T1')
INSERT [dbo].[Factory] ([facID], [Factory_name]) VALUES (6, N'H1')
INSERT [dbo].[Factory] ([facID], [Factory_name]) VALUES (7, N'H2')
INSERT [dbo].[Factory] ([facID], [Factory_name]) VALUES (8, N'H3')
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
SET IDENTITY_INSERT [dbo].[Plan_detail] ON 

INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (1, CAST(N'2024-10-12' AS Date), 1, 1, 1, 1, 20, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (2, CAST(N'2024-10-12' AS Date), 1, 1, 2, 1, 30, NULL, 0)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (3, CAST(N'2024-10-12' AS Date), 1, 1, 3, 1, 40, NULL, 0)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (4, CAST(N'2024-10-12' AS Date), 1, 1, 4, 1, 60, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (5, CAST(N'2024-10-13' AS Date), 2, 2, 1, 3, 50, NULL, 0)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (6, CAST(N'2024-10-13' AS Date), 2, 2, 2, 3, 100, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (7, CAST(N'2024-10-13' AS Date), 2, 2, 3, 3, 150, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (8, CAST(N'2024-10-14' AS Date), 3, 3, 4, 3, 100, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (9, CAST(N'2024-10-14' AS Date), 3, 3, 5, 3, 150, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (10, CAST(N'2024-10-14' AS Date), 3, 3, 6, 3, 250, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (11, CAST(N'2024-10-15' AS Date), 4, 4, 1, 4, 100, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (12, CAST(N'2024-10-15' AS Date), 4, 4, 2, 4, 100, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (13, CAST(N'2024-10-16' AS Date), 5, 5, 1, 2, 50, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (14, CAST(N'2024-10-16' AS Date), 5, 5, 2, 2, 50, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (15, CAST(N'2024-10-17' AS Date), 6, 6, 1, 1, 300, NULL, 0)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (16, CAST(N'2024-10-17' AS Date), 6, 6, 2, 1, 200, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (17, CAST(N'2024-10-17' AS Date), 6, 6, 3, 1, 250, NULL, 0)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (18, CAST(N'2024-10-18' AS Date), 2, 7, 1, 7, 100, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (19, CAST(N'2024-10-18' AS Date), 2, 7, 2, 7, 150, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (20, CAST(N'2024-10-19' AS Date), 3, 8, 1, 8, 100, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (21, CAST(N'2024-10-19' AS Date), 3, 8, 2, 8, 150, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (22, CAST(N'2024-10-19' AS Date), 3, 8, 3, 8, 150, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (23, CAST(N'2024-10-20' AS Date), 7, 9, 1, 3, 300, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (24, CAST(N'2024-10-20' AS Date), 7, 9, 2, 3, 500, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (25, CAST(N'2024-10-21' AS Date), 8, 10, 1, 1, 200, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (26, CAST(N'2024-10-21' AS Date), 8, 10, 2, 1, 250, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (27, CAST(N'2024-10-21' AS Date), 8, 10, 3, 1, 200, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (28, CAST(N'2024-10-22' AS Date), 5, 11, 1, 2, 50, NULL, 0)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (29, CAST(N'2024-10-22' AS Date), 5, 11, 2, 2, 50, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (30, CAST(N'2024-10-23' AS Date), 6, 12, 1, 2, 150, NULL, 0)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (31, CAST(N'2024-10-23' AS Date), 6, 12, 2, 2, 150, NULL, 0)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (32, CAST(N'2024-10-24' AS Date), 8, 13, 1, 3, 200, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (33, CAST(N'2024-10-24' AS Date), 8, 13, 2, 3, 200, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (34, CAST(N'2024-10-24' AS Date), 8, 13, 3, 3, 200, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (35, CAST(N'2024-10-25' AS Date), 1, 14, 1, 6, 100, NULL, 0)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (36, CAST(N'2024-10-25' AS Date), 1, 14, 2, 6, 100, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (37, CAST(N'2024-10-26' AS Date), 7, 15, 1, 8, 200, NULL, 0)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (38, CAST(N'2024-10-26' AS Date), 7, 15, 2, 8, 200, NULL, 0)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (39, CAST(N'2024-10-27' AS Date), 2, 16, 1, 4, 100, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (40, CAST(N'2024-10-27' AS Date), 2, 16, 2, 4, 150, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (41, CAST(N'2024-10-27' AS Date), 2, 16, 3, 4, 100, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (42, CAST(N'2024-10-28' AS Date), 5, 17, 1, 5, 300, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (43, CAST(N'2024-10-28' AS Date), 5, 17, 2, 5, 200, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (44, CAST(N'2024-10-28' AS Date), 5, 17, 3, 5, 400, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (45, CAST(N'2024-10-29' AS Date), 6, 18, 1, 8, 50, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (46, CAST(N'2024-10-29' AS Date), 6, 18, 2, 8, 50, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (47, CAST(N'2024-10-29' AS Date), 6, 18, 3, 8, 50, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (48, CAST(N'2024-10-30' AS Date), 3, 19, 1, 2, 150, NULL, 0)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (49, CAST(N'2024-10-30' AS Date), 3, 19, 2, 2, 200, NULL, 0)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (50, CAST(N'2024-10-30' AS Date), 3, 19, 3, 2, 150, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (51, CAST(N'2024-10-31' AS Date), 7, 20, 1, 4, 400, NULL, 1)
INSERT [dbo].[Plan_detail] ([pldID], [date], [pID], [oID], [facID], [planerID], [Quantity], [note], [done]) VALUES (52, CAST(N'2024-10-31' AS Date), 7, 20, 2, 4, 450, NULL, 1)
SET IDENTITY_INSERT [dbo].[Plan_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Planer] ON 

INSERT [dbo].[Planer] ([planerID], [aID], [name]) VALUES (1, 3, N'mr.C')
INSERT [dbo].[Planer] ([planerID], [aID], [name]) VALUES (2, 100, N'Vũ Thị Ánh')
INSERT [dbo].[Planer] ([planerID], [aID], [name]) VALUES (3, 101, N'Lê Văn Quang')
INSERT [dbo].[Planer] ([planerID], [aID], [name]) VALUES (4, 102, N'Nguyễn Thuỳ Linh')
INSERT [dbo].[Planer] ([planerID], [aID], [name]) VALUES (5, 103, N'Bùi Văn Bình')
INSERT [dbo].[Planer] ([planerID], [aID], [name]) VALUES (6, 104, N'Phan Văn Đông')
INSERT [dbo].[Planer] ([planerID], [aID], [name]) VALUES (7, 105, N'Nguyễn Thị Ngọc')
INSERT [dbo].[Planer] ([planerID], [aID], [name]) VALUES (8, 106, N'Lê Phước Hưng')
SET IDENTITY_INSERT [dbo].[Planer] OFF
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
SET IDENTITY_INSERT [dbo].[Total_Product] ON 

INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (1, 1, 1, 120)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (2, 1, 2, 250)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (3, 1, 3, 250)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (4, 1, 4, 100)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (5, 1, 5, 400)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (6, 1, 6, 500)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (7, 1, 7, 900)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (8, 1, 8, 400)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (9, 2, 1, 130)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (10, 2, 2, 400)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (11, 2, 3, 350)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (12, 2, 4, 100)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (13, 2, 5, 300)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (14, 2, 6, 400)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (15, 2, 7, 1150)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (16, 2, 8, 450)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (17, 3, 1, 40)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (18, 3, 2, 250)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (19, 3, 3, 300)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (20, 3, 5, 400)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (21, 3, 6, 300)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (22, 3, 8, 400)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (23, 4, 1, 60)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (24, 4, 3, 100)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (25, 5, 3, 150)
INSERT [dbo].[Total_Product] ([tID], [facID], [pID], [amount]) VALUES (26, 6, 3, 250)
SET IDENTITY_INSERT [dbo].[Total_Product] OFF
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
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (10, 10, N'Nguyễn Văn Cường', 1, CAST(N'1990-05-12' AS Date), N'cuong.nguyen10@gmail.com', N'Quận 1, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (11, 11, N'Lê Thị Hồng', 0, CAST(N'1988-07-21' AS Date), N'hong.le11@gmail.com', N'Quận 3, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (12, 12, N'Phạm Quốc Anh', 1, CAST(N'1993-11-30' AS Date), N'quocanh.pham12@gmail.com', N'Quận 5, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (13, 13, N'Trần Thị Mai', 0, CAST(N'1996-01-15' AS Date), N'mai.tran13@gmail.com', N'Quận 7, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (14, 14, N'Đỗ Thanh Sơn', 1, CAST(N'1992-08-08' AS Date), N'son.do14@gmail.com', N'Quận 10, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (15, 15, N'Ngô Thị Bích', 0, CAST(N'1985-09-27' AS Date), N'bich.ngo15@gmail.com', N'Quận Tân Bình, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (16, 16, N'Bùi Văn Tuấn', 1, CAST(N'1991-02-04' AS Date), N'tuan.bui16@gmail.com', N'Quận Bình Thạnh, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (17, 17, N'Vũ Thị Hoa', 0, CAST(N'1994-03-23' AS Date), N'hoa.vu17@gmail.com', N'Quận 2, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (18, 18, N'Trịnh Văn Hòa', 1, CAST(N'1987-06-05' AS Date), N'hoa.trinh18@gmail.com', N'Quận 9, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (19, 19, N'Hoàng Thị Nhung', 0, CAST(N'1990-10-13' AS Date), N'nhung.hoang19@gmail.com', N'Quận Thủ Đức, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (20, 20, N'Nguyễn Minh Tuấn', 1, CAST(N'1994-04-11' AS Date), N'tuan.nguyen20@gmail.com', N'Quận Phú Nhuận, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (21, 21, N'Lê Văn Kiên', 1, CAST(N'1986-12-06' AS Date), N'kien.le21@gmail.com', N'Quận Gò Vấp, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (22, 22, N'Trần Thị Kim', 0, CAST(N'1995-03-18' AS Date), N'kim.tran22@gmail.com', N'Quận Bình Tân, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (23, 23, N'Ngô Văn Hưng', 1, CAST(N'1992-07-15' AS Date), N'hung.ngo23@gmail.com', N'Quận Tân Phú, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (24, 24, N'Phạm Thị Lệ', 0, CAST(N'1991-10-24' AS Date), N'le.pham24@gmail.com', N'Quận Nhà Bè, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (25, 25, N'Bùi Văn Dũng', 1, CAST(N'1989-09-12' AS Date), N'dung.bui25@gmail.com', N'Quận Cần Giờ, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (26, 26, N'Vũ Thị Hằng', 0, CAST(N'1990-11-30' AS Date), N'hang.vu26@gmail.com', N'Quận Hóc Môn, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (27, 27, N'Trần Văn Tài', 1, CAST(N'1993-01-14' AS Date), N'tai.tran27@gmail.com', N'Quận 1, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (28, 28, N'Nguyễn Thị Nga', 0, CAST(N'1988-08-22' AS Date), N'nga.nguyen28@gmail.com', N'Quận 5, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (29, 29, N'Đỗ Văn Hải', 1, CAST(N'1994-06-30' AS Date), N'hai.do29@gmail.com', N'Quận 10, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (30, 30, N'Lê Văn Lâm', 1, CAST(N'1987-03-05' AS Date), N'lam.le30@gmail.com', N'Quận 3, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (31, 31, N'Nguyễn Thị Lan', 0, CAST(N'1995-02-15' AS Date), N'lan.nguyen31@gmail.com', N'Quận 7, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (32, 32, N'Phạm Minh Khôi', 1, CAST(N'1991-05-21' AS Date), N'khoi.pham32@gmail.com', N'Quận 9, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (33, 33, N'Bùi Thị Nhã', 0, CAST(N'1996-07-18' AS Date), N'nha.bui33@gmail.com', N'Quận Thủ Đức, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (34, 34, N'Ngô Văn Tân', 1, CAST(N'1989-08-27' AS Date), N'tan.ngo34@gmail.com', N'Quận Gò Vấp, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (35, 35, N'Vũ Văn Cảnh', 1, CAST(N'1992-04-09' AS Date), N'canh.vu35@gmail.com', N'Quận Bình Thạnh, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (36, 36, N'Trần Thị Tuyết', 0, CAST(N'1990-10-11' AS Date), N'tuyet.tran36@gmail.com', N'Quận Phú Nhuận, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (37, 37, N'Lê Minh Thông', 1, CAST(N'1988-09-30' AS Date), N'thong.le37@gmail.com', N'Quận Tân Bình, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (38, 38, N'Nguyễn Văn Tiến', 1, CAST(N'1991-01-05' AS Date), N'tien.nguyen38@gmail.com', N'Quận Bình Tân, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (39, 39, N'Đỗ Thị Yến', 0, CAST(N'1995-12-17' AS Date), N'yen.do39@gmail.com', N'Quận 1, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (40, 40, N'Ngô Văn Hoàng', 1, CAST(N'1993-06-04' AS Date), N'hoang.ngo40@gmail.com', N'Quận 2, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (41, 41, N'Phạm Thị Cúc', 0, CAST(N'1990-11-19' AS Date), N'cuc.pham41@gmail.com', N'Quận 3, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (42, 42, N'Bùi Văn Nguyên', 1, CAST(N'1986-08-16' AS Date), N'nguyen.bui42@gmail.com', N'Quận 5, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (43, 43, N'Lê Thị Cẩm', 0, CAST(N'1992-07-20' AS Date), N'cam.le43@gmail.com', N'Quận 7, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (44, 44, N'Nguyễn Văn Quốc', 1, CAST(N'1994-02-03' AS Date), N'quoc.nguyen44@gmail.com', N'Quận 10, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (45, 45, N'Trần Thị Lý', 0, CAST(N'1995-09-11' AS Date), N'ly.tran45@gmail.com', N'Quận Thủ Đức, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (46, 46, N'Vũ Văn Đức', 1, CAST(N'1991-05-29' AS Date), N'duc.vu46@gmail.com', N'Quận Gò Vấp, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (47, 47, N'Ngô Thị Tâm', 0, CAST(N'1988-04-10' AS Date), N'tam.ngo47@gmail.com', N'Quận Bình Thạnh, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (48, 48, N'Bùi Văn Thạnh', 1, CAST(N'1993-03-22' AS Date), N'thanh.bui48@gmail.com', N'Quận Phú Nhuận, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (49, 49, N'Phạm Thị Vân', 0, CAST(N'1990-06-28' AS Date), N'van.pham49@gmail.com', N'Quận 2, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (50, 50, N'Lê Văn Thái', 1, CAST(N'1992-12-15' AS Date), N'thai.le50@gmail.com', N'Quận 9, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (51, 51, N'Trần Thị Bích', 0, CAST(N'1986-01-20' AS Date), N'bich.tran51@gmail.com', N'Quận 1, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (52, 52, N'Nguyễn Minh Phương', 1, CAST(N'1994-05-25' AS Date), N'phuong.nguyen52@gmail.com', N'Quận 10, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (53, 53, N'Bùi Thị Ngọc', 0, CAST(N'1993-02-07' AS Date), N'ngoc.bui53@gmail.com', N'Quận 5, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (54, 54, N'Lê Văn Sơn', 1, CAST(N'1987-03-19' AS Date), N'son.le54@gmail.com', N'Quận 3, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (55, 55, N'Ngô Văn Nghĩa', 1, CAST(N'1990-08-30' AS Date), N'nghia.ngo55@gmail.com', N'Quận 7, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (56, 56, N'Vũ Thị Phương', 0, CAST(N'1989-12-05' AS Date), N'phuong.vu56@gmail.com', N'Quận 9, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (57, 57, N'Trần Văn Lâm', 1, CAST(N'1994-06-21' AS Date), N'lam.tran57@gmail.com', N'Quận Thủ Đức, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (58, 58, N'Phạm Thị Hòa', 0, CAST(N'1991-09-12' AS Date), N'hoa.pham58@gmail.com', N'Quận Gò Vấp, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (59, 59, N'Bùi Văn Khải', 1, CAST(N'1988-02-17' AS Date), N'khai.bui59@gmail.com', N'Quận Bình Tân, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (60, 60, N'Nguyễn Văn Hiếu', 1, CAST(N'1993-04-30' AS Date), N'hieu.nguyen60@gmail.com', N'Quận 1, Hồ Chí Minh', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (61, 61, N'Phạm Quang Minh', 1, CAST(N'1992-09-12' AS Date), N'phamminh61@gmail.com', N'Quận Ba Đình, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (62, 62, N'Trần Khánh Linh', 0, CAST(N'1987-12-08' AS Date), N'khanhlinh62@gmail.com', N'Quận Cầu Giấy, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (63, 63, N'Nguyễn Minh Khoa', 1, CAST(N'1993-01-15' AS Date), N'minhkhoa63@gmail.com', N'Quận Đống Đa, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (64, 64, N'Lê Hoàng Yến', 0, CAST(N'1991-03-22' AS Date), N'hoangyen64@gmail.com', N'Quận Hai Bà Trưng, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (65, 65, N'Đặng Văn Long', 1, CAST(N'1989-07-14' AS Date), N'vanlong65@gmail.com', N'Quận Long Biên, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (66, 66, N'Nguyễn Ngọc Lan', 0, CAST(N'1994-11-03' AS Date), N'ngoclan66@gmail.com', N'Quận Hoàng Mai, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (67, 67, N'Bùi Xuân Trường', 1, CAST(N'1992-05-18' AS Date), N'xuantruong67@gmail.com', N'Quận Thanh Xuân, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (68, 68, N'Dương Thị Thảo', 0, CAST(N'1985-10-10' AS Date), N'thithao68@gmail.com', N'Quận Tây Hồ, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (69, 69, N'Ngô Văn An', 1, CAST(N'1990-09-29' AS Date), N'vanan69@gmail.com', N'Quận Hoàn Kiếm, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (70, 70, N'Vũ Hữu Đạt', 1, CAST(N'1995-06-16' AS Date), N'huudat70@gmail.com', N'Quận Đống Đa, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (71, 71, N'Phạm Thị Ngọc', 0, CAST(N'1996-08-23' AS Date), N'thngoc71@gmail.com', N'Quận Cầu Giấy, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (72, 72, N'Trần Hoài Nam', 1, CAST(N'1991-01-02' AS Date), N'hoainam72@gmail.com', N'Quận Hai Bà Trưng, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (73, 73, N'Lý Mạnh Hùng', 1, CAST(N'1986-04-12' AS Date), N'manhhung73@gmail.com', N'Quận Ba Đình, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (74, 74, N'Trần Anh Thư', 0, CAST(N'1992-05-25' AS Date), N'anhthu74@gmail.com', N'Quận Hoàn Kiếm, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (75, 75, N'Đặng Văn Toàn', 1, CAST(N'1988-03-09' AS Date), N'vantoan75@gmail.com', N'Quận Long Biên, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (76, 76, N'Nguyễn Thu Hà', 0, CAST(N'1990-12-30' AS Date), N'thuha76@gmail.com', N'Quận Thanh Xuân, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (77, 77, N'Bùi Thanh Bình', 1, CAST(N'1994-07-08' AS Date), N'thanhbinh77@gmail.com', N'Quận Hoàng Mai, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (78, 78, N'Nguyễn Văn Quý', 1, CAST(N'1989-11-26' AS Date), N'vanquy78@gmail.com', N'Quận Ba Đình, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (79, 79, N'Phạm Minh Hạnh', 0, CAST(N'1993-06-14' AS Date), N'minhhanh79@gmail.com', N'Quận Đống Đa, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (80, 80, N'Nguyễn Đức Tuấn', 1, CAST(N'1991-04-20' AS Date), N'ductuan80@gmail.com', N'Quận Cầu Giấy, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (81, 81, N'Đỗ Văn Hải', 1, CAST(N'1987-08-05' AS Date), N'vanhai81@gmail.com', N'Quận Hai Bà Trưng, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (82, 82, N'Lê Văn Dũng', 1, CAST(N'1986-02-28' AS Date), N'vandung82@gmail.com', N'Quận Tây Hồ, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (83, 83, N'Hoàng Thị Hồng', 0, CAST(N'1995-07-10' AS Date), N'honghoang83@gmail.com', N'Quận Hoàng Mai, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (84, 84, N'Đinh Minh Nguyệt', 0, CAST(N'1992-09-06' AS Date), N'minhnguyet84@gmail.com', N'Quận Hoàn Kiếm, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (85, 85, N'Nguyễn Văn Thái', 1, CAST(N'1989-03-23' AS Date), N'vanthai85@gmail.com', N'Quận Ba Đình, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (86, 86, N'Phạm Hải Đăng', 1, CAST(N'1994-12-22' AS Date), N'haidang86@gmail.com', N'Quận Đống Đa, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (87, 87, N'Lê Bảo Trâm', 0, CAST(N'1991-04-14' AS Date), N'baotram87@gmail.com', N'Quận Cầu Giấy, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (88, 88, N'Ngô Minh Châu', 0, CAST(N'1995-06-25' AS Date), N'minhchau88@gmail.com', N'Quận Hai Bà Trưng, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (89, 89, N'Trương Văn Tú', 1, CAST(N'1987-11-18' AS Date), N'vantutruong89@gmail.com', N'Quận Hoàn Kiếm, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (90, 90, N'Phan Thị Quỳnh', 0, CAST(N'1993-07-12' AS Date), N'thiquynh90@gmail.com', N'Quận Tây Hồ, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (91, 91, N'Đỗ Văn Tùng', 1, CAST(N'1992-01-27' AS Date), N'vantung91@gmail.com', N'Quận Ba Đình, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (92, 92, N'Hoàng Quốc Anh', 1, CAST(N'1988-05-21' AS Date), N'quocanh92@gmail.com', N'Quận Hoàng Mai, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (93, 93, N'Nguyễn Thị Hương', 0, CAST(N'1995-09-08' AS Date), N'thihoanghuong93@gmail.com', N'Quận Thanh Xuân, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (94, 94, N'Phạm Ngọc Trinh', 0, CAST(N'1992-03-29' AS Date), N'ngoctrihn94@gmail.com', N'Quận Long Biên, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (95, 95, N'Nguyễn Văn Đạt', 1, CAST(N'1987-10-14' AS Date), N'vandat95@gmail.com', N'Quận Hoàn Kiếm, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (96, 96, N'Trần Minh Quân', 1, CAST(N'1993-02-11' AS Date), N'minhquan96@gmail.com', N'Quận Ba Đình, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (97, 97, N'Lê Thị Lan', 0, CAST(N'1990-07-19' AS Date), N'thilan97@gmail.com', N'Quận Hai Bà Trưng, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (98, 98, N'Phan Xuân Dương', 1, CAST(N'1994-09-24' AS Date), N'xuanduong98@gmail.com', N'Quận Đống Đa, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (99, 99, N'Nguyễn Thị Thu', 0, CAST(N'1991-06-07' AS Date), N'thithu99@gmail.com', N'Quận Tây Hồ, Hà Nội', NULL)
GO
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (100, 100, N'Vũ Thị Ánh', 0, CAST(N'1995-11-15' AS Date), N'thianh100@gmail.com', N'Quận Hoàng Mai, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (101, 101, N'Lê Văn Quang', 1, CAST(N'1989-03-31' AS Date), N'vanquang101@gmail.com', N'Quận Long Biên, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (102, 102, N'Nguyễn Thuỳ Linh', 0, CAST(N'1992-06-21' AS Date), N'thuylinh102@gmail.com', N'Quận Hoàn Kiếm, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (103, 103, N'Bùi Văn Bình', 1, CAST(N'1990-12-17' AS Date), N'vanbinh103@gmail.com', N'Quận Cầu Giấy, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (104, 104, N'Phan Văn Đông', 1, CAST(N'1987-09-28' AS Date), N'vandong104@gmail.com', N'Quận Đống Đa, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (105, 105, N'Nguyễn Thị Ngọc', 0, CAST(N'1994-10-09' AS Date), N'thngoc105@gmail.com', N'Quận Thanh Xuân, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (106, 106, N'Lê Phước Hưng', 1, CAST(N'1986-04-04' AS Date), N'phuochung106@gmail.com', N'Quận Thanh Xuân, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (107, 107, N'Võ Minh Quân', 1, CAST(N'1992-02-13' AS Date), N'minhquan107@gmail.com', N'Quận Cầu Giấy, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (108, 108, N'Nguyễn Thanh Vân', 0, CAST(N'1991-09-30' AS Date), N'thanhvan108@gmail.com', N'Quận Ba Đình, Hà Nội', NULL)
INSERT [dbo].[User_infor] ([uID], [aID], [name], [gender], [dob], [email], [address], [image]) VALUES (109, 109, N'Phạm Quang Minh', 1, CAST(N'1992-09-12' AS Date), N'phamminh61@gmail.com', N'Quận Cầu Giấy, Hà Nội', NULL)
SET IDENTITY_INSERT [dbo].[User_infor] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK__Account__rID__3D5E1FD2] FOREIGN KEY([rID])
REFERENCES [dbo].[Role] ([rID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK__Account__rID__3D5E1FD2]
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
ALTER TABLE [dbo].[Total_Product]  WITH CHECK ADD  CONSTRAINT [FK_TotalProduct_Factory] FOREIGN KEY([facID])
REFERENCES [dbo].[Factory] ([facID])
GO
ALTER TABLE [dbo].[Total_Product] CHECK CONSTRAINT [FK_TotalProduct_Factory]
GO
ALTER TABLE [dbo].[Total_Product]  WITH CHECK ADD  CONSTRAINT [FK_TotalProduct_Product] FOREIGN KEY([pID])
REFERENCES [dbo].[Product] ([pID])
GO
ALTER TABLE [dbo].[Total_Product] CHECK CONSTRAINT [FK_TotalProduct_Product]
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
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Shift] FOREIGN KEY([sID])
REFERENCES [dbo].[Shift] ([sID])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Shift]
GO
USE [master]
GO
ALTER DATABASE [ABC Production Scheduling System] SET  READ_WRITE 
GO
