

/****** Object:  Table [dbo].[Banner]    Script Date: 30/5/2022 9:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Img] [varchar](2500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 30/5/2022 9:31:00 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 30/5/2022 9:31:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 30/5/2022 9:31:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 30/5/2022 9:31:00 PM ******/
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
/****** Object:  Table [dbo].[Feedback]    Script Date: 30/5/2022 9:31:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback_Replies]    Script Date: 30/5/2022 9:31:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 30/5/2022 9:31:00 PM ******/
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
	[time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 30/5/2022 9:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductName] [nvarchar](1000) NOT NULL,
	[ProductPrice] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Status]    Script Date: 30/5/2022 9:31:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 30/5/2022 9:31:00 PM ******/
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
	[Date] [datetime] NULL,
	[ShippingID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 30/5/2022 9:31:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 30/5/2022 9:31:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImg]    Script Date: 30/5/2022 9:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImg](
	[ProductID] [int] NULL,
	[ProductImgURL] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 30/5/2022 9:31:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ship]    Script Date: 30/5/2022 9:31:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipInfo]    Script Date: 30/5/2022 9:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](1000) NULL,
	[ShippingAddress] [nvarchar](1000) NULL,
	[PhoneNum] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipStatus]    Script Date: 30/5/2022 9:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 30/5/2022 9:31:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_info]    Script Date: 30/5/2022 9:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_info](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Firstname] [nvarchar](500) NULL,
	[Lastname] [nvarchar](1000) NULL,
	[Address] [nvarchar](1000) NULL,
	[PhoneNum] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 30/5/2022 9:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
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
ALTER TABLE [dbo].[User_info]  WITH CHECK ADD  CONSTRAINT [userID_in_user_address] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[User_info] CHECK CONSTRAINT [userID_in_user_address]
GO
USE [master]
GO
ALTER DATABASE [Online_Shop] SET  READ_WRITE 
GO

--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO [Role] VALUES (N'Admin');
INSERT INTO Role VALUES (N'Seller');
INSERT INTO Role VALUES (N'Customer');
INSERT INTO Role VALUES (N'Marketing');
INSERT INTO Role VALUES (N'Shipper');
--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.Brand(BrandName)VALUES(N'Borsalino')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Bailey')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Mayser')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Tokyo Life')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Zombie')
INSERT INTO dbo.Brand(BrandName)VALUES(N'FREAKERS')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Karihada')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Icon Denim')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Hyperdenim VN')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Davies')
INSERT INTO dbo.Brand(BrandName)VALUES(N'EnvyLook')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Nike')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Vans')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Adidas')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Flaans')
--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Users VALUES(N'admin','123','admin@fpt.edu.vn',1,0);
INSERT INTO Users VALUES(N'Duong','123','duong@fpt.edu.vn',2,0);
INSERT INTO Users VALUES(N'Duc','123','duc@fpt.edu.vn',2,0);
INSERT INTO Users VALUES(N'Anh','123','anh@fpt.edu.vn',3,0);
INSERT INTO Users VALUES(N'Huu','123','admin@fpt.edu.vn',3,0);
INSERT INTO Users VALUES(N'Linh','123','admin@fpt.edu.vn',3,0);
--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.Category(CategoryName)VALUES(N'Hat')
INSERT INTO dbo.Category(CategoryName)VALUES(N'Shirt')
INSERT INTO dbo.Category(CategoryName)VALUES(N'Legwear')
INSERT INTO dbo.Category(CategoryName)VALUES(N'Footwear')
INSERT INTO dbo.Category(CategoryName)VALUES(N'Accessories');
--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Fedora',1)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Panama',1)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'T-Shirt',2)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Sweater',2)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Jean',3)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Skirt',3)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Shoe',4)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Sock',4)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES (N'Backpacks',5);
--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES (N'Rings and Chains',5);
INSERT INTO Product VALUES (N'Male T-Shirt I7TSH545I',N'Male T-Shirt I7TSH545I',190000,133000,3,100,1,1)
INSERT INTO Product VALUES (N'Male T-Shirt I7TSH535I',N'Male T-Shirt I7TSH535I',250000 ,250000,2,100,4,2)
INSERT INTO Product VALUES (N'Female T-Shirt I9TSH553I',N'Female T-Shirt I9TSH553I',250000,25000,3,100,1,3)
INSERT INTO Product VALUES (N'Female T-Shirt I9TSH569I',N'Female T-Shirt I9TSH569I',190000,190000,2,100,1,1)
INSERT INTO Product VALUES (N'Female T-Shirt I9TSH545I',N'Female T-Shirt I9TSH545I',190000,57000 ,3,100,4,2)
INSERT INTO Product VALUES (N'BLUE STRIPES SWEATER - WHITE',N'BLUE STRIPES SWEATER - WHITE',350000,350000,2,100,5,1)
INSERT INTO Product VALUES (N'YELLOW STRIPES SWEATER - BLACK',N'YELLOW STRIPES SWEATER - BLACK',350000,350000,4,100,1,3)
INSERT INTO Product VALUES (N'CLASSIC LOGO SWEATERS (NAVY)',N'CLASSIC LOGO SWEATERS (NAVY)',450000,450000,2,100,6,2)
--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.ProductImg VALUES (1,'5000BH_TAN.jpg');
INSERT INTO dbo.ProductImg VALUES (2,'63112-Bailey-Hats-Black.jpg');
INSERT INTO dbo.ProductImg VALUES (3,'63112-NATURALPEACOCK.jpg');
INSERT INTO dbo.ProductImg VALUES (4,'63112-Bailey-Hats-Cloud.jpg');
INSERT INTO dbo.ProductImg VALUES (5,'_o_t-shirt_nam_c_tr_n_i7tsh545i_ghi_m-xanh_ng_c_190000.jpg');
INSERT INTO dbo.ProductImg VALUES (6,'_o_t-shirt_nam_c_tr_n_i7tsh545i_t_m_than-ghi_190000.jpg');
INSERT INTO dbo.ProductImg VALUES (3,'_o_t-shirt_nam_c_tr_n_i7tsh535i_xanh_r_u_250000.jpg.jpg');
INSERT INTO dbo.ProductImg VALUES (4,'_o_t-shirt_nam_c_tr_n_i7tsh535i_xanh_c_v_t_250000.jpg');
INSERT INTO dbo.ProductImg VALUES (5,'_o_t_shirt_n_c_tr_n_i9tsh553i_en_b_c_250k.jpg');
INSERT INTO dbo.ProductImg VALUES (2,'_o_t_shirt_n_c_tr_n_i9tsh569i_en_190k.jpg');
INSERT INTO dbo.ProductImg VALUES (2,'_o_t-shirt_n_c_tr_n_tay_xo_n_i9tsh545i_k_cam_190000.jpg');
INSERT INTO dbo.ProductImg VALUES (3,'dosiin-zombie-blue-stripes-sweater-white-109071109071.jpg');
--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Waiting for Confirmation')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Packaging')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Delivering')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Canceled')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Completed')
--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Orders VALUES (1, 270000, null, 3, '2021/06/06 04:17',1);
INSERT INTO Orders VALUES (2, 270000, null, 3, '2021/06/06 04:19',2);
INSERT INTO Orders VALUES (3, 270000, null, 3, '2021/06/06 04:12',1);
INSERT INTO Orders VALUES (4, 270000, null, 2, '2021/06/06 04:00',2);
INSERT INTO Orders VALUES (4, 270000, null, 3, '2021/06/06 04:17',3);
INSERT INTO Orders VALUES (5, 90000, null, 3, '2021/06/16 12:36',1);
INSERT INTO Orders VALUES (5, 1270000, null, 3, '2021/06/12 10:18',2);
INSERT INTO Orders VALUES (6, 1270000, null, 1, '2021/09/11 01:30',3);
INSERT INTO Orders VALUES (6, 143000, null, 5, '2021/09/11 01:30',4);
--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT [dbo].[Order_Detail] ( [OrderID],  [ProductName], [ProductPrice], [Quantity]) VALUES ( 1, N'Borsalino Bogart Fur Felt Fedora', 15, 1)
GO
INSERT [dbo].[Order_Detail] ( [OrderID],  [ProductName], [ProductPrice], [Quantity]) VALUES ( 1, N'Borsalino Seta Bicolore Fedora', 2, 3)
GO
INSERT [dbo].[Order_Detail] ( [OrderID],  [ProductName], [ProductPrice], [Quantity]) VALUES ( 2,  N'Bailey Tate Braided Fedora', 5, 2)
GO
INSERT [dbo].[Order_Detail] ([OrderID],  [ProductName], [ProductPrice], [Quantity]) VALUES ( 3,  N'Bailey Archer Braid Fedora', 6, 3)
GO
INSERT [dbo].[Order_Detail] ( [OrderID],  [ProductName], [ProductPrice], [Quantity]) VALUES ( 4,  N'Bailey Craig Braided Fedora', 150, 1)
GO
INSERT [dbo].[Order_Detail] ( [OrderID],  [ProductName], [ProductPrice], [Quantity]) VALUES ( 5,  N'Mayser Calas Panama Straw Hat', 270000, 1)
GO
INSERT [dbo].[Order_Detail] ([OrderID],  [ProductName], [ProductPrice], [Quantity]) VALUES ( 6,  N'Mayser Piero Panama Straw Hat', 90000, 2)
GO
--/------------------------------------------------------------------------------------------------------------------------------------------
insert into dbo.[ShipInfo]([CustomerName],[ShippingAddress],[PhoneNum])VALUES( N'Qu?c V?', N'Hà N?i', '0866112212' ) 
insert into dbo.[ShipInfo]([CustomerName],[ShippingAddress],[PhoneNum])VALUES( N'Thái Dương', N'Phú Th?', '08661122223' ) 
insert into dbo.[ShipInfo]([CustomerName],[ShippingAddress],[PhoneNum])VALUES( N'Hải Phòng', N'Hải Phòng', '08661122223' ) 
insert into dbo.[ShipInfo]([CustomerName],[ShippingAddress],[PhoneNum])VALUES( N'Nam ', N'Hải Phòng', '0866112233' ) 
insert into dbo.[ShipInfo]([CustomerName],[ShippingAddress],[PhoneNum])VALUES( N'Linh', N'Phú Th?', '08661122523' ) 
insert into dbo.[ShipInfo]([CustomerName],[ShippingAddress],[PhoneNum])VALUES( N'Thái', N'Nghệ An', '08661122723' ) 
--/------------------------------------------------------------------------------------------------------------------------------------------
insert into dbo.[ShipInfo]([CustomerName],[ShippingAddress],[PhoneNum])VALUES( N'Thái Nam', N'Phú Th?', '086611223' ) 
INSERT INTO Feedback VALUES (1, 1, 1, N'Very good');
INSERT INTO Feedback VALUES (2, 2, 2, N'Good');
INSERT INTO Feedback VALUES (3, 1, 3, N'S?n ph?m r?t t?t');
INSERT INTO Feedback VALUES (4, 1, 4, N'G?i sai s?n ph?m');
--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'maintn',   N'Áo phông xám n?, item mix đ? th?i thư?ng',N'Áo phông xám là m?t item đư?c nhi?u b?n tr? yêu thích. Khi xu hư?ng th?i trang th? gi?i đang hư?ng đ?n nh?ng th? đơn gi?n, tinh t? th? gam màu xám đư?c đánh giá r?t hi?n đ?i, tr? trung và là m?t trong nh?ng gam màu hot trend th?i gian g?n đây. 

V?i áo phông xám, ch? em có th? bi?n t?u linh ho?t trong cách ph?i đ?, lên đ? ?n tư?ng mà không lo nh?t nh?a, kém n?i b?t. ',N'1.jpg')
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'quocvu',   N'Áo thun oversize chu?n phong cách, ?n tư?ng',N'Áo phông oversize đang là m?t hot item d?n đ?u xu hư?ng th?i trang gi?i tr? hi?n nay. Ngày càng nhi?u các b?n tr? yêu thích, ưa chu?ng và đánh giá cao ki?u áo này. 

M?t item đ?y m?i m?, phá cách và tính ?ng d?ng th?c ti?n cao như áo phông oversize qu? th?c s? thu hút s? quan tâm c?a r?t nhi?u b?n tr?. ',N'2.jpg')
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'minh123',  N'Blazzer, xu th? th?i trang 2021',N'V?i s? thay đ?i liên t?c, xu hư?ng th?i trang luôn đư?c c?p nh?t m?i m? hơn, đ?c đáo, hi?n đ?i và thu hút hơn. Nh?ng phong cách m?i, xu th? th?i trang hot luôn đư?c m?i ngư?i quan tâm, đ?c bi?t là gi?i tr?. Không th? ph? nh?n ngành công nghi?p th?i trang đang phát tri?n r?t m?nh m?. Không ch? đơn gi?n là cách ăn m?c, cách mix&match đ? hay di?n đ? theo phong cách yêu thích, th?i trang c?n là s? đ?i m?i, phá cách và tràn đ?y s?c sáng t?o ?n tư?ng. V?y b?n đ? có ? tư?ng g? cho m?nh chưa? Cùng Shope khám phá ngay nhé.',N'3.jpg')
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'author_1',   N'Mix đ? cho nàng ngày hè',N'B?n có th? ch?n nh?ng gam màu sáng như tr?ng, cam, be,.. đ? t?o s? tr? trung, tươi m?i ho?c nh?ng gam màu tr?m t?i như đen, nâu, xanh rêu,... v?a đem đ?n s? tinh t? v?a phong cách, th?i trang.',N'4.jpg')
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'author_2',  N'Áo sơ mi cho nàng c?c tr? trung và cá tính',N'Áo sơ mi v?n là m?t item must-have trong t? đ? c?a phái n? b?i s? đơn gi?n, tinh t?; d? ph?i đ? và có th? m?c trong h?u h?t m?i t?nh hu?ng như đi h?c, đi làm,đi chơi, đi ph?ng v?n,...Thông d?ng - d? ph?i - chưa bao gi? l?i m?t là nh?ng t? có th? dùng đ? miêu t? v? áo sơ mi tr?ng. Là m?t item qu?c dân luôn có s?n trong t? đ? c?a t?t c? m?i ngư?i, nh?ng chi?c áo sơ mi tr?ng luôn khi?n ngư?i m?c ngây ng?t b?i hi?u qu? th?i trang mà nó mang l?i: s? tr? trung, l?ch thi?p và phong cách. ',N'5.jpg')
--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.Banner VALUES('banner10.png')
INSERT INTO dbo.Banner VALUES('banner35.png')
INSERT INTO dbo.Banner VALUES('banner40.png')
INSERT INTO dbo.Banner VALUES('banner60.png')
INSERT INTO dbo.Banner VALUES('banner80.png')