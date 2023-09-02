CREATE TABLE Customers (
Customer_ID int NOT NULL UNIQUE AUTO_INCREMENT, 
Name varchar(20) NOT NULL,
Surname varchar(20) NOT NULL,
Birthday date NOT NULL,
Adress varchar(100) NOT NULL,
Mail varchar(50) NOT NULL,
Phone bigint NOT NULL,
Encrypt varchar(50) NOT NULL,
PRIMARY KEY (Customer_ID)                        
);
INSERT INTO Customers (Name,Surname,Birthday,Adress,
Mail,Phone,Encrypt)
VALUES('TAYLAN','ÖZKAN','2000-08-31',
'Fatih,İstanbul','taylan.ozkan@gmail.com','05350135673','*Hx7X2f9'),
('CEREN','KARACAN','2000-07-20',
'Şişli,İstanbul','ceren.karacan@hotmail.com','05448812266','9Vy5i7@U'),
('ALP','SEÇKİN','2002-05-12',
'Alsancak,İzmir','alpseckin12@hotmail.com','05416001112','t50Q2#Rb'),
('SİNAN','YILMAZ','1990-04-11',
'Bakırköy,İstanbul','sinanyilmaz_00@outlook.com','05341027092','nJ302$W0'),
('ASLI','KORKMAZ','1995-08-28',
'Fatih,İstanbul','aslikorkmazz@gmail.com','05448812266','10i@h80L'),
('AHMET FURKAN','TEKİN','1999-09-19',
'Buca,İzmir','ahmetfrkn_tkn@hotmail.com','05416473421','yBu&6o11'),
('KEZBAN','TANIR','1974-10-15',
'Yenimahalle,Ankara','kezbantnr@gmail.com','05384315834','jtX#8982'),
('GÜNEY','GÜNGÖRDÜ','1987-03-10',
'Zeytinburnu,İstanbul','ggordu@outlook.com','05370791453','yA6!4z59'),
('ABDURRAHMAN','PAMUK','1970-05-27',
'Ceyhan,Adana','pamuk.tarim@hotmail.com','05511234567','6e^@Q74z'),
('MEHMET','ÖZCAN','1991-01-01',
'Küçükçekmece,İstanbul','afacan123@hotmail.com','05337462628','TvlX5@57');

db.createCollection("Customers")
db.Customers.insertMany([
    {
        Customer_ID: 1,
        Name: "TAYLAN",
        Surname: "ÖZKAN",
        Birthday: new Date("2000-08-31"),
        Adress: "Fatih,İstanbul",
        Mail: "taylan.ozkan@gmail.com",
        Phone: "05350135673",
        Encrypt: "*Hx7X2f9"
    },
    {
        Customer_ID: 2,
        Name: "CEREN",
        Surname: "KARACAN",
        Birthday: new Date("2000-07-20"),
        Adress: "Şişli,İstanbul",
        Mail: "ceren.karacan@hotmail.com",
        Phone: "05448812266",
        Encrypt: "9Vy5i7@U"
    },
    {
        Customer_ID: 3,
        Name: "ALP",
        Surname: "SEÇKİN",
        Birthday: new Date("2002-05-12"),
        Adress: "Alsancak,İzmir",
        Mail: "alpseckin12@hotmail.com",
        Phone: "0516001112",
        Encrypt: "t50Q2#Rb"
    },
    {
        Customer_ID: 4,
        Name: "SİNAN",
        Surname: "YILMAZ",
        Birthday: new Date("1990-04-11"),
        Adress: "Bakırköy,İstanbul",
        Mail: "sinanyilmaz_00@outlook.com",
        Phone: "05341027092",
        Encrypt: "nJ302$W0"
    },
    {
        Customer_ID: 5,
        Name: "ASLI",
        Surname: "KORKMAZ",
        Birthday: new Date("1995-08-28"),
        Adress: "Fatih,İstanbul",
        Mail: "aslikorkmazz@gmail.com",
        Phone: "05448812266",
        Encrypt: "10i@h80L"
    },
    {
        Customer_ID: 6,
        Name: "AHMET FURKAN",
        Surname: "TEKİN",
        Birthday: new Date("1999-09-19"),
        Adress: "Buca,İzmir",
        Mail: "ahmetfrkn_tkn@hotmail.com",
        Phone: "0516473421",
        Encrypt: "yBu&6o11"
    },
    {
        Customer_ID: 7,
        Name: "KEZBAN",
        Surname: "TANIR",
        Birthday: new Date("1974-10-15"),
        Adress: "Yenimahalle,Ankara",
        Mail: "kezbantnr@gmail.com",
        Phone: "05384315834",
        Encrypt: "jtX#8982"
    },
    {
        Customer_ID: 8,
        Name: "GÜNEY",
        Surname: "GÜNGÖRDÜ",
        Birthday: new Date("1987-03-10"),
        Adress: "Zeytinburnu,İstanbul",
        Mail: "ggordu@outlook.com",
        Phone: "05370791453",
        Encrypt: "yA6!4z59"
    },
    {
        Customer_ID: 9,
        Name: "ABDURRAHMAN",
        Surname: "PAMUK",
        Birthday: new Date("1970-05-27"),
        Adress: "Ceyhan,Adana",
        Mail: "pamuk.tarim@hotmail.com",
        Phone: "05511234567",
        Encrypt: "6e^@Q74z"
    },
    {
        Customer_ID: 10,
        Name: "MEHMET",
        Surname: "ÖZCAN",
        Birthday: new Date("1991-01-01"),
        Adress: "Küçükçekmece,İstanbul",
        Mail: "afacan123@hotmail.com",
        Phone: "05337462628",
        Encrypt: "TvlX5@57"
    }
])
     

CREATE TABLE Delivery (DeliveryID int NOT NULL,
Restaurant_ID int NOT NULL,
Customer_ID int,
Courier_Name varchar(50),
PRIMARY KEY (DeliveryID),
FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
FOREIGN KEY (Restaurant_ID) REFERENCES Restaurants(Restaurant_ID);
INSERT INTO Delivery (DeliveryID,Customer_ID,Restaurant_ID,Courier_Name)
VALUES('1','1','Mehmet Şen'),
('10','4','1','Mehmet Şen'),
('15','8','1','Mehmet Şen'),
('18','2','2','Ahmet Yıldız'),
('26','5','2','Ahmet Yıldız'),
('34','10','2','Ahmet Yıldız'),
('41','7','3','Furkan Coşkun'),
('50','3','4','Kemal Taş'),
('58','6','4','Kemal Taş'),
('61','9','5','Özgür Kesik');

db.createCollection("Delivery")
db.Delivery.insertMany([
    {
        DeliveryID: 1,
        Restaurant_ID: 1,
        Customer_ID: 1,
        Courier_Name: "Mehmet Şen"
    },
    {
        DeliveryID: 10,
        Restaurant_ID: 1,
        Customer_ID: 4,
        Courier_Name: "Mehmet Şen"
    },
    {
        DeliveryID: 15,
        Restaurant_ID: 1,
        Customer_ID: 8,
        Courier_Name: "Mehmet Şen"
    },
    {
        DeliveryID: 18,
        Restaurant_ID: 2,
        Customer_ID: 2,
        Courier_Name: "Ahmet Yıldız"
    },
    {
        DeliveryID: 26,
        Restaurant_ID: 2,
        Customer_ID: 5,
        Courier_Name: "Ahmet Yıldız"
    },
    {
        DeliveryID: 34,
        Restaurant_ID: 2,
        Customer_ID: 10,
        Courier_Name: "Ahmet Yıldız"
    },
    {
        DeliveryID: 41,
        Restaurant_ID: 3,
        Customer_ID: 7,
        Courier_Name: "Furkan Coşkun"
    },
    {
        DeliveryID: 50,
        Restaurant_ID: 4,
        Customer_ID: 3,
        Courier_Name: "Kemal Taş"
    },
    {
        DeliveryID: 58,
        Restaurant_ID: 4,
        Customer_ID: 6,
        Courier_Name: "Kemal Taş"
    },
    {
        DeliveryID: 61,
        Restaurant_ID: 5,
        Customer_ID: 9,
        Courier_Name: "Özgür Kesik"
    }
])

CREATE TABLE Menu (
  Menu_ID int NOT NULL, 
  Restaurant_ID int,
  Menu_Name varchar(255),
  Food_Description text(255),
  Price decimal(10,2),
FOREIGN KEY (Restaurant_ID) references Restaurants(Restaurant_ID)
);

INSERT INTO Menu (Menu_ID,Restaurant_ID,Menu_Name,Food_Description,Price)
VALUES('1','1','Et Menü','Etli Burger + Patates Kızartması (Küçük Boy) + İçecek (330ml)','33.99'),
('1','1','Tavuk Menü','Tavuklu Burger + Patates Kızartması (Küçük Boy) + İçecek (330ml)','43.99'),
('2','2','Küçük Boy Pizza','kaşar peyniri, mozzarella peyniri, kırmızı biber, domates, mantar, siyah zeytin, sosis, sucuk','69.99'),
('2','2','Orta Boy Pizza','kaşar peyniri, mozzarella peyniri, kırmızı biber, domates, mantar, siyah zeytin, sosis, sucuk','79.99'),
('2','2','Büyük Boy Pizza','kaşar peyniri, mozzarella peyniri, kırmızı biber, domates, mantar, siyah zeytin, sosis, sucuk','89.99'),
('3','3','İskender','Pide + Et + Yoğurt + Tereyağ + Domates Sosu','72.99'),
('3','3','Lahmacun','Adet Lahmacun + Yeşillik','15'),
('4','4','Öğrenci Dürüm','Yeşillik + Dürüm+ Sos + Çiğ Köfte(100gr)','10'),
('4','4','Tam Dürüm','Yeşillik + Dürüm + Sos + Çiğ Köfte(150gr)','20'),
('5','5','1 KG Baklava','Cevizli Baklava','119.99'),
('5','5','1 KG Kadayıf','Fıstıklı Kadayıf','129.99');

db.createCollection("Menu")
db.Menu.insertMany([
    {
        Menu_ID: 1,
        Restaurant_ID: 1,
        Menu_Name: "Et Menü",
        Food_Description: "Etli Burger + Patates Kızartması (Küçük Boy) + İçecek (330ml)",
        Price: 33.99
    },
    {
        Menu_ID: 1,
        Restaurant_ID: 1,
        Menu_Name: "Tavuk Menü",
        Food_Description: "Tavuklu Burger + Patates Kızartması (Küçük Boy) + İçecek (330ml)",
        Price: 43.99
    },
    {
        Menu_ID: 2,
        Restaurant_ID: 2,
        Menu_Name: "Küçük Boy Pizza",
        Food_Description: "kaşar peyniri, mozzarella peyniri, kırmızı biber, domates, mantar, siyah zeytin, sosis, sucuk",
        Price: 69.99
    },
    {
        Menu_ID: 2,
        Restaurant_ID: 2,
        Menu_Name: "Orta Boy Pizza",
        Food_Description: "kaşar peyniri, mozzarella peyniri, kırmızı biber, domates, mantar, siyah zeytin, sosis, sucuk",
        Price: 79.99
    },
    {
        Menu_ID: 2,
        Restaurant_ID: 2,
        Menu_Name: "Büyük Boy Pizza",
        Food_Description: "kaşar peyniri, mozzarella peyniri, kırmızı biber, domates, mantar, siyah zeytin, sosis, sucuk",
        Price: 89.99
    },
    {
        Menu_ID: 3,
        Restaurant_ID: 3,
        Menu_Name: "İskender",
        Food_Description: "Pide + Et + Yoğurt + Tereyağ + Domates Sosu",
        Price: 72.99
    },
    {
        Menu_ID: 3,
        Restaurant_ID: 3,
        Menu_Name: "Lahmacun",
        Food_Description: "Adet Lahmacun + Yeşillik",
        Price: 15
    },
    {
        Menu_ID: 4,
        Restaurant_ID: 4,
        Menu_Name: "Öğrenci Dürüm",
        Food_Description: "Yeşillik + Dürüm+ Sos + Çiğ Köfte(100gr)",
        Price: 10
    },
    {
        Menu_ID: 4,
        Restaurant_ID: 4,
        Menu_Name: "Tam Dürüm",
        Food_Description: "Yeşillik + Dürüm + Sos + Çiğ Köfte(150gr)",
        Price: 20
    },
    {
        Menu_ID: 5,
        Restaurant_ID: 5,
        Menu_Name: "1 KG Baklava",
        Food_Description: "Cevizli Baklava",
        Price: 119.99
    },
    {
        Menu_ID: 5,
        Restaurant_ID: 5,
        Menu_Name: "1 KG Kadayıf",
        Food_Description: "Fıstıklı Kadayıf",
        Price: 129.99
    }
])

CREATE TABLE Order_Coupons(

Coupon_ID int NOT NULL,

Coupon_Name varchar(100),

Coupon_Code varchar(50) NOT NULL,

Restaurant_ID int NOT NULL,

Discount tinyint NOT NULL,

FOREIGN KEY(Restaurant_ID) REFERENCES Restaurants(Restaurant_ID)

);

INSERT INTO Order_Coupons(Coupon_ID,Coupon_Name,Coupon_Code,Restaurant_ID,Discount)

VALUES('1','İlk Sipariş İndirimi','ILKINDIRIM10','1','10'),

('1','İlk Sipariş İndirimi','ILKINDIRIM10','2','10'),

('1','İlk Sipariş İndirimi','ILKINDIRIM10','3','10'),

('1','İlk Sipariş İndirimi','ILKINDIRIM10','4','10'),

('2','200TL Üstü İndirim','200PLUS','1','10'),

('3','100TL Üstü İndirim','100PLUS','2','5'),

('3','100TL Üstü İndirim','100PLUS','3','5'),

('3','100TL Üstü İndirim','100PLUS','4','5'),

('3','100TL Üstü İndirim','100PLUS','5','5');

db.createCollection("Order_Coupons")
db.Order_Coupons.insertMany([
    {
        Coupon_ID: 1,
        Coupon_Name: "İlk Sipariş İndirimi",
        Coupon_Code: "ILKINDIRIM10",
        Restaurant_ID: 1,
        Discount: 10
    },
    {
        Coupon_ID: 1,
        Coupon_Name: "İlk Sipariş İndirimi",
        Coupon_Code: "ILKINDIRIM10",
        Restaurant_ID: 2,
        Discount: 10
    },
    {
        Coupon_ID: 1,
        Coupon_Name: "İlk Sipariş İndirimi",
        Coupon_Code: "ILKINDIRIM10",
        Restaurant_ID: 3,
        Discount: 10
    },
    {
        Coupon_ID: 1,
        Coupon_Name: "İlk Sipariş İndirimi",
        Coupon_Code: "ILKINDIRIM10",
        Restaurant_ID: 4,
        Discount: 10
    },
    {
        Coupon_ID: 2,
        Coupon_Name: "200TL Üstü İndirim",
        Coupon_Code: "200PLUS",
        Restaurant_ID: 1,
        Discount: 10
    },
    {
        Coupon_ID: 3,
        Coupon_Name: "100TL Üstü İndirim",
        Coupon_Code: "100PLUS",
        Restaurant_ID: 2,
        Discount: 5
    },
    {
        Coupon_ID: 3,
        Coupon_Name: "100TL Üstü İndirim",
        Coupon_Code: "100PLUS",
        Restaurant_ID: 3,
        Discount: 5
    },
    {
        Coupon_ID: 3,
        Coupon_Name: "100TL Üstü İndirim",
        Coupon_Code: "100PLUS",
        Restaurant_ID: 4,
        Discount: 5
    },
    {
        Coupon_ID: 3,
        Coupon_Name: "100TL Üstü İndirim",
        Coupon_Code: "100PLUS",
        Restaurant_ID: 5,
        Discount: 5
    }
])

CREATE TABLE Orders(
Order_ID int NOT NULL UNIQUE AUTO_INCREMENT,
Customer_ID int NOT NULL,
Coupon_Name varchar(50) NOT NULL,
RName varchar(30) NOT NULL,
PRIMARY KEY (Order_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customers (Customer_ID)
);
INSERT INTO Orders(Order_ID,Customer_ID,Coupon_Name,RName)
VALUES('1','1',',İlk Sipariş İndirimi','Burger King'),
('2','2','İlk Sipariş İndirimi','Dominos Pizza'),
('3','3','100TL Üstü İndirim','OSES ÇiğKöftes'),
('4','4','100TL Üstü İndirim','Burger King'),
('5','5','İlk Sipariş İndirimi','Dominos Pizza'),
('6','6','100TL Üstü İndirim','OSES ÇiğKöfte'),
('7','7','100TL Üstü İndirim','Bursa İskender'),
('8','8','İlk Sipariş İndirimi','Burger King'),
('9','9','100TL Üstü İndirim','Adana Tatlıcılık'),
('10','10','İlk Sipariş İndirimi','Dominos Pizza');

db.createCollection("Orders")
db.Orders.insertMany([
    {
        Order_ID: 1,
        Customer_ID: 1,
        Coupon_Name: "İlk Sipariş İndirimi",
        RName: "Burger King"
    },
    {
        Order_ID: 2,
        Customer_ID: 2,
        Coupon_Name: "İlk Sipariş İndirimi",
        RName: "Dominos Pizza"
    },
    {
        Order_ID: 3,
        Customer_ID: 3,
        Coupon_Name: "100TL Üstü İndirim",
        RName: "OSES ÇiğKöftes"
    },
    {
        Order_ID: 4,
        Customer_ID: 4,
        Coupon_Name: "100TL Üstü İndirim",
        RName: "Burger King"
    },
    {
        Order_ID: 5,
        Customer_ID: 5,
        Coupon_Name: "İlk Sipariş İndirimi",
        RName: "Dominos Pizza"
    },
    {
        Order_ID: 6,
        Customer_ID: 6,
        Coupon_Name: "100TL Üstü İndirim",
        RName: "OSES ÇiğKöfte"
    },
    {
        Order_ID: 7,
        Customer_ID: 7,
        Coupon_Name: "100TL Üstü İndirim",
        RName: "Bursa İskender"
    },
    {
        Order_ID: 8,
        Customer_ID: 8,
        Coupon_Name: "İlk Sipariş İndirimi",
        RName: "Burger King"
    },
    {
        Order_ID: 9,
        Customer_ID: 9,
        Coupon_Name: "100TL Üstü İndirim",
        RName: "Adana Tatlıcılık"
    },
    {
        Order_ID: 10,
        Customer_ID: 10,
        Coupon_Name: "İlk Sipariş İndirimi",
        RName: "Dominos Pizza"
    }
])

CREATE TABLE Order_Status(
StatusID int NOT NULL UNIQUE AUTO_INCREMENT,
StatusName text NOT NULL,
Order_ID int NOT NULL,
RName varchar(30) NOT NULL,
PRIMARY KEY (StatusID),
FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);
INSERT INTO Order_Status(StatusName,Order_ID,RName)
VALUES('Ordered','1','Burger King'),
('Ordered','2','Dominos Pizza'),
('Preparing','3','OSES ÇiğKöftes'),
('Ordered','4','Burger King'),
('Preparing','5','Dominos'),
('Delivering','6','OSES ÇiğKöfte'),
('Preparing','7','Bursa İskender'),
('Delivering','8','Burger King'),
('Ordered','9','Adana Tatlıcılık'),
('Ordered','10','Dominos Pizza');

db.createCollection("Order_Status")
db.Order_Status.insertMany([
  {
    StatusName: "Ordered",
    Order_ID: 1,
    RName: "Burger King"
  },
  {
    StatusName: "Ordered",
    Order_ID: 2,
    RName: "Dominos Pizza"
  },
  {
    StatusName: "Preparing",
    Order_ID: 3,
    RName: "OSES ÇiğKöftes"
  },
  {
    StatusName: "Ordered",
    Order_ID: 4,
    RName: "Burger King"
  },
  {
    StatusName: "Preparing",
    Order_ID: 5,
    RName: "Dominos"
  },
  {
    StatusName: "Delivering",
    Order_ID: 6,
    RName: "OSES ÇiğKöfte"
  },
  {
    StatusName: "Preparing",
    Order_ID: 7,
    RName: "Bursa İskender"
  },
  {
    StatusName: "Delivering",
    Order_ID: 8,
    RName: "Burger King"
  },
  {
    StatusName: "Ordered",
    Order_ID: 9,
    RName: "Adana Tatlıcılık"
  },
  {
    StatusName: "Ordered",
    Order_ID: 10,
    RName: "Dominos Pizza"
  }
])

CREATE TABLE Restaurants (
Restaurant_ID int NOT NULL AUTO_INCREMENT,
RName varchar(30) NOT NULL,
Restaurant_Description varchar(255),
Menu_ID int NOT NULL,
Review text(500),
PRIMARY KEY (Restaurant_ID),
FOREIGN KEY (Menu_ID) REFERENCES Menu (Menu_ID)
);
INSERT INTO Restaurants(RName,Restaurant_Description,Menu_ID,Review)
VALUES('Burger King','Burger','1','En Lezzetli Burger'),
('Dominos Pizza','Pizza','2','30 dakikada sıcacık pizza keyfi'),
('Bursa İskender','Döner,Kebap & Türk Mutfağı,Pide & Lahmacun','3','Coss İskender'),
('OSES Çiğköfte','Çiğ Köfte','4','Gerçekten çok lezzetli alanında en iyisi'),
('Adana Tatlıcılık','Tatlı','5','');

db.createCollection("Restaurants")

db.Restaurants.insertMany([
  {
    RName: "Burger King",
    Restaurant_Description: "Burger",
    Menu_ID: 1,
    Review: "En Lezzetli Burger"
  },
  {
    RName: "Dominos Pizza",
    Restaurant_Description: "Pizza",
    Menu_ID: 2,
    Review: "30 dakikada sıcacık pizza keyfi"
  },
  {
    RName: "Bursa İskender",
    Restaurant_Description: "Döner,Kebap & Türk Mutfağı,Pide & Lahmacun",
    Menu_ID: 3,
    Review: "Coss İskender"
  },
  {
    RName: "OSES Çiğköfte",
    Restaurant_Description: "Çiğ Köfte",
    Menu_ID: 4,
    Review: "Gerçekten çok lezzetli alanında en iyisi"
  },
  {
    RName: "Adana Tatlıcılık",
    Restaurant_Description: "Tatlı",
    Menu_ID: 5,
    Review: ""
  }
])

CREATE TABLE Restaurant_Coupons(
  RCoupon_ID int NOT NULL,
  RCoupon_Name varchar(20) NOT NULL,
  RCoupon_Description varchar(255),
  RCoupon_Code varchar(255) NOT NULL,
  Restaurant_ID int,
  Discount tinyint,
  FOREIGN KEY (Restaurant_ID) REFERENCES Restaurants(Restaurant_ID)
);
INSERT INTO Restaurant_Coupons (RCoupon_ID,RCoupon_Name,RCoupon_Description,
RCoupon_Code,Restaurant_ID,Discount)
VALUES('1','İlk sipariş İndirimi','İlk siparişe özel %10 indirim uygulama','ILKINDIRIM10','1','10'),
('1','İlk Sipariş İndirimi','İlk siparişe özel %10 indirim uygulama','ILKINDIRIM10','2','10'),
('1','İlk Sipariş İndirimi','İlk siparişe özel %7.5 indirim uygulama','ILKINDIRIM7.5','3','7.5'),
('1','İlk Sipariş İndirimi','İlk siparişe özel %5 indirim uygulama','ILKINDIRIM5','4','5'),
('2','150TL Üstü İndirim','150Tllik siparişe %5 indirim','150PLUS','5','5');

db.restaurant_coupons.insertMany([
{ RCoupon_ID: 1, RCoupon_Name: "İlk sipariş İndirimi", RCoupon_Description: "İlk siparişe özel %10 indirim uygulama", RCoupon_Code: "ILKINDIRIM10", Restaurant_ID: 1, Discount: 10 },
{ RCoupon_ID: 1, RCoupon_Name: "İlk Sipariş İndirimi", RCoupon_Description: "İlk siparişe özel %10 indirim uygulama", RCoupon_Code: "ILKINDIRIM10", Restaurant_ID: 2, Discount: 10 },
{ RCoupon_ID: 1, RCoupon_Name: "İlk Sipariş İndirimi", RCoupon_Description: "İlk siparişe özel %7.5 indirim uygulama", RCoupon_Code: "ILKINDIRIM7.5", Restaurant_ID: 3, Discount: 7.5 },
{ RCoupon_ID: 1, RCoupon_Name: "İlk Sipariş İndirimi", RCoupon_Description: "İlk siparişe özel %5 indirim uygulama", RCoupon_Code: "ILKINDIRIM5", Restaurant_ID: 4, Discount: 5 },
{ RCoupon_ID: 2, RCoupon_Name: "150TL Üstü İndirim", RCoupon_Description: "150Tllik siparişe %5 indirim", RCoupon_Code: "150PLUS", Restaurant_ID: 5, Discount: 5 }
])

CREATE TABLE Wallets (
Customer_ID int NOT NULL UNIQUE,
Name varchar(50) NOT NULL,
Surname varchar(50) NOT NULL,
Card_Number bigint NOT NULL,
CVC int NOT NULL,
Expiration DATE NOT NULL,
FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
  );
INSERT INTO Wallets(Customer_ID,Name,Surname,Card_Number,CVC,Expiration)
VALUES('1','TAYLAN','ÖZKAN','4934002067991322','143','2026-06-01'),
('2','CEREN','KARACAN','4344372713800043','389','2026-12-01'),
('3','ALP','SEÇKİN','4969644596833877','125','2026-01-01'),
('4','SİNAN','YILMAZ','4124119474058600','147','2026-09-01'),
('5','ASLI','KORKMAZ','4331461530727417','118','2026-01-01'),
('6','AHMET FURKAN','TEKİN','4453839148365120','729','2026-06-01'),
('7','KEZBAN','TANIR','4674398167748701','826','2026-02-01'),
('8','GÜNEY','GÜNGÖRDÜ','4772172344130765','911','2026-02-01'),
('9','ABDURRAHMAN','PAMUK','4753401911111210','360','2026-01-01'),
('10','MEHMET','ÖZCAN','4374082465449534','475','2026-03-01');

db.createCollection("Wallets")

db.Wallets.insertMany([
    {Customer_ID: 1, Name: 'TAYLAN', Surname: 'ÖZKAN', Card_Number: 4934002067991322, CVC: 143, Expiration: new Date("2026-06-01")},
    {Customer_ID: 2, Name: 'CEREN', Surname: 'KARACAN', Card_Number: 4344372713800043, CVC: 389, Expiration: new Date("2026-12-01")},
    {Customer_ID: 3, Name: 'ALP', Surname: 'SEÇKİN', Card_Number: 4969644596833877, CVC: 125, Expiration: new Date("2026-01-01")},
    {Customer_ID: 4, Name: 'SİNAN', Surname: 'YILMAZ', Card_Number: 4124119474058600, CVC: 147, Expiration: new Date("2026-09-01")},
    {Customer_ID: 5, Name: 'ASLI', Surname: 'KORKMAZ', Card_Number: 4331461530727417, CVC: 118, Expiration: new Date("2026-01-01")},
    {Customer_ID: 6, Name: 'AHMET FURKAN', Surname: 'TEKİN', Card_Number: 4453839148365120, CVC: 729, Expiration: new Date("2026-06-01")},
    {Customer_ID: 7, Name: 'KEZBAN', Surname: 'TANIR', Card_Number: 4674398167748701, CVC: 826, Expiration: new Date("2026-02-01")},
    {Customer_ID: 8, Name: 'GÜNEY', Surname: 'GÜNGÖRDÜ', Card_Number: 4772172344130765, CVC: 911, Expiration: new Date("2026-02-01")},
    {Customer_ID: 9, Name: 'ABDURRAHMAN', Surname: 'PAMUK', Card_Number: 4753401911111210, CVC: 360, Expiration: new Date("2026-01-01")},
    {Customer_ID: 10, Name: 'MEHMET', Surname: 'ÖZCAN', Card_Number: 4374082465449534, CVC: 475, Expiration: new Date("2026-03-01")}) 

CREATE TABLE Reviews (
Customer_ID int NOT NULL,  
RName varchar(50) NOT NULL,
Food_Review text(500),
FOREIGN KEY (Customer_ID) REFERENCES Customers (Customer_ID)
);
INSERT INTO Reviews(Customer_ID,RName,Food_Review)
VALUES('1','Burger King','Çok güzel bir burger idi, kurye çok hızlıydı.'),
('2','Domios Pizza','Pizza güzeldi'),
('3','OSES Çiğköfte',''),
('4','Burger King','Yemeği beğenmedim soğuk geldi, kurye gecikti'),
('5','Dominos Pizza','-'),
('6','OSES Çiğköfte','-'),
('7','Bursa İskender','-'),
('8','Burger King','-'),
('9','Adana Tatlıcılık','İyi'),
('10','Dominos Pizza','Daha özenli olabilirdi!!');

10)db.reviews.insertMany([
  {
    Customer_ID: 1,
    RName: "Burger King",
    Food_Review: "Çok güzel bir burger idi, kurye çok hızlıydı."
  },
  {
    Customer_ID: 2,
    RName: "Domios Pizza",
    Food_Review: "Pizza güzeldi"
  },
  {
    Customer_ID: 3,
    RName: "OSES Çiğköfte",
    Food_Review: ""
  },
  {
    Customer_ID: 4,
    RName: "Burger King",
    Food_Review: "Yemeği beğenmedim soğuk geldi, kurye gecikti"
  },
  {
    Customer_ID: 5,
    RName: "Dominos Pizza",
    Food_Review: "-"
  },
  {
    Customer_ID: 6,
    RName: "OSES Çiğköfte",
    Food_Review: "-"
  },
  {
    Customer_ID: 7,
    RName: "Bursa İskender",
    Food_Review: "-"
  },
  {
    Customer_ID: 8,
    RName: "Burger King",
    Food_Review: "-"
  },
  {
    Customer_ID: 9,
    RName: "Adana Tatlıcılık",
    Food_Review: "İyi"
  },
  {
    Customer_ID: 10,
    RName: "Dominos Pizza",
    Food_Review: "Daha özenli olabilirdi!!"
  }
])
