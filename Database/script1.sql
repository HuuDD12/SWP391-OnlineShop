USE [master]
GO
create database[Online_Shop1]
go
USE [Online_Shop1]
GO

/****** Object:  Table [dbo].[Banner]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Img] [varchar](2500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 13/6/2022 7:39:09 PM ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Author] [nvarchar](100) NULL,
	[Title] [nvarchar](2500) NULL,
	[Content] [nvarchar](2500) NULL,
	[imageLink] [nvarchar](1000) NULL,
	UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[Email] [varchar](200) NULL,
	[CommentDate] [date] NULL,
	[CommentDetail] [varchar](200) NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ShipInfoID] [int] NULL,
	[UserID] [int] NULL,
	[Status] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[OrderID] [int] NULL,
	[FeedbackDetail] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback_Replies]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback_Replies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FeedbackID] [int] NULL,
	[UserID] [int] NULL,
	[RepliesText] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[OrderID] [int] NULL,
	[Content] [nvarchar](1000) NULL,
	[status] [int] NULL,
	[time] [date] NULL,
 CONSTRAINT [PK__Notifica__3214EC27A8CE6D20] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductName] [nvarchar](1000) NULL,
	[ProductPrice] [int] NULL,
	[Quantity] [int] NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK__Order_De__3214EC279F2D51E0] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Status]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[TotalPrice] [int] NULL,
	[Note] [nvarchar](2000) NULL,
	[Status] [int] NULL,
	[Date] [date] NULL,
	[ShippingID] [int] NULL,
 CONSTRAINT [PK__Orders__3214EC272D94A502] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](1000) NULL,
	[Description] [nvarchar](2000) NULL,
	[OriginalPrice] [int] NULL,
	[SalePrice] [int] NULL,
	[SubCategoryID] [int] NULL,
	[Amount] [int] NULL,
	[BrandID] [int] NULL,
	[sell_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImg]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductImg](
	[ProductID] [int] NULL,
	[ProductImgURL] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ship]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ship](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](1000) NULL,
	[ShipPrice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipInfo]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShipInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](1000) NULL,
	[ShippingAddress] [nvarchar](1000) NULL,
	[PhoneNum] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShipStatus]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[SubCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [nvarchar](255) NULL,
	[CategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_info]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_info](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[UserImg] [nvarchar](1000) null,
	[Firstname] [nvarchar](500) NULL,
	[Lastname] [nvarchar](1000) NULL,
	[Gender] [int] null,
	[Birthday] [nvarchar](1000) NULL,
	[Address] [nvarchar](1000) NULL,
	[PhoneNum] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 13/6/2022 7:39:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](500) NULL,
	[Password] [varchar](1000) NULL,
	[email] [nvarchar](1000) NULL,
	[RoleID] [int] NULL,
	[isBlock] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID], [Img]) VALUES (1, N'resources\img\banner\banner10.png')
INSERT [dbo].[Banner] ([ID], [Img]) VALUES (2, N'resources\img\banner\banner35.png')
INSERT [dbo].[Banner] ([ID], [Img]) VALUES (3, N'resources\img\banner\banner40.png')
INSERT [dbo].[Banner] ([ID], [Img]) VALUES (4, N'resources\img\banner\banner60.png')
INSERT [dbo].[Banner] ([ID], [Img]) VALUES (5, N'resources\img\banner\banner80.png')
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([ID], [Author], [Title], [Content], [imageLink], [UserId]) VALUES (1, N'Quocvu', N'Áo phông xám nam, item mix đồ thời thượng', N'Áo phông xám là một item được nhiều bạn trẻ yêu thích. Khi xu hướng thời trang thế giới đang hướng đến những thứ đơn giản, tinh tế thì gam màu xám được đánh giá rất hiện đại, trẻ trung và là một trong những gam màu hot trend thời gian gần đây. 

Với áo phông xám, chị em có thể biến tấu linh hoạt trong cách phối đồ, lên đồ ấn tượng mà không lo nhạt nhòa, kém nổi bật. ', N'resources\img\Blog\1.jpg', 1)
INSERT [dbo].[Blogs] ([ID], [Author], [Title], [Content], [imageLink], [UserId]) VALUES (2, N'QuocVu', N'Áo thun oversize chuẩn phong cách, ấn tượng', N'Áo phông oversize đang là một hot item dẫn đầu xu hướng thời trang giới trẻ hiện nay. Ngày càng nhiều các bạn trẻ yêu thích, ưa chuộng và đánh giá cao kiểu áo này. 

Một item đầy mới mẻ, phá cách và tính ứng dụng thực tiễn cao như áo phông oversize quả thực sẽ thu hút sự quan tâm của rất nhiều bạn trẻ. ', N'resources\img\Blog\2.jpg', 2)
INSERT [dbo].[Blogs] ([ID], [Author], [Title], [Content], [imageLink], [UserId]) VALUES (3, N'minh123', N'Blazzer, xu thế thời trang 2021', N'Với sự thay đổi liên tục, xu hướng thời trang luôn được cập nhật mới mẻ hơn, độc đáo, hiện đại và thu hút hơn. Những phong cách mới, xu thế thời trang hot luôn được mọi người quan tâm, đặc biệt là giới trẻ. Không thể phủ nhận ngành công nghiệp thời trang đang phát triển rất mạnh mẽ. Không chỉ đơn giản là cách ăn mặc, cách mix&match đồ hay diện đồ theo phong cách yêu thích, thời trang còn là sự đổi mới, phá cách và tràn đầy sức sáng tạo ấn tượng. Vậy bạn đã có ý tưởng gì cho mình chưa? Cùng Shope khám phá ngay nhé.', N'resources\img\Blog\3.jpg', 3)
INSERT [dbo].[Blogs] ([ID], [Author], [Title], [Content], [imageLink], [UserId]) VALUES (8, N'Hữu', N'Cảm hứng cổ điển “hồi sinh” thổi làn gió mới vào xu hướng phụ kiện thu đông 2019', N'Phong cách thời trang thu đông năm nay là câu chuyện tương phản giữa những bộ suit tối giản, cổ điển và các thiết kế đầm, áo choàng dạ tiệc lộng lẫy. Chính vì điều này, xu hướng phụ kiện cũng mang hai tinh thần rõ nét: thanh lịch và xa hoa.

', NULL, 1)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (1, N'Borsalino')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (2, N'Bailey')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (3, N'Mayser')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (4, N'Tokyo Life')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (5, N'Zombie')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (6, N'FREAKERS')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (7, N'Karihada')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (8, N'Icon Denim')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (9, N'Hyperdenim VN')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (10, N'Davies')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (11, N'EnvyLook')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (12, N'Nike')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (13, N'Vans')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (14, N'Adidas')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (15, N'Flaans')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Hat')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Shirt')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Legwear')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Footwear')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'Accessories')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([ID], [Name], [Email], [CommentDate], [CommentDetail], [ProductId]) VALUES (1, N'Duong', N'duongbato2@gmail.com', CAST(N'2022-06-10' AS Date), N'c', 2)
INSERT [dbo].[Comment] ([ID], [Name], [Email], [CommentDate], [CommentDetail], [ProductId]) VALUES (2, N'Nguyen Van C', N'duongbato1@yahoo.com', CAST(N'2022-06-10' AS Date), N'Good', 1)
INSERT [dbo].[Comment] ([ID], [Name], [Email], [CommentDate], [CommentDetail], [ProductId]) VALUES (3, N'Nguyen Van C', N'duongbato1@yahoo.com', CAST(N'2022-06-10' AS Date), N'Nice', 2)
INSERT [dbo].[Comment] ([ID], [Name], [Email], [CommentDate], [CommentDetail], [ProductId]) VALUES (4, N'Duong', N'duongbato10@gmail.com', CAST(N'2022-06-10' AS Date), N'12', 2)
INSERT [dbo].[Comment] ([ID], [Name], [Email], [CommentDate], [CommentDetail], [ProductId]) VALUES (5, N'Vu', N'duongbato3@gmail.com', CAST(N'2022-06-10' AS Date), N'Hai', 3)
INSERT [dbo].[Comment] ([ID], [Name], [Email], [CommentDate], [CommentDetail], [ProductId]) VALUES (6, N'Vu', N'duongbato3@gmail.com', CAST(N'2022-06-10' AS Date), N'Hai', 3)
INSERT [dbo].[Comment] ([ID], [Name], [Email], [CommentDate], [CommentDetail], [ProductId]) VALUES (7, N'Duong', N'duongbato12@gmail.com', CAST(N'2022-06-10' AS Date), N'aa', 17)
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([ID], [UserID], [OrderID], [Content], [status], [time]) VALUES (1, 1, 12, N'Order #12 has been placed!', 1, CAST(N'2022-06-12' AS Date))
INSERT [dbo].[Notifications] ([ID], [UserID], [OrderID], [Content], [status], [time]) VALUES (2, 1, 13, N'Order #13 has been placed!', 1, CAST(N'2022-06-13' AS Date))
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Detail] ON 

INSERT [dbo].[Order_Detail] ([ID], [OrderID], [ProductName], [ProductPrice], [Quantity], [ProductID]) VALUES (8, 10, N'Bailey Tate Braided Fedora', 1500000, 1, 3)
INSERT [dbo].[Order_Detail] ([ID], [OrderID], [ProductName], [ProductPrice], [Quantity], [ProductID]) VALUES (9, 11, N'Bailey Tate Braided Fedora', 1500000, 1, 3)
INSERT [dbo].[Order_Detail] ([ID], [OrderID], [ProductName], [ProductPrice], [Quantity], [ProductID]) VALUES (10, 12, N'Bailey Craig Braided Fedora', 1700000, 1, 5)
INSERT [dbo].[Order_Detail] ([ID], [OrderID], [ProductName], [ProductPrice], [Quantity], [ProductID]) VALUES (11, 13, N'Bailey Tate Braided Fedora', 1500000, 1, 3)
SET IDENTITY_INSERT [dbo].[Order_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Status] ON 

INSERT [dbo].[Order_Status] ([ID], [Name]) VALUES (1, N'Waiting for Confirmation')
INSERT [dbo].[Order_Status] ([ID], [Name]) VALUES (2, N'Packaging')
INSERT [dbo].[Order_Status] ([ID], [Name]) VALUES (3, N'Delivering')
INSERT [dbo].[Order_Status] ([ID], [Name]) VALUES (4, N'Canceled')
INSERT [dbo].[Order_Status] ([ID], [Name]) VALUES (5, N'Completed')
SET IDENTITY_INSERT [dbo].[Order_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [Date], [ShippingID]) VALUES (10, 1, 1500000, N'Ã¢ss', 1, CAST(N'2022-06-09' AS Date), 8)
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [Date], [ShippingID]) VALUES (11, 1, 1500000, N'12', 1, CAST(N'2022-06-11' AS Date), 9)
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [Date], [ShippingID]) VALUES (12, 1, 1700000, N'Ok', 1, CAST(N'2022-06-12' AS Date), 10)
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [Date], [ShippingID]) VALUES (13, 1, 1500000, N'as', 1, CAST(N'2022-06-13' AS Date), 11)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (1, N'Borsalino Bogart Fur Felt Fedora', N'Borsalino celebrates its deep and long-lasting connection to the world of cinema with a special hat dedicated to Humphrey Bogart.', 9600000, 7400000, 1, 100, 1, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (2, N'Borsalino Seta Bicolore Fedora', N'The Borsalnio Seta Bicolore Fedora is a luxurious fur felt fedora with a brushed silk finish. With a 2 3/8" brim and a 4 1/4" crown, this is truly a classic fedora shape. Trimmed with a grosgrain hat band, this hat is a stylish option for any outfit! Fully lined and finished with a grosgrain sweatband for a soft fit. Made in Italy', 6700000, 5700000, 1, 100, 1, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (3, N'Bailey Tate Braided Fedora', N'The Bailey Tate Braided Fedora is a soft, flexible braided fedora with a matching band for a clean summertime look. A short 2 inch turned up brim can be snapped down in front or worn up all around, and the interior is unlined for a breezy feel. Lightweight and flattering, this hat will become part of your everyday look.', 1500000, 1500000, 1, 100, 2, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (4, N'Bailey Archer Braid Fedora', N'The Bailey Archer Braid Fedora is a short brimmed trilby fedora with a teardrop crown and stingy 1 5/8" snap brim for a modern silhouette. There is a two-tone stripe around the top of the crown that matches the hat band for a unique look that is flattering and fashionable. Soft and packable, this is a perfect lightweight hat for any occasion.', 1700000, 1700000, 1, 100, 2, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (5, N'Bailey Craig Braided Fedora', N'The Breed collection from Bailey of Hollywood represents the spirit of free-thinking sophistication. The Craig Braided Fedora is a great example of that notion with its spectacular Milan braid design and array of color options. Details include a center dent crown, a 2" snap brim, a comfort sweatband, and a grosgrain ribbon hatband.', 1700000, 1700000, 1, 100, 2, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (6, N'Mayser Calas Panama Straw Hat', N'The Mayser Calas Panama Straw Hat is a perfect summer hat made from natural straw. This straw hat features a 3 3/4" crown, 2 3/4" brim on sides and back and 2 7/8" in front, unique rope hatband with leather tabs, cloth sweatband, and sewn logo pin. Adhesive reinforcement at the crown protects the straw from cracking. Mayser is a premier German hatmaker that we are pleased to offer to our customers. Designed in Germany, hand-woven in Ecuador, finished in Slovakia.', 2850000, 2850000, 2, 100, 3, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (7, N'Mayser Piero Panama Straw Hat', N'The Mayser Piero Panama Straw Hat is a handsome downbrim hat made from genuine panama straw. This panama features a 4" crown with open weave design, 2 1/2" brim on the sides and 2 5/8" front and back, leather hatband, cloth sweatband, and sewn logo pin. Adhesive reinforcement at the crown protects the straw from cracking. Mayser is a premier German hatmaker that we are pleased to offer to our customers. Designed in Germany, hand-woven in Ecuador, finished in Slovakia.', 4000000, 3800000, 2, 100, 3, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (8, N'Mayser Nizza Panama Straw Hat', N'The Mayser Nizza Panama Straw Hat is a beautiful wide-brim fedora hat with a brisa fino weave. This panama fedora features a 4" crown, 3 1/8" brim, grosgrain band, cloth sweatband, sewn logo pin at the ribbon, and UV 60 sun protection. Adhesive reinforcement at the crown protects the straw from cracking. Mayser is a premier German hatmaker that we are pleased to offer to our customers. Designed in Germany, hand-woven in Ecuador, finished in Slovakia.', 5500000, 4950000, 2, 100, 3, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (9, N'Bailey Rockett Endura Telescope Crown Hat', N'The Bailey Rockett Endura Telescope Crown Hat is an exciting new hat for the summer season made from a revolutionary Endura straw- a paper straw woven with a thermosetting yarn that allows the hat to get wet and keep its shape, making it totally rainproof! The classic telescope crown and wide 3 1/8 inch brim are a timeless fashionable look, with the hand rolled edge giving it a unique twist. The braided hat band is a beautifully made finishing touch to this handsome hat. Proudly Made in the USA.', 2500000, 2500000, 2, 100, 2, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (10, N'Bailey Hanson Shantung Hat', N'The Bailey Hanson Shantung Hat is a light Shantung fedora with a center dent crown and 2 1/2 inch snap brim. A crisp classic look, this hat is finished with a slim ribbon hat band and a removable feather. A smart choice for summer. Made in the USA.', 2950000, 2950000, 2, 100, 2, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (11, N'Male T-Shirt I7TSH545I', N'Male T-Shirt I7TSH545I', 190000, 133000, 3, 100, 4, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (12, N'Male T-Shirt I7TSH535I', N'Male T-Shirt I7TSH535I', 250000, 250000, 3, 100, 4, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (13, N'Female T-Shirt I9TSH553I', N'Female T-Shirt I9TSH553I', 250000, 25000, 3, 100, 4, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (14, N'Female T-Shirt I9TSH569I', N'Female T-Shirt I9TSH569I', 190000, 190000, 3, 100, 4, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (15, N'Female T-Shirt I9TSH545I', N'Female T-Shirt I9TSH545I', 190000, 57000, 3, 100, 4, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (16, N'BLUE STRIPES SWEATER - WHITE', N'BLUE STRIPES SWEATER - WHITE', 350000, 350000, 4, 100, 5, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (17, N'YELLOW STRIPES SWEATER - BLACK', N'YELLOW STRIPES SWEATER - BLACK', 350000, 350000, 4, 100, 5, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (18, N'CLASSIC LOGO SWEATERS (NAVY)', N'CLASSIC LOGO SWEATERS (NAVY)', 450000, 450000, 4, 100, 6, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (19, N'CLASSIC LOGO SWEATERS (SPORT GREY)', N'CLASSIC LOGO SWEATERS (SPORT GREY)', 450000, 450000, 4, 100, 6, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (20, N'Oops_I_did_it_again_2002', N'Oops_I_did_it_again_2002', 390000, 312000, 4, 100, 7, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (21, N'Jean Slim-fit Dark Blue W Butterfly Charms', N'Jean Slim-fit Dark Blue W Butterfly Charms', 550000, 275000, 5, 100, 8, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (22, N'Jean Skinny Wash', N'Jean Skinny Wash', 500000, 400000, 5, 100, 8, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (23, N'Jean Slim Dark Blue Wash W ICON DENIM Pocket', N'Jean Slim Dark Blue Wash W ICON DENIM Pocket', 550000, 385000, 5, 100, 8, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (24, N'Black Gnu Zipper Jean', N'Black Gnu Zipper Jean', 1253000, 1253000, 5, 100, 9, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (25, N'Black Gao Zipper Jean', N'Black Gao Zipper Jean', 1253000, 1253000, 5, 100, 9, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (26, N'DSS Skirt D Buckle', N'DSS Skirt D Buckle', 285000, 285000, 6, 100, 10, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (27, N'DSS Skirt Davies Label', N'DSS Skirt Davies Label', 285000, 285000, 6, 100, 10, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (28, N'ENVYLOOK A Long Skirt', N'ENVYLOOK A Long Skirt', 750000, 350000, 6, 100, 11, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (29, N'ENVYLOOK Eilett Skirt', N'ENVYLOOK Eilett Skirt', 399000, 199000, 6, 100, 11, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (30, N'ENVYLOOK Linen-Belt Skirt', N'ENVYLOOK Linen-Belt Skirt', 570000, 299000, 6, 100, 11, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (31, N'Nike Air Zoom Winflo 7 CJ0291-005', N'Nike Air Zoom Winflo 7 CJ0291-005', 2929000, 2196750, 7, 100, 12, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (32, N'Nike Benassi Slip Shoe 882410-010', N'Nike Benassi Slip Shoe 882410-010', 1923000, 961500, 7, 100, 12, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (33, N'Nike Benassi Slp 882410-008', N'Nike Benassi Slp 882410-008', 1569000, 784500, 7, 100, 12, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (34, N'Vans Slip-On Label Mix', N'Vans Slip-On Label Mix', 1450000, 1450000, 7, 100, 13, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (35, N'Vans Sk8-Hi', N'Vans Sk8-Hi', 1850000, 1850000, 7, 100, 13, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (36, N'Male Sock Pack 3 I7SOK201H', N'Male Sock Pack 3 I7SOK201H', 50000, 50000, 8, 100, 14, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (37, N'Male Sock I7SOK213E', N'Male Sock I7SOK213E', 15000, 15000, 8, 100, 14, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (38, N'Male Sock I7SOK217E', N'Male Sock I7SOK217E', 15000, 15000, 8, 100, 14, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (39, N'Female Sock I9SOK015E', N'Female Sock I9SOK015E', 15000, 15000, 8, 100, 14, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (40, N'Female Sock I9SOK222E', N'Female Sock I9SOK222E', 15000, 15000, 8, 100, 14, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (41, N'Backpack V8BPK302I', N'Backpack V8BPK302I', 690000, 690000, 9, 100, 14, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (42, N'Backpack V8BPK300I', N'Backpack V8BPK300I', 590000, 590000, 9, 100, 14, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (43, N'Waterproof Backpack I7BPK003I', N'Waterproof Backpack I7BPK003I', 399000, 399000, 9, 100, 14, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (44, N'Unisex Adidas 4Athlts Id Bp FJ3924', N'Unisex Adidas 4Athlts Id Bp FJ3924', 1200000, 780000, 9, 100, 14, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (45, N'Unisex Adidas Clas Bp Fabric GL0890', N'Unisex Adidas Clas Bp Fabric GL0890', 700000, 700000, 9, 100, 14, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (46, N'FLAANS 925 SharpStar N', N'FLAANS 925 SharpStar N', 356000, 356000, 10, 100, 15, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (47, N'FLAANS Bauli R', N'FLAANS Bauli R', 156000, 156000, 10, 100, 15, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (48, N'FLAANS Vin Bold R', N'FLAANS Vin Bold R', 156000, 156000, 10, 100, 15, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (49, N'FLAANS ChainBZ_N', N'FLAANS ChainBZ_N', 516000, 516000, 10, 100, 15, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SalePrice], [SubCategoryID], [Amount], [BrandID], [sell_id]) VALUES (50, N'FLAANS 925 NewMoon N', N'FLAANS 925 NewMoon N', 356000, 356000, 10, 100, 15, 2)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (1, N'resources\img\products\Borsalino-Bogart.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (2, N'resources\img\products\390310-Brosalino-Hats-Brown.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (3, N'resources\img\products\81711BH-Bailey-Latte.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (4, N'resources\img\products\81802-Bailey-Hats-Smoke.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (5, N'resources\img\products\81717BHGRAPHITE.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (6, N'resources\img\products\1270891-MayserCalas-2.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (7, N'resources\img\products\1230091-MayserPiero.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (8, N'resources\img\products\1212551-Nizza.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (8, N'resources\img\products\HatBox.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (9, N'resources\img\products\5000BH_TAN.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (10, N'resources\img\products\63112-Bailey-Hats-Cloud.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (11, N'resources\img\products\_o_t-shirt_nam_c_tr_n_i7tsh545i_ghi_m-xanh_ng_c_190000.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (12, N'resources\img\products\_o_t-shirt_nam_c_tr_n_i7tsh535i_xanh_r_u_250000.jpg.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (12, N'resources\img\products\_o_t-shirt_nam_c_tr_n_i7tsh535i_xanh_c_v_t_250000.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (13, N'resources\img\products\_o_t_shirt_n_c_tr_n_i9tsh553i_en_b_c_250k.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (14, N'resources\img\products\_o_t_shirt_n_c_tr_n_i9tsh569i_en_190k.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (15, N'resources\img\products\_o_t-shirt_n_c_tr_n_tay_xo_n_i9tsh545i_k_cam_190000.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (16, N'resources\img\products\dosiin-zombie-blue-stripes-sweater-white-109071109071.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (17, N'resources\img\products\dosiin-zombie-yellow-stripes-sweater-black-109091109091.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (18, N'resources\img\products\dosiin-freakers-classic-logo-sweatersnavy-223758223758.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (19, N'resources\img\products\dosiin-freakers-classic-logo-sweaterssport-grey-223763223763.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (20, N'resources\img\products\dosiin-karihada-oops-i-did-it-again-115992115992.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (21, N'resources\img\products\dosiin-icon-denim-quan-jean-slim-fit-dark-blue-wbutterfly-charms-143605143605.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (22, N'resources\img\products\dosiin-icon-denim-quan-jean-skinny-wash-tron-143621143621.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (23, N'resources\img\products\dosiin-icon-denim-quan-jean-slim-dark-blue-wash-w-icon-denim-pocket-143645143645.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (24, N'resources\img\products\dosiin-hyperdenim-vn-black-gnu-zipper-jean-202558202558.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (25, N'resources\img\products\dosiin-hyperdenim-vn-black-gao-zipper-jean-202799202799.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (26, N'resources\img\products\dosiin-davies-dss-skirt-d-buckle-103410103410.jpeg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (27, N'resources\img\products\dosiin-davies-dss-skirt-davies-label-103403103403.jpeg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (28, N'resources\img\products\dosiin-envylook-chan-vay-dai-arong-mau-mustard-envylook-a-long-skirt-8968989689.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (29, N'resources\img\products\dosiin-envylook-chan-vay-cotton-dai-chun-co-dan-mau-black-envylook-eilett-skirt-8957789577.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (30, N'resources\img\products\dosiin-envylook-quan-vay-vai-lanh-that-lung-mau-beige-envylook-linen-belt-skirtclone-7705877058.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (31, N'resources\img\products\dosiin-nike-giay-chay-nam-nike-nike-air-zoom-winflo-cj-216832216832.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (32, N'resources\img\products\dosiin-nike-giay-nam-nike-benassi-slip-shoe-215487215487.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (33, N'resources\img\products\dosiin-nike-giay-nam-nike-benassi-slp-215474215474.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (34, N'resources\img\products\dosiin-vans-vans-slip-on-label-mix-209123209123.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (35, N'resources\img\products\dosiin-vans-vans-skhi-208636208636.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (36, N'resources\img\products\t_t_ch_n_nam_c_ng_n_pack_3_i7sok201h_mixed_freesize_50k_1.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (37, N'resources\img\products\t_t_ch_n_nam_c_trung_17sok213_-_50k_2.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (38, N'resources\img\products\t_t_ch_n_nam_c_ng_n_17sok217e-40k_2.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (39, N'resources\img\products\t_t_ch_n_n_c_trung_-_19sok015e_-_35k_2.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (40, N'resources\img\products\t_t_ch_n_n_c_ng_n_19sok222e-30k_2.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (41, N'resources\img\products\img_8595.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (42, N'resources\img\products\img_8597.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (43, N'resources\img\products\ba_l_ch_ng_s_c_ch_ng_th_m_n_c_i7bpk003i-001_29.14.43_-_en_-_590.000_.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (44, N'resources\img\products\dosiin-adidas-ba-lo-tap-luyen-unisex-adidasathlts-id-bp-fj-152063152063.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (45, N'resources\img\products\dosiin-adidas-ba-lo-tap-luyen-unisex-adidas-clas-bp-fabric-gl-220622220622.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (46, N'resources\img\products\dosiin-flaans-day-chuyen-flaans-sharpstar-n-9458094580.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (47, N'resources\img\products\dosiin-flaans-nhan-flaans-bauli-r-124297124297.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (48, N'resources\img\products\dosiin-flaans-nhan-flaans-vin-bold-r-126742126742.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (49, N'resources\img\products\dosiin-flaans-day-chuyen-flaans-chainbz-n-124335124335.jpg')
INSERT [dbo].[ProductImg] ([ProductID], [ProductImgURL]) VALUES (50, N'resources\img\products\dosiin-flaans-day-chuyen-flaans-newmoon-n-9457494574.jpg')
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Seller')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Customer')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (4, N'Marketing')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (5, N'Shipper')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[ShipInfo] ON 

INSERT [dbo].[ShipInfo] ([ID], [CustomerName], [ShippingAddress], [PhoneNum]) VALUES (1, N'Qu?c V?', N'Hà N?i', N'0866112212')
INSERT [dbo].[ShipInfo] ([ID], [CustomerName], [ShippingAddress], [PhoneNum]) VALUES (2, N'Thái Dương', N'Phú Th?', N'08661122223')
INSERT [dbo].[ShipInfo] ([ID], [CustomerName], [ShippingAddress], [PhoneNum]) VALUES (3, N'Hải Phòng', N'Hải Phòng', N'08661122223')
INSERT [dbo].[ShipInfo] ([ID], [CustomerName], [ShippingAddress], [PhoneNum]) VALUES (4, N'Nam ', N'Hải Phòng', N'0866112233')
INSERT [dbo].[ShipInfo] ([ID], [CustomerName], [ShippingAddress], [PhoneNum]) VALUES (5, N'Linh', N'Phú Th?', N'08661122523')
INSERT [dbo].[ShipInfo] ([ID], [CustomerName], [ShippingAddress], [PhoneNum]) VALUES (6, N'Thái', N'Nghệ An', N'08661122723')
INSERT [dbo].[ShipInfo] ([ID], [CustomerName], [ShippingAddress], [PhoneNum]) VALUES (7, N'Thái Nam', N'Phú Th?', N'086611223')
INSERT [dbo].[ShipInfo] ([ID], [CustomerName], [ShippingAddress], [PhoneNum]) VALUES (8, N'nam', N'0987654321', N'Phu Tho')
INSERT [dbo].[ShipInfo] ([ID], [CustomerName], [ShippingAddress], [PhoneNum]) VALUES (9, N'Duong', N'0987654321', N'Phu Tho')
INSERT [dbo].[ShipInfo] ([ID], [CustomerName], [ShippingAddress], [PhoneNum]) VALUES (10, N'Nguyen Van C', N'0987654321', N'Viet Tri')
INSERT [dbo].[ShipInfo] ([ID], [CustomerName], [ShippingAddress], [PhoneNum]) VALUES (11, N'Nguyen Van C', N'0987654321', N'Phu Tho')
SET IDENTITY_INSERT [dbo].[ShipInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategory] ON 

INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (1, N'Fedora', 1)
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (2, N'Panama', 1)
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (3, N'T-Shirt', 2)
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (4, N'Sweater', 2)
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (5, N'Jean', 3)
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (6, N'Skirt', 3)
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (7, N'Shoe', 4)
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (8, N'Sock', 4)
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (9, N'Backpacks', 5)
INSERT [dbo].[SubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID]) VALUES (10, N'Rings and Chains', 5)
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[User_info] ON 

INSERT [dbo].[User_info] ([ID], [UserID], [UserImg], [Firstname], [Lastname], [Gender], [Birthday], [Address], [PhoneNum]) VALUES (1, 1, N'resources\img\ImgUser\uer1.jpg', N'Hoang', N'Nam', 1, null, N'Ha Tinh', N'0987654241')
INSERT [dbo].[User_info] ([ID], [UserID], [UserImg], [Firstname], [Lastname], [Gender], [Birthday], [Address], [PhoneNum]) VALUES (2, 2, null, N'Minh', N'Hoang', 1, null, N'Hai Duong', N'0967543276')
INSERT [dbo].[User_info] ([ID], [UserID], [UserImg], [Firstname], [Lastname], [Gender], [Birthday], [Address], [PhoneNum]) VALUES (3, 3, null, N'Nguyen', N'Duc', 0, null, N'Hai Phong', N'0987625121')
INSERT [dbo].[User_info] ([ID], [UserID], [UserImg], [Firstname], [Lastname], [Gender], [Birthday], [Address], [PhoneNum]) VALUES (4, 4, null, N'Van', N'Anh', 2, null, N'Ha Noi', N'0987625172')
INSERT [dbo].[User_info] ([ID], [UserID], [UserImg], [Firstname], [Lastname], [Gender], [Birthday], [Address], [PhoneNum]) VALUES (5, 5, null, N'Huu', N'Pham', 1, null, N'Binh Dinh', N'0876218829')
INSERT [dbo].[User_info] ([ID], [UserID], [UserImg], [Firstname], [Lastname], [Gender], [Birthday], [Address], [PhoneNum]) VALUES (6, 6, null, N'Linh', N'Nguyen', 0, null, N'Cao Bang', N'0963528918')
INSERT [dbo].[User_info] ([ID], [UserID], [UserImg], [Firstname], [Lastname], [Gender], [Birthday], [Address], [PhoneNum]) VALUES (11, 14, null, N'', N'', 1, null, N'', N'')
SET IDENTITY_INSERT [dbo].[User_info] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (1, N'admin', N'123', N'admin@fpt.edu.vn', 1, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (2, N'Duong', N'x9BfvpZF', N'duong@fpt.edu.vn', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (3, N'Duc', N'123', N'duc@fpt.edu.vn', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (4, N'Anh', N'123', N'anh@fpt.edu.vn', 3, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (5, N'Huu', N'123', N'admin@fpt.edu.vn', 3, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (6, N'Linh', N'123', N'admin@fpt.edu.vn', 3, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (14, N'linh123', N'hoS5j8Gp', N'duongbato2@gmail.com', 3, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (15, N'msudran0', N'vmKGfUt', N'mingarfield0@vk.com', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (16, N'nbut0', N'VfyvwS0thYG', N'psturror0@goo.ne.jp', 3, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (17, N'rsebborn1', N'dTL60VNxeS', N'erobotham1@washingtonpost.com', 3, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (18, N'mdobbyn2', N'SiaPiX', N'ssteggals2@phoca.cz', 1, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (19, N'gmanderson3', N'QuhQgWHA', N'fboots3@tripod.com', 2, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (20, N'abanghe4', N'xk8bkA5dga0s', N'scoats4@gizmodo.com', 1, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (21, N'nturle5', N'C8X940e6j', N'rdrysdell5@seesaa.net', 2, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (22, N'nluca6', N'8RI8wj4E', N'mmuff6@weebly.com', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (23, N'gpactat7', N'0xBuEhY8QN2T', N'cspriggen7@yale.edu', 3, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (24, N'ghenstone8', N'qWaMIm9gy', N'mmarton8@nytimes.com', 1, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (25, N'edunthorn9', N'GSCR34STbU9Z', N'fplenderleith9@ihg.com', 1, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (26, N'tpentycrossa', N'w4dWYoyzH3u', N'dcollensa@istockphoto.com', 3, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (27, N'tgerataschb', N'0D3pUzOJ', N'beverlyb@woothemes.com', 2, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (28, N'sscotfurthc', N'bfucFAHPIDnA', N'ghandforthc@cloudflare.com', 2, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (29, N'htummonsd', N'UgE9QDaX', N'alavingtond@biblegateway.com', 2, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (30, N'imaccallestere', N'VDI5eTU', N'mlerhinane@skype.com', 3, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (31, N'gsollonf', N'fmb0SxXQ1', N'nkilcoynef@google.ca', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (32, N'eswiggsg', N'xXfkeRNTh', N'ftorricinag@sourceforge.net', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (33, N'jflipsenh', N'SeKZy3', N'gsheachh@yandex.ru', 1, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (34, N'gwatsonbrowni', N'VP4NJK3inqu9', N'cbrickwoodi@cbsnews.com', 1, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (35, N'rbeckfordj', N'CzzKk82F', N'lnusseyj@mapy.cz', 1, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (36, N'gfairtloughk', N'TtrBTZKX', N'ejuppek@nih.gov', 1, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (37, N'drhodefl', N'T0AFIP', N'smearingl@illinois.edu', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (38, N'cburderm', N'uzL9j9qYX6s', N'dgraddonm@1und1.de', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (39, N'wkimminsn', N'T62KZJB', N'kgallaharn@wikispaces.com', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (40, N'blitchfieldo', N'LZmKFLO', N'gcowillo@cbslocal.com', 3, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (41, N'vmccowenp', N'smVEPuiI', N'gdoberp@cpanel.net', 3, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (42, N'rreelyq', N'wMrwKGc', N'pmaysorq@imgur.com', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (43, N'dfranceschinor', N'Xzu7jB', N'aperezr@booking.com', 3, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (44, N'dlandsbergs', N'W16b0wFy9lIf', N'cmerrywethers@so-net.ne.jp', 2, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (45, N'mkitchinghant', N'sfzTs6hsJIlS', N'sshellsheart@jugem.jp', 3, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (46, N'jfairsu', N'jZ1emo8CeUo', N'ohegdenu@europa.eu', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (47, N'cballendinev', N'MCgQDMY', N'ndibollv@microsoft.com', 1, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (48, N'uouthwaitew', N'N8dSSdm', N'elinskeyw@deviantart.com', 2, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (49, N'ktripeanx', N'y2tb57CnUs', N'cscotchmorx@biglobe.ne.jp', 1, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (50, N'tfitzhenryy', N'xDX27pTCs', N'redwardesy@infoseek.co.jp', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (51, N'pmearsz', N'c7n3wn3', N'alicciardoz@facebook.com', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (52, N'rrustedge10', N'f43DvsW', N'rgrint10@newsvine.com', 1, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (53, N'ssellers11', N'EQ3aXchxY', N'mtinmouth11@deviantart.com', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (54, N'belderbrant12', N'gZDZyQig', N'lhouldcroft12@guardian.co.uk', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (55, N'dluby13', N'fbMckX58', N'ggutowski13@phpbb.com', 1, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (56, N'sbarbour14', N'ZdFa2I', N'plampke14@blogtalkradio.com', 3, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (57, N'lmcginnell15', N'6CiuGYGFuXt1', N'nbillanie15@ameblo.jp', 2, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (58, N'sstolli16', N'QJJGyfx8N', N'cforce16@jigsy.com', 3, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (59, N'efoxhall17', N'yd0FzoI', N'ggreetham17@indiatimes.com', 1, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (60, N'omichieli18', N'azooH56', N'acallow18@sfgate.com', 1, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (61, N'cmacgilrewy19', N'JM22WtkSylZD', N'csterrick19@kickstarter.com', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (62, N'apreston1a', N'4RZ94O9WWsT', N'szamora1a@slate.com', 3, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (63, N'fcount1b', N'b9YeLtHklY', N'ltidbury1b@timesonline.co.uk', 1, 1)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (64, N'ngencke1c', N'2598LgH', N'pflewan1c@dell.com', 2, 0)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [RoleID], [isBlock]) VALUES (65, N'iguice1d', N'U1amciL4', N'cduke1d@drupal.org', 2, 0)
GO

SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD FOREIGN KEY([ShipInfoID])
REFERENCES [dbo].[ShipInfo] ([ID])
GO
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [orderID_in_orders_6] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [orderID_in_orders_6]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [productID_in_feedback] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [productID_in_feedback]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [userID_in_user_3] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [userID_in_user_3]
GO
ALTER TABLE [dbo].[Feedback_Replies]  WITH CHECK ADD  CONSTRAINT [feedbackID_in_feedback] FOREIGN KEY([FeedbackID])
REFERENCES [dbo].[Feedback] ([ID])
GO
ALTER TABLE [dbo].[Feedback_Replies] CHECK CONSTRAINT [feedbackID_in_feedback]
GO
ALTER TABLE [dbo].[Feedback_Replies]  WITH CHECK ADD  CONSTRAINT [userID_in_user_4] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Feedback_Replies] CHECK CONSTRAINT [userID_in_user_4]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Order_Status] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Order_Status]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_ShipInfo] FOREIGN KEY([ShippingID])
REFERENCES [dbo].[ShipInfo] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_ShipInfo]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [userID_in_order_status] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [userID_in_order_status]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [BrandID_in_Brand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [BrandID_in_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [product_in_subCategory] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[SubCategory] ([SubCategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [product_in_subCategory]
GO
ALTER TABLE [dbo].[ProductImg]  WITH CHECK ADD  CONSTRAINT [ProductImg_ID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductImg] CHECK CONSTRAINT [ProductImg_ID]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [CategoryID]
GO
ALTER TABLE [dbo].[User_info]  WITH CHECK ADD  CONSTRAINT [FK_User_info_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[User_info] CHECK CONSTRAINT [FK_User_info_Users]
GO
USE [master]
GO
ALTER DATABASE [Online_Shop1] SET  READ_WRITE 
GO
