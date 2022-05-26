
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create table [Role](
	RoleID int IDENTITY(1, 1) primary key,
	RoleName nvarchar (20),
);
GO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[Brand](
	[BrandID] [int] IDENTITY(1,1)NOT NULL PRIMARY KEY,
	[BrandName] [nvarchar](200) NULL
)

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
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [Users] (
	UserID int PRIMARY KEY identity(1,1),
	Username nvarchar(500),
	Password varchar(1000),
	email nvarchar(1000),
	[RoleID] int,
	isBlock INT,
	constraint RoleID_in_Role FOREIGN KEY(RoleID) REFERENCES [Role](RoleID)
);
GO
INSERT INTO Users VALUES(N'admin','123','admin@fpt.edu.vn',1,0);
INSERT INTO Users VALUES(N'Duong','123','duong@fpt.edu.vn',2,0);
INSERT INTO Users VALUES(N'Duc','123','duc@fpt.edu.vn',2,0);
INSERT INTO Users VALUES(N'Anh','123','anh@fpt.edu.vn',3,0);
INSERT INTO Users VALUES(N'Huu','123','admin@fpt.edu.vn',3,0);
INSERT INTO Users VALUES(N'Linh','123','admin@fpt.edu.vn',3,0);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE User_info(
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	UserID int,
	Firstname nvarchar(500),
	Lastname nvarchar(1000),
	[Address] NVARCHAR(1000),
	PhoneNum varchar(20),
	constraint userID_in_user_address FOREIGN KEY(UserID) REFERENCES Users(UserID),
) 
GO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Category (
	CategoryID int PRIMARY KEY identity(1,1),
	CategoryName nvarchar(1000)
)
GO
INSERT INTO dbo.Category(CategoryName)VALUES(N'Hat')
INSERT INTO dbo.Category(CategoryName)VALUES(N'Shirt')
INSERT INTO dbo.Category(CategoryName)VALUES(N'Legwear')
INSERT INTO dbo.Category(CategoryName)VALUES(N'Footwear')
INSERT INTO dbo.Category(CategoryName)VALUES(N'Accessories');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [dbo].[SubCategory](
	[SubCategoryID] [int] PRIMARY KEY  IDENTITY(1,1) ,
	[SubCategoryName] [nvarchar](255),
	[CategoryID] [int] ,
	constraint CategoryID FOREIGN KEY (CategoryID)  REFERENCES Category(CategoryID)
)
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
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Product (
	ProductID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	ProductName nvarchar(1000),
	Description nvarchar(2000),
	OriginalPrice int, 
	SalePrice int,	
	SubCategoryID int,
	Amount int,
	BrandID int,
	constraint product_in_subCategory FOREIGN KEY(SubCategoryID) REFERENCES SubCategory(SubCategoryID),
	constraint BrandID_in_Brand FOREIGN KEY(BrandID) REFERENCES Brand(BrandID)
) 
GO
INSERT INTO Product VALUES (N'Male T-Shirt I7TSH545I',N'Male T-Shirt I7TSH545I',190000,133000,3,100,1)
INSERT INTO Product VALUES (N'Male T-Shirt I7TSH535I',N'Male T-Shirt I7TSH535I',250000 ,250000,2,100,4)
INSERT INTO Product VALUES (N'Female T-Shirt I9TSH553I',N'Female T-Shirt I9TSH553I',250000,25000,3,100,1)
INSERT INTO Product VALUES (N'Female T-Shirt I9TSH569I',N'Female T-Shirt I9TSH569I',190000,190000,2,100,1)
INSERT INTO Product VALUES (N'Female T-Shirt I9TSH545I',N'Female T-Shirt I9TSH545I',190000,57000 ,3,100,4)
INSERT INTO Product VALUES (N'BLUE STRIPES SWEATER - WHITE',N'BLUE STRIPES SWEATER - WHITE',350000,350000,2,100,5)
INSERT INTO Product VALUES (N'YELLOW STRIPES SWEATER - BLACK',N'YELLOW STRIPES SWEATER - BLACK',350000,350000,4,100,1)
INSERT INTO Product VALUES (N'CLASSIC LOGO SWEATERS (NAVY)',N'CLASSIC LOGO SWEATERS (NAVY)',450000,450000,2,100,6)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[ProductImg](
	[ProductID] [int]  ,
	[ProductImgURL] [varchar](255) ,
	constraint ProductImg_ID FOREIGN KEY([ProductID])REFERENCES [dbo].[Product] ([ProductID])
)
GO
INSERT INTO dbo.ProductImg VALUES (9,'5000BH_TAN.jpg');
INSERT INTO dbo.ProductImg VALUES (10,'63112-Bailey-Hats-Black.jpg');
INSERT INTO dbo.ProductImg VALUES (10,'63112-NATURALPEACOCK.jpg');
INSERT INTO dbo.ProductImg VALUES (10,'63112-Bailey-Hats-Cloud.jpg');
INSERT INTO dbo.ProductImg VALUES (11,'_o_t-shirt_nam_c_tr_n_i7tsh545i_ghi_m-xanh_ng_c_190000.jpg');
INSERT INTO dbo.ProductImg VALUES (11,'_o_t-shirt_nam_c_tr_n_i7tsh545i_t_m_than-ghi_190000.jpg');
INSERT INTO dbo.ProductImg VALUES (12,'_o_t-shirt_nam_c_tr_n_i7tsh535i_xanh_r_u_250000.jpg.jpg');
INSERT INTO dbo.ProductImg VALUES (12,'_o_t-shirt_nam_c_tr_n_i7tsh535i_xanh_c_v_t_250000.jpg');
INSERT INTO dbo.ProductImg VALUES (13,'_o_t_shirt_n_c_tr_n_i9tsh553i_en_b_c_250k.jpg');
INSERT INTO dbo.ProductImg VALUES (14,'_o_t_shirt_n_c_tr_n_i9tsh569i_en_190k.jpg');
INSERT INTO dbo.ProductImg VALUES (15,'_o_t-shirt_n_c_tr_n_tay_xo_n_i9tsh545i_k_cam_190000.jpg');
INSERT INTO dbo.ProductImg VALUES (16,'dosiin-zombie-blue-stripes-sweater-white-109071109071.jpg');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[Order_Status](
	[ID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Name] [nvarchar](50) NOT NULL,
 )
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Waiting for Confirmation')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Packaging')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Delivering')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Canceled')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Completed')
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
 CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[UserID] [int] NULL,
	[TotalPrice] [int] NULL,
	[Note] [nvarchar](2000) NULL,
	[Status] [int] NULL,
	[Date] [DATETIME] NULL ,
	constraint userID_in_order_status FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint statusID_in_order_status FOREIGN KEY(Status) REFERENCES Order_Status(ID)
) 
INSERT INTO Orders VALUES (1, 270000, null, 3, '2021/06/06 04:17');
INSERT INTO Orders VALUES (2, 270000, null, 3, '2021/06/06 04:19');
INSERT INTO Orders VALUES (3, 270000, null, 3, '2021/06/06 04:12');
INSERT INTO Orders VALUES (4, 270000, null, 2, '2021/06/06 04:00');
INSERT INTO Orders VALUES (4, 270000, null, 3, '2021/06/06 04:17');
INSERT INTO Orders VALUES (5, 90000, null, 3, '2021/06/16 12:36');
INSERT INTO Orders VALUES (5, 1270000, null, 3, '2021/06/12 10:18');
INSERT INTO Orders VALUES (6, 1270000, null, 1, '2021/09/11 01:30');
INSERT INTO Orders VALUES (6, 143000, null, 5, '2021/09/11 01:30');

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[Order_Detail](
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	[OrderID] [int] NOT NULL ,
	[ProductName] [nvarchar](1000) NOT NULL,
	[ProductPrice] [int] NOT NULL,	
	[Quantity] [int] NOT NULL,
	constraint orderID_in_order_detail FOREIGN KEY(OrderID) REFERENCES Orders(ID)	
)
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


-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE ShipInfo (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	Order_ID int,
	CustomerName nvarchar(1000), --Real name of the Customer
	ShippingAddress nvarchar(1000), 
	PhoneNum varchar(20),
	Note nvarchar(2000),
	constraint order_id_in_ship_info FOREIGN KEY(Order_ID) REFERENCES Orders(ID)
) 
insert into dbo.[ShipInfo]([Order_ID],[CustomerName],[ShippingAddress],[PhoneNum],[Note])VALUES( 1,N'Qu?c V?', N'Hà N?i', '0866112212', N'Nothing') 
insert into dbo.[ShipInfo]([Order_ID],[CustomerName],[ShippingAddress],[PhoneNum],[Note])VALUES( 2,N'Thái Dýõng', N'Phú Th?', '08661122223', N'Nothing') 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Notifications(
	ID int PRIMARY KEY identity (1,1),
	UserID int,
	OrderID int,
	Content nvarchar(1000),
	status int,
	time datetime,

)
GO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Feedback (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	UserID int,
	ProductID int,
	OrderID int,
	FeedbackDetail nvarchar(2000),
	constraint userID_in_user_3 FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint orderID_in_orders_6 FOREIGN KEY(OrderID) REFERENCES Orders(ID),
	constraint productID_in_feedback FOREIGN KEY(ProductID) REFERENCES Product(ProductID),
)
GO
INSERT INTO Feedback VALUES (1, 1, 1, N'Very good');
INSERT INTO Feedback VALUES (2, 2, 2, N'Good');
INSERT INTO Feedback VALUES (3, 1, 3, N'S?n ph?m r?t t?t');
INSERT INTO Feedback VALUES (4, 1, 4, N'G?i sai s?n ph?m');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Feedback_Replies (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	FeedbackID int,
	UserID int,
	RepliesText nvarchar(2000),
	constraint userID_in_user_4 FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint feedbackID_in_feedback FOREIGN KEY(FeedbackID) REFERENCES Feedback(ID),
) 
GO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create TABLE Blogs(
ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
Author nvarchar(100),
Title nvarchar(2500),
Content nvarchar(2500),
imageLink nvarchar(1000),
)
GO
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'maintn',   N'Áo phông xám n?, item mix ð? th?i thý?ng',N'Áo phông xám là m?t item ðý?c nhi?u b?n tr? yêu thích. Khi xu hý?ng th?i trang th? gi?i ðang hý?ng ð?n nh?ng th? ðõn gi?n, tinh t? th? gam màu xám ðý?c ðánh giá r?t hi?n ð?i, tr? trung và là m?t trong nh?ng gam màu hot trend th?i gian g?n ðây. 

V?i áo phông xám, ch? em có th? bi?n t?u linh ho?t trong cách ph?i ð?, lên ð? ?n tý?ng mà không lo nh?t nh?a, kém n?i b?t. ',N'1.jpg')
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'quocvu',   N'Áo thun oversize chu?n phong cách, ?n tý?ng',N'Áo phông oversize ðang là m?t hot item d?n ð?u xu hý?ng th?i trang gi?i tr? hi?n nay. Ngày càng nhi?u các b?n tr? yêu thích, ýa chu?ng và ðánh giá cao ki?u áo này. 

M?t item ð?y m?i m?, phá cách và tính ?ng d?ng th?c ti?n cao nhý áo phông oversize qu? th?c s? thu hút s? quan tâm c?a r?t nhi?u b?n tr?. ',N'2.jpg')
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'minh123',  N'Blazzer, xu th? th?i trang 2021',N'V?i s? thay ð?i liên t?c, xu hý?ng th?i trang luôn ðý?c c?p nh?t m?i m? hõn, ð?c ðáo, hi?n ð?i và thu hút hõn. Nh?ng phong cách m?i, xu th? th?i trang hot luôn ðý?c m?i ngý?i quan tâm, ð?c bi?t là gi?i tr?. Không th? ph? nh?n ngành công nghi?p th?i trang ðang phát tri?n r?t m?nh m?. Không ch? ðõn gi?n là cách ãn m?c, cách mix&match ð? hay di?n ð? theo phong cách yêu thích, th?i trang c?n là s? ð?i m?i, phá cách và tràn ð?y s?c sáng t?o ?n tý?ng. V?y b?n ð? có ? tý?ng g? cho m?nh chýa? Cùng Shope khám phá ngay nhé.',N'3.jpg')
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'author_1',   N'Mix ð? cho nàng ngày hè',N'B?n có th? ch?n nh?ng gam màu sáng nhý tr?ng, cam, be,.. ð? t?o s? tr? trung, týõi m?i ho?c nh?ng gam màu tr?m t?i nhý ðen, nâu, xanh rêu,... v?a ðem ð?n s? tinh t? v?a phong cách, th?i trang.',N'4.jpg')
INSERT INTO dbo.Blogs(Author,Title,Content,imageLink)VALUES(N'author_2',  N'Áo sõ mi cho nàng c?c tr? trung và cá tính',N'Áo sõ mi v?n là m?t item must-have trong t? ð? c?a phái n? b?i s? ðõn gi?n, tinh t?; d? ph?i ð? và có th? m?c trong h?u h?t m?i t?nh hu?ng nhý ði h?c, ði làm,ði chõi, ði ph?ng v?n,...Thông d?ng - d? ph?i - chýa bao gi? l?i m?t là nh?ng t? có th? dùng ð? miêu t? v? áo sõ mi tr?ng. Là m?t item qu?c dân luôn có s?n trong t? ð? c?a t?t c? m?i ngý?i, nh?ng chi?c áo sõ mi tr?ng luôn khi?n ngý?i m?c ngây ng?t b?i hi?u qu? th?i trang mà nó mang l?i: s? tr? trung, l?ch thi?p và phong cách. ',N'5.jpg')

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create table PostCategory(
ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
CategoryName nvarchar(1000)
)
GO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE ShipStatus(
ID INT IDENTITY(1,1) NOT NULL,
[Name] NVARCHAR(100),
);
GO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Ship (
	id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	CityName nvarchar(1000) ,
	ShipPrice int
) ON [PRIMARY]
GO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Delivery(
ID INT IDENTITY(1,1) NOT NULL,
ShipInfoID INT,
UserID INT,
[Status] INT,
FOREIGN KEY (ShipInfoID) REFERENCES dbo.ShipInfo(ID),
FOREIGN KEY (UserID) REFERENCES dbo.Users(UserID),
);
GO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Banner
(
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	Img VARCHAR(2500),
)
INSERT INTO dbo.Banner VALUES('banner10.png')
INSERT INTO dbo.Banner VALUES('banner35.png')
INSERT INTO dbo.Banner VALUES('banner40.png')
INSERT INTO dbo.Banner VALUES('banner60.png')
INSERT INTO dbo.Banner VALUES('banner80.png')
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
