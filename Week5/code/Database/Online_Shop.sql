
USE master
go
CREATE DATABASE Online_Shop
GO
USE Online_Shop
GO
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
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES (N'Rings and Chains',5);
--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Product VALUES (N'Borsalino Bogart Fur Felt Fedora',N'Borsalino celebrates its deep and long-lasting connection to the world of cinema with a special hat dedicated to Humphrey Bogart.',9600000,7400000,1,100,1,2)
INSERT INTO Product VALUES (N'Borsalino Seta Bicolore Fedora',N'The Borsalnio Seta Bicolore Fedora is a luxurious fur felt fedora with a brushed silk finish. With a 2 3/8" brim and a 4 1/4" crown, this is truly a classic fedora shape. Trimmed with a grosgrain hat band, this hat is a stylish option for any outfit! Fully lined and finished with a grosgrain sweatband for a soft fit. Made in Italy',6700000,5700000,1,100,1,2)
INSERT INTO Product VALUES (N'Bailey Tate Braided Fedora',N'The Bailey Tate Braided Fedora is a soft, flexible braided fedora with a matching band for a clean summertime look. A short 2 inch turned up brim can be snapped down in front or worn up all around, and the interior is unlined for a breezy feel. Lightweight and flattering, this hat will become part of your everyday look.',1500000,1500000,1,100,2,2)
INSERT INTO Product VALUES (N'Bailey Archer Braid Fedora',N'The Bailey Archer Braid Fedora is a short brimmed trilby fedora with a teardrop crown and stingy 1 5/8" snap brim for a modern silhouette. There is a two-tone stripe around the top of the crown that matches the hat band for a unique look that is flattering and fashionable. Soft and packable, this is a perfect lightweight hat for any occasion.',1700000 ,1700000 ,1,100,2,2)
INSERT INTO Product VALUES (N'Bailey Craig Braided Fedora',N'The Breed collection from Bailey of Hollywood represents the spirit of free-thinking sophistication. The Craig Braided Fedora is a great example of that notion with its spectacular Milan braid design and array of color options. Details include a center dent crown, a 2" snap brim, a comfort sweatband, and a grosgrain ribbon hatband.',1700000 ,1700000 ,1,100,2,2)
INSERT INTO Product VALUES (N'Mayser Calas Panama Straw Hat',N'The Mayser Calas Panama Straw Hat is a perfect summer hat made from natural straw. This straw hat features a 3 3/4" crown, 2 3/4" brim on sides and back and 2 7/8" in front, unique rope hatband with leather tabs, cloth sweatband, and sewn logo pin. Adhesive reinforcement at the crown protects the straw from cracking. Mayser is a premier German hatmaker that we are pleased to offer to our customers. Designed in Germany, hand-woven in Ecuador, finished in Slovakia.',2850000,2850000,2,100,3,2)
INSERT INTO Product VALUES (N'Mayser Piero Panama Straw Hat',N'The Mayser Piero Panama Straw Hat is a handsome downbrim hat made from genuine panama straw. This panama features a 4" crown with open weave design, 2 1/2" brim on the sides and 2 5/8" front and back, leather hatband, cloth sweatband, and sewn logo pin. Adhesive reinforcement at the crown protects the straw from cracking. Mayser is a premier German hatmaker that we are pleased to offer to our customers. Designed in Germany, hand-woven in Ecuador, finished in Slovakia.',4000000 ,3800000,2,100,3,2)
INSERT INTO Product VALUES (N'Mayser Nizza Panama Straw Hat',N'The Mayser Nizza Panama Straw Hat is a beautiful wide-brim fedora hat with a brisa fino weave. This panama fedora features a 4" crown, 3 1/8" brim, grosgrain band, cloth sweatband, sewn logo pin at the ribbon, and UV 60 sun protection. Adhesive reinforcement at the crown protects the straw from cracking. Mayser is a premier German hatmaker that we are pleased to offer to our customers. Designed in Germany, hand-woven in Ecuador, finished in Slovakia.',5500000 ,4950000 ,2,100,3,2)
INSERT INTO Product VALUES (N'Bailey Rockett Endura Telescope Crown Hat',N'The Bailey Rockett Endura Telescope Crown Hat is an exciting new hat for the summer season made from a revolutionary Endura straw- a paper straw woven with a thermosetting yarn that allows the hat to get wet and keep its shape, making it totally rainproof! The classic telescope crown and wide 3 1/8 inch brim are a timeless fashionable look, with the hand rolled edge giving it a unique twist. The braided hat band is a beautifully made finishing touch to this handsome hat. Proudly Made in the USA.',2500000 ,2500000 ,2,100,2,2)
INSERT INTO Product VALUES (N'Bailey Hanson Shantung Hat',N'The Bailey Hanson Shantung Hat is a light Shantung fedora with a center dent crown and 2 1/2 inch snap brim. A crisp classic look, this hat is finished with a slim ribbon hat band and a removable feather. A smart choice for summer. Made in the USA.',2950000 ,2950000 ,2,100,2,2)
INSERT INTO Product VALUES (N'Male T-Shirt I7TSH545I',N'Male T-Shirt I7TSH545I',190000,133000,3,100,4, 2)
INSERT INTO Product VALUES (N'Male T-Shirt I7TSH535I',N'Male T-Shirt I7TSH535I',250000 ,250000,3,100,4, 2)
INSERT INTO Product VALUES (N'Female T-Shirt I9TSH553I',N'Female T-Shirt I9TSH553I',250000,25000,3,100,4, 2)
INSERT INTO Product VALUES (N'Female T-Shirt I9TSH569I',N'Female T-Shirt I9TSH569I',190000,190000,3,100,4, 2)
INSERT INTO Product VALUES (N'Female T-Shirt I9TSH545I',N'Female T-Shirt I9TSH545I',190000,57000 ,3,100,4, 2)
INSERT INTO Product VALUES (N'BLUE STRIPES SWEATER - WHITE',N'BLUE STRIPES SWEATER - WHITE',350000,350000,4,100,5,2)
INSERT INTO Product VALUES (N'YELLOW STRIPES SWEATER - BLACK',N'YELLOW STRIPES SWEATER - BLACK',350000,350000,4,100,5,2)
INSERT INTO Product VALUES (N'CLASSIC LOGO SWEATERS (NAVY)',N'CLASSIC LOGO SWEATERS (NAVY)',450000,450000,4,100,6,2)
INSERT INTO Product VALUES (N'CLASSIC LOGO SWEATERS (SPORT GREY)',N'CLASSIC LOGO SWEATERS (SPORT GREY)',450000 ,450000 ,4,100,6,2)
INSERT INTO Product VALUES (N'Oops_I_did_it_again_2002',N'Oops_I_did_it_again_2002',390000,312000,4,100,7,2)
INSERT INTO Product VALUES (N'Jean Slim-fit Dark Blue W Butterfly Charms',N'Jean Slim-fit Dark Blue W Butterfly Charms',550000,275000,5,100,8,2)
INSERT INTO Product VALUES (N'Jean Skinny Wash',N'Jean Skinny Wash',500000,400000,5,100,8,2)
INSERT INTO Product VALUES (N'Jean Slim Dark Blue Wash W ICON DENIM Pocket',N'Jean Slim Dark Blue Wash W ICON DENIM Pocket',550000,385000 ,5,100,8,2)
INSERT INTO Product VALUES (N'Black Gnu Zipper Jean',N'Black Gnu Zipper Jean',1253000,1253000,5,100,9,2)
INSERT INTO Product VALUES (N'Black Gao Zipper Jean',N'Black Gao Zipper Jean',1253000,1253000,5,100,9,2)
INSERT INTO Product VALUES (N'DSS Skirt D Buckle',N'DSS Skirt D Buckle',285000,285000,6,100,10,2)
INSERT INTO Product VALUES (N'DSS Skirt Davies Label',N'DSS Skirt Davies Label',285000,285000,6,100,10,2)
INSERT INTO Product VALUES (N'ENVYLOOK A Long Skirt',N'ENVYLOOK A Long Skirt',750000,350000,6,100,11,2)
INSERT INTO Product VALUES (N'ENVYLOOK Eilett Skirt',N'ENVYLOOK Eilett Skirt',399000 ,199000,6,100,11,2)
INSERT INTO Product VALUES (N'ENVYLOOK Linen-Belt Skirt',N'ENVYLOOK Linen-Belt Skirt',570000,299000,6,100,11,2)
INSERT INTO Product VALUES (N'Nike Air Zoom Winflo 7 CJ0291-005',N'Nike Air Zoom Winflo 7 CJ0291-005',2929000 ,2196750 ,7,100,12,2)
INSERT INTO Product VALUES (N'Nike Benassi Slip Shoe 882410-010',N'Nike Benassi Slip Shoe 882410-010',1923000 ,961500 ,7,100,12,2 )
INSERT INTO Product VALUES (N'Nike Benassi Slp 882410-008',N'Nike Benassi Slp 882410-008',1569000 , 784500,7,100,12,2 )
INSERT INTO Product VALUES (N'Vans Slip-On Label Mix',N'Vans Slip-On Label Mix',1450000 ,1450000 ,7,100,13,2 )
INSERT INTO Product VALUES (N'Vans Sk8-Hi',N'Vans Sk8-Hi',1850000 ,1850000 ,7,100,13,2)
INSERT INTO Product VALUES (N'Male Sock Pack 3 I7SOK201H',N'Male Sock Pack 3 I7SOK201H',50000 ,50000 ,8,100,14,2 )
INSERT INTO Product VALUES (N'Male Sock I7SOK213E',N'Male Sock I7SOK213E', 15000, 15000, 8,100,14,2)
INSERT INTO Product VALUES (N'Male Sock I7SOK217E',N'Male Sock I7SOK217E',15000 ,15000 ,8,100,14,2)
INSERT INTO Product VALUES (N'Female Sock I9SOK015E',N'Female Sock I9SOK015E',15000 ,15000 ,8,100,14,2 )
INSERT INTO Product VALUES (N'Female Sock I9SOK222E',N'Female Sock I9SOK222E',15000 ,15000 ,8,100,14,2 )
INSERT INTO Product VALUES (N'Backpack V8BPK302I',N'Backpack V8BPK302I',690000 ,690000 ,9,100,14,2 )
INSERT INTO Product VALUES (N'Backpack V8BPK300I',N'Backpack V8BPK300I',590000 ,590000 ,9,100,14,2 )
INSERT INTO Product VALUES (N'Waterproof Backpack I7BPK003I',N'Waterproof Backpack I7BPK003I', 399000, 399000, 9,100,14,2 )
INSERT INTO Product VALUES (N'Unisex Adidas 4Athlts Id Bp FJ3924',N'Unisex Adidas 4Athlts Id Bp FJ3924', 1200000, 780000,9,100,14,2 )
INSERT INTO Product VALUES (N'Unisex Adidas Clas Bp Fabric GL0890',N'Unisex Adidas Clas Bp Fabric GL0890',700000 ,700000 ,9,100,14,2 )
INSERT INTO Product VALUES (N'FLAANS 925 SharpStar N',N'FLAANS 925 SharpStar N',356000 ,356000 ,10,100,15,2 )
INSERT INTO Product VALUES (N'FLAANS Bauli R',N'FLAANS Bauli R',156000 ,156000 ,10,100,15,2)
INSERT INTO Product VALUES (N'FLAANS Vin Bold R',N'FLAANS Vin Bold R',156000 ,156000 ,10,100,15,2)
INSERT INTO Product VALUES (N'FLAANS ChainBZ_N',N'FLAANS ChainBZ_N',516000 ,516000 ,10,100,15,2 )
INSERT INTO Product VALUES (N'FLAANS 925 NewMoon N',N'FLAANS 925 NewMoon N',356000 ,356000 ,10,100,15,2)

--/------------------------------------------------------------------------------------------------------------------------------------------

 
INSERT INTO dbo.ProductImg VALUES (1,'resources\img\products\Borsalino-Bogart.jpg');
INSERT INTO dbo.ProductImg VALUES (2,'resources\img\products\390310-Brosalino-Hats-Brown.jpg');
INSERT INTO dbo.ProductImg VALUES (3,'resources\img\products\81711BH-Bailey-Latte.jpg');
INSERT INTO dbo.ProductImg VALUES (4,'resources\img\products\81802-Bailey-Hats-Smoke.jpg');
INSERT INTO dbo.ProductImg VALUES (5,'resources\img\products\81717BHGRAPHITE.jpg');
INSERT INTO dbo.ProductImg VALUES (6,'resources\img\products\1270891-MayserCalas-2.jpg');
INSERT INTO dbo.ProductImg VALUES (7,'resources\img\products\1230091-MayserPiero.jpg');
INSERT INTO dbo.ProductImg VALUES (8,'resources\img\products\1212551-Nizza.jpg');
INSERT INTO dbo.ProductImg VALUES (8,'resources\img\products\HatBox.jpg');
INSERT INTO dbo.ProductImg VALUES (9,'resources\img\products\5000BH_TAN.jpg');
INSERT INTO dbo.ProductImg VALUES (10,'resources\img\products\63112-Bailey-Hats-Cloud.jpg');
INSERT INTO dbo.ProductImg VALUES (11,'resources\img\products\_o_t-shirt_nam_c_tr_n_i7tsh545i_ghi_m-xanh_ng_c_190000.jpg');
INSERT INTO dbo.ProductImg VALUES (12,'resources\img\products\_o_t-shirt_nam_c_tr_n_i7tsh535i_xanh_r_u_250000.jpg.jpg');
INSERT INTO dbo.ProductImg VALUES (12,'resources\img\products\_o_t-shirt_nam_c_tr_n_i7tsh535i_xanh_c_v_t_250000.jpg');
INSERT INTO dbo.ProductImg VALUES (13,'resources\img\products\_o_t_shirt_n_c_tr_n_i9tsh553i_en_b_c_250k.jpg');
INSERT INTO dbo.ProductImg VALUES (14,'resources\img\products\_o_t_shirt_n_c_tr_n_i9tsh569i_en_190k.jpg');
INSERT INTO dbo.ProductImg VALUES (15,'resources\img\products\_o_t-shirt_n_c_tr_n_tay_xo_n_i9tsh545i_k_cam_190000.jpg');
INSERT INTO dbo.ProductImg VALUES (16,'resources\img\products\dosiin-zombie-blue-stripes-sweater-white-109071109071.jpg');
INSERT INTO dbo.ProductImg VALUES (17,'resources\img\products\dosiin-zombie-yellow-stripes-sweater-black-109091109091.jpg');
INSERT INTO dbo.ProductImg VALUES (18,'resources\img\products\dosiin-freakers-classic-logo-sweatersnavy-223758223758.jpg');
INSERT INTO dbo.ProductImg VALUES (19,'resources\img\products\dosiin-freakers-classic-logo-sweaterssport-grey-223763223763.jpg');
INSERT INTO dbo.ProductImg VALUES (20,'resources\img\products\dosiin-karihada-oops-i-did-it-again-115992115992.jpg');
INSERT INTO dbo.ProductImg VALUES (21,'resources\img\products\dosiin-icon-denim-quan-jean-slim-fit-dark-blue-wbutterfly-charms-143605143605.jpg');
INSERT INTO dbo.ProductImg VALUES (22,'resources\img\products\dosiin-icon-denim-quan-jean-skinny-wash-tron-143621143621.jpg');
INSERT INTO dbo.ProductImg VALUES (23,'resources\img\products\dosiin-icon-denim-quan-jean-slim-dark-blue-wash-w-icon-denim-pocket-143645143645.jpg');
INSERT INTO dbo.ProductImg VALUES (24,'resources\img\products\dosiin-hyperdenim-vn-black-gnu-zipper-jean-202558202558.jpg');
INSERT INTO dbo.ProductImg VALUES (25,'resources\img\products\dosiin-hyperdenim-vn-black-gao-zipper-jean-202799202799.jpg');
INSERT INTO dbo.ProductImg VALUES (26,'resources\img\products\dosiin-davies-dss-skirt-d-buckle-103410103410.jpeg');
INSERT INTO dbo.ProductImg VALUES (27,'resources\img\products\dosiin-davies-dss-skirt-davies-label-103403103403.jpeg');
INSERT INTO dbo.ProductImg VALUES (28,'resources\img\products\dosiin-envylook-chan-vay-dai-arong-mau-mustard-envylook-a-long-skirt-8968989689.jpg');
INSERT INTO dbo.ProductImg VALUES (29,'resources\img\products\dosiin-envylook-chan-vay-cotton-dai-chun-co-dan-mau-black-envylook-eilett-skirt-8957789577.jpg');
INSERT INTO dbo.ProductImg VALUES (30,'resources\img\products\dosiin-envylook-quan-vay-vai-lanh-that-lung-mau-beige-envylook-linen-belt-skirtclone-7705877058.jpg');
INSERT INTO dbo.ProductImg VALUES (31,'resources\img\products\dosiin-nike-giay-chay-nam-nike-nike-air-zoom-winflo-cj-216832216832.jpg');
INSERT INTO dbo.ProductImg VALUES (32,'resources\img\products\dosiin-nike-giay-nam-nike-benassi-slip-shoe-215487215487.jpg');
INSERT INTO dbo.ProductImg VALUES (33,'resources\img\products\dosiin-nike-giay-nam-nike-benassi-slp-215474215474.jpg');
INSERT INTO dbo.ProductImg VALUES (34,'resources\img\products\dosiin-vans-vans-slip-on-label-mix-209123209123.jpg');
INSERT INTO dbo.ProductImg VALUES (35,'resources\img\products\dosiin-vans-vans-skhi-208636208636.jpg');
INSERT INTO dbo.ProductImg VALUES (36,'resources\img\products\t_t_ch_n_nam_c_ng_n_pack_3_i7sok201h_mixed_freesize_50k_1.jpg');
INSERT INTO dbo.ProductImg VALUES (37,'resources\img\products\t_t_ch_n_nam_c_trung_17sok213_-_50k_2.jpg');
INSERT INTO dbo.ProductImg VALUES (38,'resources\img\products\t_t_ch_n_nam_c_ng_n_17sok217e-40k_2.jpg');
INSERT INTO dbo.ProductImg VALUES (39,'resources\img\products\t_t_ch_n_n_c_trung_-_19sok015e_-_35k_2.jpg');
INSERT INTO dbo.ProductImg VALUES (40,'resources\img\products\t_t_ch_n_n_c_ng_n_19sok222e-30k_2.jpg');
INSERT INTO dbo.ProductImg VALUES (41,'resources\img\products\img_8595.jpg');
INSERT INTO dbo.ProductImg VALUES (42,'resources\img\products\img_8597.jpg');
INSERT INTO dbo.ProductImg VALUES (43,'resources\img\products\ba_l_ch_ng_s_c_ch_ng_th_m_n_c_i7bpk003i-001_29.14.43_-_en_-_590.000_.jpg');
INSERT INTO dbo.ProductImg VALUES (44,'resources\img\products\dosiin-adidas-ba-lo-tap-luyen-unisex-adidasathlts-id-bp-fj-152063152063.jpg');
INSERT INTO dbo.ProductImg VALUES (45,'resources\img\products\dosiin-adidas-ba-lo-tap-luyen-unisex-adidas-clas-bp-fabric-gl-220622220622.jpg');
INSERT INTO dbo.ProductImg VALUES (46,'resources\img\products\dosiin-flaans-day-chuyen-flaans-sharpstar-n-9458094580.jpg');
INSERT INTO dbo.ProductImg VALUES (47,'resources\img\products\dosiin-flaans-nhan-flaans-bauli-r-124297124297.jpg');
INSERT INTO dbo.ProductImg VALUES (48,'resources\img\products\dosiin-flaans-nhan-flaans-vin-bold-r-126742126742.jpg');
INSERT INTO dbo.ProductImg VALUES (49,'resources\img\products\dosiin-flaans-day-chuyen-flaans-chainbz-n-124335124335.jpg');
INSERT INTO dbo.ProductImg VALUES (50,'resources\img\products\dosiin-flaans-day-chuyen-flaans-newmoon-n-9457494574.jpg');
--/------------------------------------------------------------------------------------------------------------------------------------------
insert into dbo.[ShipInfo]([CustomerName],[ShippingAddress],[PhoneNum])VALUES( N'Qu?c V?', N'Hà N?i', '0866112212' ) 
insert into dbo.[ShipInfo]([CustomerName],[ShippingAddress],[PhoneNum])VALUES( N'Thái Dương', N'Phú Th?', '08661122223' ) 
insert into dbo.[ShipInfo]([CustomerName],[ShippingAddress],[PhoneNum])VALUES( N'Hải Phòng', N'Hải Phòng', '08661122223' ) 
insert into dbo.[ShipInfo]([CustomerName],[ShippingAddress],[PhoneNum])VALUES( N'Nam ', N'Hải Phòng', '0866112233' ) 
insert into dbo.[ShipInfo]([CustomerName],[ShippingAddress],[PhoneNum])VALUES( N'Linh', N'Phú Th?', '08661122523' ) 
insert into dbo.[ShipInfo]([CustomerName],[ShippingAddress],[PhoneNum])VALUES( N'Thái', N'Nghệ An', '08661122723' ) 
insert into dbo.[ShipInfo]([CustomerName],[ShippingAddress],[PhoneNum])VALUES( N'Thái Nam', N'Phú Th?', '086611223' ) 

--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'Quocvu',   N'Áo phông xám nữ, item mix đồ thời thượng',N'Áo phông xám là một item được nhiều bạn trẻ yêu thích. Khi xu hướng thời trang thế giới đang hướng đến những thứ đơn giản, tinh tế thì gam màu xám được đánh giá rất hiện đại, trẻ trung và là một trong những gam màu hot trend thời gian gần đây. 

Với áo phông xám, chị em có thể biến tấu linh hoạt trong cách phối đồ, lên đồ ấn tượng mà không lo nhạt nhòa, kém nổi bật. ',N'resources\img\Blog\1.jpg')
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'QuocVu',   N'Áo thun oversize chuẩn phong cách, ấn tượng',N'Áo phông oversize đang là một hot item dẫn đầu xu hướng thời trang giới trẻ hiện nay. Ngày càng nhiều các bạn trẻ yêu thích, ưa chuộng và đánh giá cao kiểu áo này. 

Một item đầy mới mẻ, phá cách và tính ứng dụng thực tiễn cao như áo phông oversize quả thực sẽ thu hút sự quan tâm của rất nhiều bạn trẻ. ',N'resources\img\Blog\2.jpg')
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'minh123',  N'Blazzer, xu thế thời trang 2021',N'Với sự thay đổi liên tục, xu hướng thời trang luôn được cập nhật mới mẻ hơn, độc đáo, hiện đại và thu hút hơn. Những phong cách mới, xu thế thời trang hot luôn được mọi người quan tâm, đặc biệt là giới trẻ. Không thể phủ nhận ngành công nghiệp thời trang đang phát triển rất mạnh mẽ. Không chỉ đơn giản là cách ăn mặc, cách mix&match đồ hay diện đồ theo phong cách yêu thích, thời trang còn là sự đổi mới, phá cách và tràn đầy sức sáng tạo ấn tượng. Vậy bạn đã có ý tưởng gì cho mình chưa? Cùng Shope khám phá ngay nhé.',N'resources\img\Blog\3.jpg')
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'author_1',   N'Mix đồ cho nàng ngày hè',N'Bạn có thể chọn những gam màu sáng như trắng, cam, be,.. để tạo sự trẻ trung, tươi mới hoặc những gam màu trầm tối như đen, nâu, xanh rêu,... vừa đem đến sự tinh tế vừa phong cách, thời trang.',N'resources\img\Blog\4.jpg')
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'author_2',  N'Áo sơ mi cho nàng cực trẻ trung và cá tính',N'Áo sơ mi vốn là một item must-have trong tủ đồ của phái nữ bởi sự đơn giản, tinh tế; dễ phối đồ và có thể mặc trong hầu hết mọi tình huống như đi học, đi làm,đi chơi, đi phỏng vấn,...Thông dụng - dễ phối - chưa bao giờ lỗi mốt là những từ có thể dùng để miêu tả về áo sơ mi trắng. Là một item quốc dân luôn có sẵn trong tủ đồ của tất cả mọi người, những chiếc áo sơ mi trắng luôn khiến người mặc ngây ngất bởi hiệu quả thời trang mà nó mang lại: sự trẻ trung, lịch thiệp và phong cách. ',N'resources\img\Blog\5.jpg')

--/------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.Banner VALUES('resources\img\banner\banner10.png')
INSERT INTO dbo.Banner VALUES('resources\img\banner\banner35.png')
INSERT INTO dbo.Banner VALUES('resources\img\banner\banner40.png')
INSERT INTO dbo.Banner VALUES('resources\img\banner\banner60.png')
INSERT INTO dbo.Banner VALUES('resources\img\banner\banner80.png')
--/------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE ProductStatus (
	StatusID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	StatusName nvarchar(1000)
) 
GO
INSERT INTO ProductStatus VALUES ( N'Available');
INSERT INTO ProductStatus VALUES ( N'StopBusiness');
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
INSERT INTO Feedback VALUES (1, 1, 1, N'Very good');
INSERT INTO Feedback VALUES (2, 2, 2, N'Good');
INSERT INTO Feedback VALUES (3, 1, 3, N'Sản phẩmm rất tốt');
INSERT INTO Feedback VALUES (4, 1, 4, N'Gửi sai sản phẩm');
