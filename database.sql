/****** Object:  Database [Project_Hotel]  ******/
CREATE DATABASE [Project_Hotel]
GO
ALTER DATABASE [Project_Hotel] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_Hotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project_Hotel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project_Hotel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project_Hotel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project_Hotel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project_Hotel] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project_Hotel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project_Hotel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project_Hotel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project_Hotel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project_Hotel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project_Hotel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project_Hotel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project_Hotel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project_Hotel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project_Hotel] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Project_Hotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project_Hotel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project_Hotel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project_Hotel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project_Hotel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project_Hotel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project_Hotel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project_Hotel] SET RECOVERY FULL 
GO
ALTER DATABASE [Project_Hotel] SET  MULTI_USER 
GO
ALTER DATABASE [Project_Hotel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project_Hotel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project_Hotel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project_Hotel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project_Hotel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project_Hotel] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Project_Hotel', N'ON'
GO
ALTER DATABASE [Project_Hotel] SET QUERY_STORE = OFF
GO
USE [Project_Hotel]
GO
/****** Object:  Table [dbo].[Bill] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[InvoiceNo] [smallint] IDENTITY(1,1) NOT NULL,
	[GuestID] [smallint] NOT NULL,
	[PaymentDate] [date] NULL,
	[ExpiredDate] [date] NULL,
	[PaymentMode] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[DateBirth] [date] NULL,
	[Gender] [int] NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[Salary] [money] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guest] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest](
	[GuestID] [smallint] IDENTITY(1,1) NOT NULL,
	[RoomNo] [smallint] NULL,
	[FullName] [nvarchar](50) NULL,
	[DOB] [date] NULL,
	[Gender] [bit] NULL,
	[PhoneNo] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[ArrivalDate] [date] NULL,
	[DepartureDate] [date] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Guest] PRIMARY KEY CLUSTERED 
(
	[GuestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomNo] [smallint] IDENTITY(1,1) NOT NULL,
	[RoomTypeId] [smallint] NULL,
	[Renter] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomType] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomType](
	[RoomTypeId] [smallint] NOT NULL,
	[RoomPrice] [int] NULL,
	[RoomImg] [nvarchar](max) NULL,
	[NumberOfPersons] [int] NULL,
	[NumberOfRooms] [int] NULL,
 CONSTRAINT [PK_RoomType] PRIMARY KEY CLUSTERED 
(
	[RoomTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (1, 1, CAST(N'2022-07-20' AS Date), CAST(N'2022-07-21' AS Date), N'ATM/VISA', 1, N'VIP 1')
INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (2, 2, CAST(N'2022-07-20' AS Date), CAST(N'2022-07-21' AS Date), N'Cash', 1, N'this guest want to delay check out')
INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (3, 3, NULL, NULL, N'ATM/VISA', 0, N'VIP')
INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (4, 4, NULL, NULL, N'ATM/VISA', 0, NULL)
INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (5, 5, NULL, NULL, N'MOTO', 0, N'VIP')
INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (6, 6, NULL, NULL, N'MOTO', 0, NULL)
INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (8, 15, NULL, NULL, N'Cash', 0, NULL)
INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (10, 17, NULL, NULL, N'Cash', 0, NULL)
INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (11, 18, CAST(N'2022-07-22' AS Date), CAST(N'2022-07-23' AS Date), N'Cash', 1, NULL)
INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (12, 19, CAST(N'2022-07-22' AS Date), CAST(N'2022-07-23' AS Date), N'ATM/VISA', 1, N'                    hay quyt tien                    
                                    ')
INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (13, 32, CAST(N'2022-07-22' AS Date), CAST(N'2022-07-23' AS Date), N'Cash', 1, NULL)
INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (14, 33, NULL, NULL, N'Cash', 0, NULL)
INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (15, 34, NULL, NULL, N'Cash', 1, NULL)
INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (16, 35, NULL, NULL, N'Cash', 0, NULL)
INSERT [dbo].[Bill] ([InvoiceNo], [GuestID], [PaymentDate], [ExpiredDate], [PaymentMode], [Status], [Note]) VALUES (17, 36, NULL, NULL, N'Cash', 0, NULL)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 
INSERT [dbo].[Employee] ([ID], [FullName], [DateBirth], [Gender], [PhoneNumber], [Email], [username], [password], [Salary]) VALUES (1, N'Nguyen Thuy Duong', CAST(N'2003-12-23' AS Date), 1, N'0398896461', N'duongnguyen23122003@gmail.com', N'duong', N'1234', NULL)
INSERT [dbo].[Employee] ([ID], [FullName], [DateBirth], [Gender], [PhoneNumber], [Email], [username], [password], [Salary]) VALUES (2, N'Manh', CAST(N'2002-05-01' AS Date), 1, N'0353271947', N'manhvv15@gmail.com', N'manh', N'1235', NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Guest] ON 

INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (1, 1, N'Dang Tat  Dat', CAST(N'2001-09-25' AS Date), 1, N'0123456789', N'thanh@gmail.com', N'Ha Noi', CAST(N'2022-07-10' AS Date), CAST(N'2022-07-21' AS Date), 0)
INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (2, 2, N'Thai Minh Hma', CAST(N'2001-10-01' AS Date), 1, N'0213465123', N'quang@gmail.com', N'Thai Binh', CAST(N'2022-07-12' AS Date), CAST(N'2022-07-22' AS Date), 0)
INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (3, 3, N'Luu Tien Dat', CAST(N'1999-10-05' AS Date), 1, N'0121152254', N'datlt@gmail.com', N'Bac Ninh', CAST(N'2022-05-12' AS Date), CAST(N'2022-07-22' AS Date), 0)
INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (4, 4, N'Pham Tuan Anh', CAST(N'1989-05-02' AS Date), 0, N'0745640452', N'tuananh@gmail.com', N'Bac Ninh', CAST(N'2022-07-12' AS Date), CAST(N'2022-07-15' AS Date), 1)
INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (5, 5, N'Nguyen Minh Duc', CAST(N'1987-02-10' AS Date), 1, N'0345455782', N'ducnm@gmail.com', N'Thai Binh', CAST(N'2022-04-16' AS Date), CAST(N'2022-04-25' AS Date), 1)
INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (6, 6, N'Nguyen Van Sy', CAST(N'2001-07-09' AS Date), 1, N'0257857876', N'vansy@gmail.com', N'Vinh Phuc', CAST(N'2022-06-25' AS Date), CAST(N'2022-07-22' AS Date), 0)
INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (15, 7, N'he', CAST(N'2022-07-11' AS Date), 1, N'0123456789', N'abc@gmail.com', N'BN', CAST(N'2022-07-15' AS Date), CAST(N'2022-07-22' AS Date), 1)
INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (17, 1, N'Ngoc Tan', CAST(N'2001-10-10' AS Date), 1, N'0123456789', N'abc@gmail.com', N'HN', CAST(N'2022-07-14' AS Date), CAST(N'2022-07-21' AS Date), 0)
INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (18, 2, N'NGUYEN HUU TIEN ANH', CAST(N'2001-02-07' AS Date), 1, N'0399282709', N'tienanh27p1bn@gmail.com', N'bn', CAST(N'2022-07-17' AS Date), CAST(N'2022-07-22' AS Date), 0)
INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (19, 1, N'Huy Binh', CAST(N'2001-02-05' AS Date), 0, N'0123456789', N'huybinh12@gmail.com', N'bn', CAST(N'2022-07-07' AS Date), CAST(N'2022-07-22' AS Date), 0)
INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (32, 1, N'Tuan Anh', CAST(N'2001-12-06' AS Date), 1, N'0123456789', N'tuan@gmail.com', N'HN', CAST(N'2022-07-12' AS Date), CAST(N'2022-07-22' AS Date), 0)
INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (33, 3, N'Minh Duc', CAST(N'2002-12-01' AS Date), 0, N'0123456123', N'ducminh@gmail.com', N'ND', CAST(N'2022-07-14' AS Date), CAST(N'2022-07-24' AS Date), 1)
INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (34, 1, N'Dao Xuan Phuong', CAST(N'2003-05-06' AS Date), 1, N'0398123456', N'phuongxd@gmail.com', N'09', CAST(N'2022-07-18' AS Date), CAST(N'2022-07-22' AS Date), 0)
INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (35, 2, N'Xuan Hoang', CAST(N'2001-07-05' AS Date), 1, N'0353453453', N'hoangxuan@gmail.com', N'KM', CAST(N'2022-07-10' AS Date), CAST(N'2022-07-20' AS Date), 1)
INSERT [dbo].[Guest] ([GuestID], [RoomNo], [FullName], [DOB], [Gender], [PhoneNo], [Email], [Address], [ArrivalDate], [DepartureDate], [Status]) VALUES (36, 1, N'Le Thanh Binh', CAST(N'2002-10-01' AS Date), 1, N'0245454564', N'binhlt@gmail.com', N'NM', CAST(N'2022-07-14' AS Date), CAST(N'2022-07-22' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Guest] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (1, 1, NULL, 1)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (2, 1, NULL, 1)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (3, 2, NULL, 1)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (4, 3, NULL, 1)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (5, 2, NULL, 1)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (6, 2, NULL, 0)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (7, 1, NULL, 1)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (8, 3, NULL, 0)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (9, 1, NULL, 0)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (10, 3, NULL, 0)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (11, 3, NULL, 0)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (12, 2, NULL, 0)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (13, 2, NULL, 0)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (14, 1, NULL, 0)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (15, 3, NULL, 0)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (16, 3, NULL, 0)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (17, 2, NULL, 0)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (18, 2, NULL, 0)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (19, 2, NULL, 0)
INSERT [dbo].[Room] ([RoomNo], [RoomTypeId], [Renter], [Status]) VALUES (20, 1, NULL, 0)
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
INSERT [dbo].[RoomType] ([RoomTypeId], [RoomPrice], [RoomImg], [NumberOfPersons], [NumberOfRooms]) VALUES (1, 500000, N'https://media-cdn.tripadvisor.com/media/photo-s/0a/18/e7/e0/rose-hotel.jpg', 1, 20)
INSERT [dbo].[RoomType] ([RoomTypeId], [RoomPrice], [RoomImg], [NumberOfPersons], [NumberOfRooms]) VALUES (2, 1000000, N'https://cdn3.ivivu.com/2014/01/SUPER-DELUXE2.jpg', 2, 25)
INSERT [dbo].[RoomType] ([RoomTypeId], [RoomPrice], [RoomImg], [NumberOfPersons], [NumberOfRooms]) VALUES (3, 1400000, N'https://ezcloud.vn/wp-content/uploads/2019/07/4649_abc-1.jpg', 4, 15)
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Guest] FOREIGN KEY([GuestID])
REFERENCES [dbo].[Guest] ([GuestID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Guest]
GO
ALTER TABLE [dbo].[Guest]  WITH CHECK ADD  CONSTRAINT [FK_Guest_Room] FOREIGN KEY([RoomNo])
REFERENCES [dbo].[Room] ([RoomNo])
GO
ALTER TABLE [dbo].[Guest] CHECK CONSTRAINT [FK_Guest_Room]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomType] FOREIGN KEY([RoomTypeId])
REFERENCES [dbo].[RoomType] ([RoomTypeId])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_RoomType]
GO
USE [master]
GO
ALTER DATABASE [Project_Hotel] SET  READ_WRITE 
GO


