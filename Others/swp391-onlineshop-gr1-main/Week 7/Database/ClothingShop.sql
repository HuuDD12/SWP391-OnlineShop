CREATE DATABASE OnlineShop;
--DROP DATABASE OnlineShop

GO
USE [OnlineShop]
GO



-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE UserStatus (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	StatusName nvarchar(1000)
) ON [PRIMARY]
GO
INSERT INTO UserStatus VALUES (N'Active');
INSERT INTO UserStatus VALUES (N'Locked');
INSERT INTO UserStatus VALUES (N'Gmail Login');
INSERT INTO UserStatus VALUES (N'Unverified');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create table [Role](
	RoleID int IDENTITY(1, 1) primary key,
	RoleName nvarchar (20),
	-- Admin,marketing, seller, customer
);
GO
INSERT INTO [Role] VALUES (N'Admin');
INSERT INTO Role VALUES (N'Seller');
INSERT INTO Role VALUES (N'Customer');
INSERT INTO Role VALUES (N'Marketing');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [Users] (
	UserID int PRIMARY KEY identity(1,1),
	Username nvarchar(500),
	Password varchar(1000),
	email nvarchar(1000),
	[RoleID] int,
	StatusID int,
	constraint Status_ID_in_Status FOREIGN KEY(StatusID) REFERENCES UserStatus(ID),
	constraint RoleID_in_Role FOREIGN KEY(RoleID) REFERENCES [Role](RoleID)
);
GO

insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('jjellico0', 'Jellico', 'wjellico0@npr.org', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('dimpson1', 'Impson', 'simpson1@wiley.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('cdahlen2', 'Dahlen', 'adahlen2@unblog.fr', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('jstote3', 'Stote', 'ostote3@zimbio.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('jjanku4', 'Janku', 'jjanku4@yahoo.co.jp', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('gseckom5', 'Seckom', 'pseckom5@amazon.co.uk', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('nstainburn6', 'Stainburn', 'astainburn6@edublogs.org', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('snewlands7', 'Newlands', 'dnewlands7@intel.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('mrowesby8', 'Rowesby', 'erowesby8@oracle.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('sbridgwood9', 'Bridgwood', 'sbridgwood9@businessweek.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('afranca', 'Franc', 'mfranca@hibu.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('wingyonb', 'Ingyon', 'wingyonb@oakley.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('jbenallackc', 'Benallack', 'abenallackc@admin.ch', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('ksellickd', 'Sellick', 'lsellickd@unicef.org', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('ggurwoode', 'Gurwood', 'ngurwoode@examiner.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('mallinghamf', 'Allingham', 'tallinghamf@examiner.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('hmedfordg', 'Medford', 'bmedfordg@smh.com.au', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('kelstobh', 'Elstob', 'zelstobh@accuweather.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('rnouchi', 'Nouch', 'pnouchi@msu.edu', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('ecurromj', 'Currom', 'kcurromj@mayoclinic.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('nmcturkk', 'McTurk', 'lmcturkk@webeden.co.uk', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('clathwoodl', 'Lathwood', 'nlathwoodl@theatlantic.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('rsincockm', 'Sincock', 'isincockm@jimdo.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('drobyn', 'Roby', 'mrobyn@toplist.cz', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('awolterso', 'Wolters', 'rwolterso@google.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('criallp', 'Riall', 'kriallp@stanford.edu', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('rscurryq', 'Scurry', 'oscurryq@who.int', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('gbadwickr', 'Badwick', 'jbadwickr@time.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('zclinkards', 'Clinkard', 'gclinkards@vinaora.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('jmaberleyt', 'Maberley', 'rmaberleyt@biblegateway.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('lcahanu', 'Cahan', 'dcahanu@kickstarter.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('hgowersv', 'Gowers', 'cgowersv@google.com.br', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('bdallaw', 'Dalla', 'sdallaw@360.cn', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('caubinx', 'Aubin', 'laubinx@twitter.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('wdesantosy', 'De Santos', 'ldesantosy@cyberchimps.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('abedfordz', 'Bedford', 'ebedfordz@scribd.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('bjerromes10', 'Jerromes', 'sjerromes10@cbsnews.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('mbakey11', 'Bakey', 'hbakey11@huffingtonpost.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('dlocke12', 'Locke', 'elocke12@princeton.edu', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('sgabbitus13', 'Gabbitus', 'mgabbitus13@sfgate.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('tkauffman14', 'Kauffman', 'mkauffman14@thetimes.co.uk', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('kgodard15', 'Godard', 'egodard15@walmart.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('rburdess16', 'Burdess', 'eburdess16@uol.com.br', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('ralejandri17', 'Alejandri', 'lalejandri17@sakura.ne.jp', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('klutwyche18', 'Lutwyche', 'slutwyche18@vk.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('gdelete19', 'Delete', 'ddelete19@businesswire.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('cduns1a', 'Duns', 'aduns1a@wsj.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('bfallanche1b', 'Fallanche', 'rfallanche1b@last.fm', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('mderx1c', 'Derx', 'oderx1c@ning.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('lnewsome1d', 'Newsome', 'fnewsome1d@tiny.cc', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('hrhubottom1e', 'Rhubottom', 'arhubottom1e@sciencedaily.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('dkofax1f', 'Kofax', 'fkofax1f@unc.edu', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('vlandeg1g', 'Landeg', 'nlandeg1g@dailymotion.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('zlammiman1h', 'Lammiman', 'rlammiman1h@xing.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('kiverson1i', 'Iverson', 'siverson1i@amazonaws.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('cnudde1j', 'Nudde', 'hnudde1j@acquirethisname.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('astempe1k', 'Stempe', 'dstempe1k@dedecms.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('craund1l', 'Raund', 'traund1l@yellowbook.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('abottleson1m', 'Bottleson', 'tbottleson1m@about.me', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('tbart1n', 'Bart', 'sbart1n@miibeian.gov.cn', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('dopdenort1o', 'Opdenort', 'lopdenort1o@myspace.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('dredolfi1p', 'Redolfi', 'sredolfi1p@umich.edu', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('doldridge1q', 'Oldridge', 'soldridge1q@newsvine.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('kbarrell1r', 'Barrell', 'abarrell1r@twitpic.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('cscott1s', 'Scott', 'dscott1s@github.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('doman1t', 'Oman', 'moman1t@google.ca', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('mdixon1u', 'Dixon', 'tdixon1u@army.mil', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('iyouthead1v', 'Youthead', 'ayouthead1v@sbwire.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('amidlar1w', 'Midlar', 'tmidlar1w@moonfruit.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('ggrimmolby1x', 'Grimmolby', 'mgrimmolby1x@cocolog-nifty.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('zphilp1y', 'Philp', 'kphilp1y@google.cn', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('mgiannini1z', 'Giannini', 'rgiannini1z@rambler.ru', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('qmersey20', 'Mersey', 'fmersey20@samsung.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('fellwood21', 'Ellwood', 'eellwood21@loc.gov', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('bconstable22', 'Constable', 'fconstable22@studiopress.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('hsaffill23', 'Saffill', 'dsaffill23@huffingtonpost.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('toxbie24', 'Oxbie', 'goxbie24@webmd.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('ykoppeck25', 'Koppeck', 'wkoppeck25@spiegel.de', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('raveray26', 'Averay', 'aaveray26@alibaba.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('lwhitewood27', 'Whitewood', 'fwhitewood27@tinyurl.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('cbilston28', 'Bilston', 'abilston28@webnode.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('ltiner29', 'Tiner', 'ptiner29@studiopress.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('lgregine2a', 'Gregine', 'kgregine2a@bloglovin.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('fparsell2b', 'Parsell', 'mparsell2b@si.edu', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('fwolfe2c', 'Wolfe', 'rwolfe2c@intel.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('lbellis2d', 'Bellis', 'cbellis2d@icq.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('gwittke2e', 'Wittke', 'mwittke2e@marketwatch.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('lisaacson2f', 'Isaacson', 'wisaacson2f@fc2.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('anovotni2g', 'Novotni', 'dnovotni2g@unblog.fr', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('jclough2h', 'Clough', 'cclough2h@bloglines.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('bibotson2i', 'Ibotson', 'aibotson2i@usatoday.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('drichardin2j', 'Richardin', 'lrichardin2j@businessinsider.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('lchew2k', 'Chew', 'tchew2k@hhs.gov', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('wmackeeg2l', 'MacKeeg', 'mmackeeg2l@narod.ru', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('cgarz2m', 'Garz', 'ngarz2m@berkeley.edu', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('dmanagh2n', 'Managh', 'wmanagh2n@tinypic.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('bgiraudoux2o', 'Giraudoux', 'agiraudoux2o@hud.gov', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('astyan2p', 'Styan', 'bstyan2p@va.gov', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('dgillford2q', 'Gillford', 'bgillford2q@noaa.gov', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('nknappen2r', 'Knappen', 'kknappen2r@usa.gov', 3, 1);
INSERT INTO Users VALUES(N'Nguyễn Duy Mạnh','nguyenduymanh','ManhNDHE141170@fpt.edu.vn',1,1);
INSERT INTO Users VALUES(N'	Trần Văn Đức','tranvanduc','DucTVHE141699@fpt.edu.vn',2,1);
INSERT INTO Users VALUES(N'Nguyễn Gia Phú','nguyengiaphu','PhuNGHE150108@fpt.edu.vn',2,1);
INSERT INTO Users VALUES(N'	Ngô Thị Ngọc Mai','ngothingocmai','MaiNTNHE151402@fpt.edu.vn',3,1);
INSERT INTO Users VALUES(N'	Bạch Ngọc Minh Châu','bachngocminhchau','ChauBNMHE153019@fpt.edu.vn',3,1);
INSERT INTO Users VALUES(N'	Đinh Tiến Lâm','dinhtienlam','LamDTHE153097@fpt.edu.vn',3,1);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Ship (
	id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	CityName nvarchar(1000) ,
	ShipPrice int
) ON [PRIMARY]
GO
INSERT INTO Ship VALUES (N'An Giang', 30000);
INSERT INTO Ship VALUES (N'Bà Rịa-Vũng Tàu', 30000);
INSERT INTO Ship VALUES (N'Bạc Liêu', 30000);
INSERT INTO Ship VALUES (N'Bắc Kạn', 30000);
INSERT INTO Ship VALUES (N'Bắc Giang', 30000);
INSERT INTO Ship VALUES (N'Bắc Ninh', 30000);
INSERT INTO Ship VALUES (N'Bến Tre', 30000);
INSERT INTO Ship VALUES (N'Bình Dương', 30000);
INSERT INTO Ship VALUES (N'Bình Định', 30000);
INSERT INTO Ship VALUES (N'Bình Phước', 30000);
INSERT INTO Ship VALUES (N'Bình Thuận', 30000);
INSERT INTO Ship VALUES (N'Cà Mau', 30000);
INSERT INTO Ship VALUES (N'Cao Bằng', 30000);
INSERT INTO Ship VALUES (N'Cần Thơ', 30000);
INSERT INTO Ship VALUES (N'Đà Nẵng', 30000);
INSERT INTO Ship VALUES (N'Đắk Lắk', 30000);
INSERT INTO Ship VALUES (N'Đắk Nông', 30000);
INSERT INTO Ship VALUES (N'Điện Biên', 30000);
INSERT INTO Ship VALUES (N'Đồng Nai', 30000);
INSERT INTO Ship VALUES (N'Đồng Tháp', 30000);
INSERT INTO Ship VALUES (N'Gia Lai', 30000);
INSERT INTO Ship VALUES (N'Hà Giang', 30000);
INSERT INTO Ship VALUES (N'Hà Nam', 30000);
INSERT INTO Ship VALUES (N'Hà Nội', 20000);
INSERT INTO Ship VALUES (N'Hà Tĩnh', 30000);
INSERT INTO Ship VALUES (N'Hải Dương', 30000);
INSERT INTO Ship VALUES (N'Hải Phòng', 30000);
INSERT INTO Ship VALUES (N'Hòa Bình', 30000);
INSERT INTO Ship VALUES (N'Hồ Chí Minh', 30000);
INSERT INTO Ship VALUES (N'Hậu Giang', 30000);
INSERT INTO Ship VALUES (N'Hưng Yên', 30000);
INSERT INTO Ship VALUES (N'Khánh Hòa', 30000);
INSERT INTO Ship VALUES (N'Kiên Giang', 30000);
INSERT INTO Ship VALUES (N'Kon Tum', 30000);
INSERT INTO Ship VALUES (N'Lai Châu', 30000);
INSERT INTO Ship VALUES (N'Lào Cai', 30000);
INSERT INTO Ship VALUES (N'Lạng Sơn', 30000);
INSERT INTO Ship VALUES (N'Lâm Đồng', 30000);
INSERT INTO Ship VALUES (N'Long An', 30000);
INSERT INTO Ship VALUES (N'Nam Định', 30000);
INSERT INTO Ship VALUES (N'Nghệ An', 30000);
INSERT INTO Ship VALUES (N'Ninh Bình', 30000);
INSERT INTO Ship VALUES (N'Ninh Thuận', 30000);
INSERT INTO Ship VALUES (N'Phú Thọ', 30000);
INSERT INTO Ship VALUES (N'Phú Yên', 30000);
INSERT INTO Ship VALUES (N'Quảng Bình', 30000);
INSERT INTO Ship VALUES (N'Quảng Nam', 30000);
INSERT INTO Ship VALUES (N'Quảng Ngãi', 30000);
INSERT INTO Ship VALUES (N'Quảng Ninh', 30000);
INSERT INTO Ship VALUES (N'Quảng Trị', 30000);
INSERT INTO Ship VALUES (N'Sóc Trăng', 30000);
INSERT INTO Ship VALUES (N'Sơn La', 30000);
INSERT INTO Ship VALUES (N'Tây Ninh', 30000);
INSERT INTO Ship VALUES (N'Thái Bình', 30000);
INSERT INTO Ship VALUES (N'Thái Nguyên', 30000);
INSERT INTO Ship VALUES (N'Thanh Hóa', 30000);
INSERT INTO Ship VALUES (N'Thừa Thiên - Huế', 30000);
INSERT INTO Ship VALUES (N'Tiền Giang', 30000);
INSERT INTO Ship VALUES (N'Trà Vinh', 30000);
INSERT INTO Ship VALUES (N'Tuyên Quang', 30000);
INSERT INTO Ship VALUES (N'Vĩnh Long', 30000);
INSERT INTO Ship VALUES (N'Vĩnh Phúc', 30000);
INSERT INTO Ship VALUES (N'Yên Bái', 30000);

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE UserAddress (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	UserID int,
	ShipName nvarchar(500),
	ShipAddress nvarchar(1000),
	ShipCityID int,
	PhoneNum varchar(20),
	constraint userID_in_user_address FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint ship_city_in_ship_address FOREIGN KEY(ShipCityID) REFERENCES Ship(id)
) ON [PRIMARY]
GO

insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (1, 'Tracie', '1609 Redwing Junction', 21);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (2, 'Shellysheldon', '80 Homewood Pass', 45);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (3, 'Joletta', '180 Evergreen Circle', 61);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (4, 'Tammi', '920 Melby Trail', 1);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (5, 'Gabey', '20 Mitchell Alley', 62);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (6, 'Eba', '0 Dovetail Park', 38);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (7, 'Farica', '39269 Calypso Place', 20);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (8, 'Vevay', '730 Walton Crossing', 6);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (9, 'Caitrin', '61811 Oak Trail', 54);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (10, 'Hamlin', '48603 Cordelia Pass', 7);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (11, 'Hortense', '443 Eastwood Drive', 30);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (12, 'Ilario', '87 Luster Drive', 9);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (13, 'Rici', '13953 Gateway Trail', 43);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (14, 'Nola', '79435 Pawling Center', 49);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (15, 'Sax', '7501 Doe Crossing Place', 40);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (16, 'Dulcie', '266 High Crossing Way', 4);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (17, 'Beulah', '723 Summit Way', 18);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (18, 'Lexine', '405 Aberg Pass', 37);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (19, 'Manfred', '19 Village Circle', 7);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (20, 'Calhoun', '310 Talmadge Terrace', 8);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (21, 'Karin', '739 Fallview Crossing', 8);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (22, 'Lisha', '878 Anniversary Alley', 46);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (23, 'Minne', '574 Hayes Road', 40);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (24, 'Loise', '63382 Hagan Terrace', 7);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (25, 'Keane', '07 Village Green Plaza', 58);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (26, 'Elden', '196 4th Road', 45);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (27, 'Lorette', '26 Hoepker Crossing', 5);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (28, 'Marylou', '9768 Monterey Terrace', 52);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (29, 'Kaiser', '48783 Gina Terrace', 8);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (30, 'Hermia', '9 Dorton Point', 57);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (31, 'Eddy', '8060 Debra Circle', 8);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (32, 'Abram', '649 Darwin Road', 34);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (33, 'Val', '418 Park Meadow Pass', 2);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (34, 'Shirlee', '7241 Drewry Way', 31);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (35, 'Cherye', '082 Rutledge Point', 6);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (36, 'Danica', '574 South Parkway', 2);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (37, 'Luca', '14365 Northview Alley', 1);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (38, 'Giselbert', '62 Thackeray Trail', 10);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (39, 'Salomon', '3 Walton Alley', 14);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (40, 'Augustina', '3762 Clarendon Point', 15);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (41, 'Jonell', '443 Anderson Way', 6);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (42, 'Otes', '51123 Sunbrook Point', 28);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (43, 'Kienan', '403 Welch Street', 3);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (44, 'Hubey', '6 Barnett Trail', 49);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (45, 'Joan', '12 Talisman Street', 10);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (46, 'Faydra', '2971 Algoma Court', 47);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (47, 'Joyous', '034 Anderson Terrace', 55);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (48, 'Wang', '70 Little Fleur Center', 26);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (49, 'Toddie', '24706 Artisan Junction', 10);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (50, 'Ernie', '60612 Kings Avenue', 36);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (51, 'Steve', '29440 Elgar Plaza', 6);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (52, 'Derk', '9 Summer Ridge Hill', 40);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (53, 'Marvin', '9828 Monterey Way', 44);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (54, 'Bliss', '5594 Jenifer Circle', 8);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (55, 'Amabel', '4658 Killdeer Alley', 53);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (56, 'Launce', '060 Westridge Junction', 45);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (57, 'Juliette', '9003 Magdeline Circle', 45);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (58, 'Shane', '395 Dryden Trail', 38);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (59, 'Archy', '0 Eagle Crest Circle', 9);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (60, 'Olive', '06 Bashford Crossing', 23);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (61, 'Natal', '66388 Del Mar Circle', 34);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (62, 'Kellie', '92 Dayton Point', 11);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (63, 'Gusella', '1 Glendale Center', 52);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (64, 'Keely', '721 Steensland Street', 59);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (65, 'Ware', '27 Lindbergh Circle', 9);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (66, 'Jsandye', '7143 Anhalt Court', 29);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (67, 'Inez', '91 Calypso Crossing', 63);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (68, 'Bernadina', '84 Reinke Plaza', 57);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (69, 'Cristian', '10 Magdeline Pass', 9);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (70, 'Lanie', '8904 Lillian Point', 7);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (71, 'Lynne', '62546 Meadow Valley Junction', 50);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (72, 'Quentin', '77437 Armistice Plaza', 4);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (73, 'Jeanette', '859 Del Mar Crossing', 4);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (74, 'Anthe', '2878 Hansons Junction', 9);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (75, 'Wolfie', '5 Hintze Circle', 7);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (76, 'Elaine', '3 Comanche Avenue', 2);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (77, 'Alejoa', '08 Toban Crossing', 12);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (78, 'Renate', '6 Farmco Court', 10);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (79, 'Rustin', '96 Lillian Park', 14);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (80, 'Demetris', '8 Rusk Street', 44);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (81, 'Monica', '7206 Corben Pass', 26);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (82, 'Thalia', '45 Park Meadow Plaza', 2);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (83, 'Say', '27075 Brown Crossing', 7);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (84, 'Babette', '686 Oakridge Court', 8);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (85, 'Eleonora', '84 Roth Place', 4);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (86, 'Bailie', '295 Lyons Road', 48);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (87, 'Adi', '2 Gale Alley', 47);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (88, 'Tish', '7922 Eliot Plaza', 7);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (89, 'Lester', '22667 Jenifer Crossing', 37);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (90, 'Arthur', '5382 Lien Trail',5);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (91, 'Vince', '767 Esker Street', 24);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (92, 'Clerkclaude', '58 Rigney Court', 8);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (93, 'Alanah', '0 Mockingbird Place', 6);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (94, 'Cybill', '89 Duke Park', 1);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (95, 'Darbee', '3720 Hollow Ridge Crossing', 33);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (96, 'Hercules', '60 Schmedeman Alley', 6);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (97, 'Deloris', '7901 Randy Alley', 1);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (98, 'Clary', '6 Gateway Point', 21);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (99, 'Patrizia', '3 Melrose Center', 13);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (100, 'Maxie', '92158 Utah Park', 7);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Category (
	CategoryID int PRIMARY KEY identity(1,1),
	CategoryName nvarchar(1000),
) ON [PRIMARY]
GO
INSERT INTO dbo.Category(CategoryName)VALUES(N'Shoe')
INSERT INTO dbo.Category(CategoryName)VALUES(N'Sock')
INSERT INTO dbo.Category(CategoryName)VALUES(N'Pant')
INSERT INTO dbo.Category(CategoryName)VALUES(N'Shirt')
INSERT INTO dbo.Category(CategoryName)VALUES(N'Hat')
INSERT INTO dbo.Category(CategoryName)VALUES(N'Jacket')
INSERT INTO dbo.Category(CategoryName) VALUES ( N'Accessories');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[SubCategory](
	[SubCategoryID] [int] PRIMARY KEY  IDENTITY(1,1) ,
	[SubCategoryName] [nvarchar](255),
	[CategoryID] [int] ,
	constraint CategoryID FOREIGN KEY (CategoryID)  REFERENCES Category(CategoryID)
	)
GO
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Sport Shoe',1)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Formal Shoe',1)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Long Sock',2)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Short Sock',2)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Jean',3)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Cargo',3)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'T-Shirt',4)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Casual',4)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Fedora',5)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Leather Jacket',6)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID) VALUES (N'Backpacks',7);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID) VALUES (N'Hats',7);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID) VALUES (N'Rings and Chains',7);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID) VALUES (N'Watches',7);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE ProductStatus (
	StatusID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	StatusName nvarchar(1000)
) ON [PRIMARY]
GO

INSERT INTO ProductStatus VALUES ( N'Available');
INSERT INTO ProductStatus VALUES ( N'StopBusiness');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
--https://www.stylight.com/Brands/
CREATE TABLE Brand (
	BrandID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	BrandName nvarchar(1000)
) ON [PRIMARY]
GO

INSERT INTO dbo.Brand(BrandName)VALUES(N'Gucci')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Channel')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Nike')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Tokyo Life')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Levi s')
INSERT INTO dbo.Brand(BrandName)VALUES(N'MARVEL')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Hermès')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Curnon')
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Product (
	ProductID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	ProductName nvarchar(1000),
	Description nvarchar(2000),
	OriginalPrice int, 
	SellPrice int,	
	SalePercent int CHECK (SalePercent>=0 AND SalePercent<=100),
	SubCategoryID int,
	SellerID int,
	Amount int,
	StatusID int,
	BrandID int,
	height float,
	width float,
	weight float,
	constraint product_in_subCategory FOREIGN KEY(SubCategoryID) REFERENCES SubCategory(SubCategoryID),
	constraint SellerID_in_Users FOREIGN KEY(SellerID) REFERENCES Users(UserID),
	constraint StatusID_in_Status FOREIGN KEY(StatusID) REFERENCES ProductStatus(StatusID),
	constraint BrandID_in_Brand FOREIGN KEY(BrandID) REFERENCES Brand(BrandID)
) ON [PRIMARY]
GO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO dbo.Product
(
    ProductName,
    Description,
    OriginalPrice,
    SellPrice,
    SalePercent,
    SubCategoryID,
    SellerID,
    Amount,
    StatusID,
    BrandID,
    height,
    width,
    weight
)
VALUES
(   N'Giày chống thấm nước thông minh V8SHO001I', -- ProductName - nvarchar(1000)
    N'Giày chống thấm nước thông minh V8SHO001I
Màu sắc và họa tiết tạo nên sự khỏe khoắn
Phần đế có độ đàn hồi cao mang cảm giác êm chân, thoải mái
Kiểu dáng basic, thời trang dễ phối đồ
Độ bền cao và rất ít phai màu qua các lần giặt.', -- Description - nvarchar(2000)
    13,   -- OriginalPrice - int
    15,   -- SellPrice - int
    0,   -- SalePercent - int
    1,   -- SubCategoryID - int
    1,   -- SellerID - int
    100,   -- Amount - int
    1,   -- StatusID - int
    4,   -- BrandID - int
    35.0, -- height - float
    43.0, -- width - float
    1.0  -- weight - float
    )
INSERT INTO dbo.Product
(
    ProductName,
    Description,
    OriginalPrice,
    SellPrice,
    SalePercent,
    SubCategoryID,
    SellerID,
    Amount,
    StatusID,
    BrandID,
    height,
    width,
    weight
)
VALUES
(   N'Tất chân trẻ em cổ cao I3SOK606D', -- ProductName - nvarchar(1000)
    N'', -- Description - nvarchar(2000)
    1,   -- OriginalPrice - int
    2,   -- SellPrice - int
    0,   -- SalePercent - int
    3,   -- SubCategoryID - int
    1,   -- SellerID - int
    100,   -- Amount - int
    1,   -- StatusID - int
    4,   -- BrandID - int
    15.0, -- height - float
    25.0, -- width - float
    1.0  
);
INSERT INTO dbo.Product
(
    ProductName,
    Description,
    OriginalPrice,
    SellPrice,
    SalePercent,
    SubCategoryID,
    SellerID,
    Amount,
    StatusID,
    BrandID,
    height,
    width,
    weight
)
VALUES
(   N'Áo T-Shirt Nam cổ tròn I7TSH545I', -- ProductName - nvarchar(1000)
    N'Thiết kế đơn giản, tinh tế, mang tới sự mới mẻ về phong cách và linh hoạt trong việc phối đồ.
Màu sắc trẻ trung đem đến vẻ ngoài năng động, hiện đại, khỏe khoắn cho phái mạnh.
Sản phẩm được thiết kế từ chất liệu cotton mềm mại, họa tiết màu sắc nổi bật, phù hợp với nhiều phom dáng và hoàn cảnh khác nhau.', -- Description - nvarchar(2000)
    4,   -- OriginalPrice - int
    5,   -- SellPrice - int
    0,   -- SalePercent - int
    7,   -- SubCategoryID - int
    1,   -- SellerID - int
    100,   -- Amount - int
    1,   -- StatusID - int
    4,   -- BrandID - int
    50.0, -- height - float
    30.0, -- width - float
    0.2  -- weight - float
    )
INSERT INTO dbo.Product
(
    ProductName,
    Description,
    OriginalPrice,
    SellPrice,
    SalePercent,
    SubCategoryID,
    SellerID,
    Amount,
    StatusID,
    BrandID,
    height,
    width,
    weight
)
VALUES
(   N'Áo T-Shirt Nữ cổ tròn I9TSH553I', -- ProductName - nvarchar(1000)
    N'Áo T-shirt tại TokyoLife là sản phẩm được ưa chuộng trong mùa xuân hè. Với chị em phụ nữ, đây chắc chắn là món đồ không thể thiếu trong bộ sưu tập hè.
Sản phẩm được làm từ chất liệu cotton mỏng nhẹ, thấm hút mồ hôi tốt.
Thiết kế phom basic dáng suông dễ mặc, thoáng mát, thoải mái trong mọi hoạt động.
Kiểu dáng và màu sắc trẻ trung, hiện đại phù hợp với cô nàng năng động.', -- Description - nvarchar(2000)
    5,   -- OriginalPrice - int
    6,   -- SellPrice - int
    0,   -- SalePercent - int
    7,   -- SubCategoryID - int
    1,   -- SellerID - int
    100,   -- Amount - int
    1,   -- StatusID - int
    4,   -- BrandID - int
    50.0, -- height - float
    30.0, -- width - float
    0.2  -- weight - float
    )
INSERT INTO dbo.Product
(
    ProductName,
    Description,
    OriginalPrice,
    SellPrice,
    SalePercent,
    SubCategoryID,
    SellerID,
    Amount,
    StatusID,
    BrandID,
    height,
    width,
    weight
)
VALUES
(   N'Nike Waffle One', -- ProductName - nvarchar(1000)
    N'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.Its new TPU heel clip adds energy while a mixture of transparent mesh (let that sock game shine) and retro suedes give texture and depth.The updated Waffle outsole provides a level of support and traction you have to feel to believe.', -- Description - nvarchar(2000)
    130,   -- OriginalPrice - int
    150,   -- SellPrice - int
    5,   -- SalePercent - int
    1,   -- SubCategoryID - int
    1,   -- SellerID - int
    100,   -- Amount - int
    2,   -- StatusID - int
    3,   -- BrandID - int
    10.0, -- height - float
    30.0, -- width - float
    0.2  -- weight - float
    )
INSERT INTO Product VALUES (N'Balo Vans',N'Balo Vans Marvel Head Backpack được sản xuất với chất liệu 100% polyester bền đẹp, dẻo dai, chống thấm nước nhẹ.',300000,270000,10,10,2,100,1,2,45,32,0.5);
INSERT INTO Product VALUES (N'Mũ lưỡi trai thêu chữ',N'Kiểu dáng: phù hợp cả nam và nữ. Đa phong cách, gọn nhẹ, năng động',100000,90000,10,11,2,100,1,1,45,32,0.2);
INSERT INTO Product VALUES (N'Đồng hồ Curnon',N'Đồng hồ nữ Curnon Melissani Haze dây kim loại chính hãng, đeo tay thời trang nữ tính',1300000,127000,10,13,2,100,1,8,20,3,0.5);
INSERT INTO Product VALUES (N'Nhẫn RAC001',N'Kiểu dáng sang trọng, tinh tế. Được chế tác từ hợp kim bền bỉ ',170000,163000,10,12,2,100,1,1,20,3,0.5);
INSERT INTO Product VALUES (N'Quần Button Cargo Pant kaki ',N'Form được Fit size theo form và tiêu chuẩn tương đối của người Việt Nam.',170000,163000,10,6,2,100,1,1,80,45,0.5);


-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[ProductImg](
	[ProductID] [int]  ,
	[ProductImgURL] [varchar](255) ,
	constraint ProductImg_ID FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
	)
	go

INSERT dbo.ProductImg(ProductID,ProductImgURL)VALUES(1,'v8sho001l.jpg')
INSERT dbo.ProductImg(ProductID,ProductImgURL)VALUES(2,'i3sok606d.jpg')
INSERT dbo.ProductImg(ProductID,ProductImgURL)VALUES(3,'i7tsh545i.jpg')
INSERT dbo.ProductImg(ProductID,ProductImgURL)VALUES(4,'i9tsh553i.jpg')
INSERT dbo.ProductImg(ProductID,ProductImgURL)VALUES(5,'waffleone-shoe.jfif')
INSERT dbo.ProductImg(ProductID,ProductImgURL)VALUES(6,'balo_vans.jpg')
INSERT dbo.ProductImg(ProductID,ProductImgURL)VALUES(7,'HCA001.jpg')
INSERT dbo.ProductImg(ProductID,ProductImgURL)VALUES(8,'713OolAssuL._AC_UL1500_.jpg')
INSERT dbo.ProductImg(ProductID,ProductImgURL)VALUES(9,'CGD001_1.jpg')
INSERT dbo.ProductImg(ProductID,ProductImgURL)VALUES(9,'CGD001_2.jpg')



-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Cart (
	UserID int,
	ProductID int,
	Amount int
	constraint userID_in_cart FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint productID_in_cart FOREIGN KEY(ProductID) REFERENCES Product(ProductID),
) ON [PRIMARY]
GO

INSERT INTO Cart VALUES (4, 1, 1);
INSERT INTO Cart VALUES (4, 3, 1);
INSERT INTO Cart VALUES (5, 1, 1);
INSERT INTO Cart VALUES (5, 2, 1);
INSERT INTO Cart VALUES (6, 2, 2);


-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [dbo].[Order_Status](
	[ID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Name] [nvarchar](50) NOT NULL,
 ) ON [PRIMARY]
GO
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Waiting for Confirmation')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Packaging')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Delivering')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Canceled')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Completed')

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[UserID] [int] NULL,
	[TotalPrice] [float] NULL,
	[Note] [nvarchar](2000) NULL,
	[Status] [int] NULL,
	[Date] [DATETIME] NULL ,
	constraint userID_in_order_status FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint statusID_in_order_status FOREIGN KEY(Status) REFERENCES Order_Status(ID)
) ON [PRIMARY]
GO

INSERT INTO Orders VALUES (4, 270000, null, 3, '2021/06/06 04:17');
INSERT INTO Orders VALUES (5, 90000, null, 3, '2021/06/16 12:36');
INSERT INTO Orders VALUES (5, 1270000, null, 3, '2021/06/12 10:18');
INSERT INTO Orders VALUES (6, 1270000, null, 1, '2021/09/11 01:30');


-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [dbo].[Order_Detail](
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	[Order_ID] [int] NOT NULL ,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](1000) NOT NULL,
	[ProductPrice] [int] NOT NULL,	
	[Quantity] [int] NOT NULL,
	constraint orderID_in_order_detail FOREIGN KEY(Order_ID) REFERENCES Orders(ID),
	constraint productID_in_order_detail FOREIGN KEY(ProductID) REFERENCES Product(ProductID)	
) ON [PRIMARY]
GO

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE ShipInfo (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	Order_ID int,
	CustomerName nvarchar(1000), --Real name of the Customer
	ShippingAddress nvarchar(1000), 
	ShipCityID int,
	PhoneNum varchar(20),
	Note nvarchar(2000),
	constraint order_id_in_ship_info FOREIGN KEY(Order_ID) REFERENCES Orders(ID),
	constraint ship_city_in_ship_info FOREIGN KEY(ShipCityID) REFERENCES Ship(id)
) ON [PRIMARY]
GO


-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Notifications(
	
	ID int PRIMARY KEY identity (1,1),
	UserID int,
	OrderID int,
	Content char(1000),
	status char (30),
	time char (50),
	constraint UserID_in_Users FOREIGN KEY(UserID) REFERENCES Users(userId),
	constraint OrderID_in_Orders FOREIGN KEY(OrderID) REFERENCES Orders(ID)

);
GO

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Feedback (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	UserID int,
	ProductID int,
	OrderID int,
	Star int, --min 1- max 5
	FeedbackDetail nvarchar(2000),
	constraint userID_in_user_3 FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint orderID_in_orders_6 FOREIGN KEY(OrderID) REFERENCES Orders(ID),
	constraint productID_in_feedback FOREIGN KEY(ProductID) REFERENCES Product(ProductID),
	constraint valid_star CHECK (Star < 6 AND Star > 0)
) ON [PRIMARY]
GO
INSERT INTO Feedback VALUES (4, 1, 1, 5, N'Very good');
INSERT INTO Feedback VALUES (5, 2, 2, 4, N'Good');
INSERT INTO Feedback VALUES (5, 1, 3,5, N'Sản phẩm rất tốt');
INSERT INTO Feedback VALUES (6, 1, 4,1, N'Gửi sai sản phẩm');







-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Feedback_Replies (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	FeedbackID int,
	UserID int,
	RepliesText nvarchar(2000),
	constraint userID_in_user_4 FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint feedbackID_in_feedback FOREIGN KEY(FeedbackID) REFERENCES Feedback(ID),
) ON [PRIMARY]
GO
INSERT INTO Feedback_Replies VALUES (1, 5, N'Xin Cám Ơn!');
INSERT INTO Feedback_Replies VALUES (2, 4, N'Xin Cám Ơn!');
INSERT INTO Feedback_Replies VALUES (3, 6, N'Xin Cám Ơn!');


-------------------------------------------------------------------------------------------------------------------------------------------------------------------

Create TABLE Blog(
ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
Author nvarchar(100),
Title nvarchar(2500),
Content nvarchar(2500),
imageLink nvarchar(1000),
)ON [PRIMARY]
GO
INSERT INTO dbo.Blog(Author,Title,Content,imageLink)VALUES(N'hienht',   N'Review',N'Good',N'v8sho001l.jpg')
INSERT INTO dbo.Blog(Author,Title,Content,imageLink)VALUES(N'ngoc12',   N'Review',N'Good',N'i3sok606d.jpg')
INSERT INTO dbo.Blog(Author,Title,Content,imageLink)VALUES(N'minh123',  N'Review',N'Good',N'i7tsh545i.jpg')
INSERT INTO dbo.Blog(Author,Title,Content,imageLink)VALUES(N'author_1',   N'Review',N'Good',N'i9tsh553i.jpg')
INSERT INTO dbo.Blog(Author,Title,Content,imageLink)VALUES(N'author_2',  N'Review',N'Good',N'waffleone-shoe.jfif')
-------------------------------------------------------------------------------------------------------------------------------------------------------------------







