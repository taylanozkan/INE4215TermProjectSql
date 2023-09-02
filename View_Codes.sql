--VIEW CODES

CREATE VIEW Who_Live_İstanbul AS
SELECT Adress,Name
FROM Customers
WHERE Adress like ('%,İstanbul');


select * from Who_Live_İstanbul;

db.customers.find({ "Adress": { $regex: ".*, İstanbul" } }, { "Adress": 1, "Name": 1 })


CREATE VIEW Which_Restaurant_Ordered AS
SELECT StatusID,RName,StatusName
FROM order_status
WHERE StatusName = ('Ordered');

select * from Which_Restaurant_Ordered;
db.order_status.find(
    {
        "StatusName": "Ordered"
    },
    {
        "StatusID": 1,
        "RName": 1,
        "StatusName": 1
    }
)


CREATE VIEW İlk_Sipariş_İndirimi_Codes AS
SELECT RCoupon_Name,RCoupon_Code
FROM restaurant_coupons
WHERE RCoupon_Name like ('İlk%');

select * from İlk_Sipariş_İndirimi_Codes;


db.restaurant_coupons.find(
    {
        "RCoupon_Name": { $regex: /^İlk/ }
    },
    {
        "RCoupon_Name": 1,
        "RCoupon_Code": 1
    }
)

CREATE VIEW customer_deliveries AS
SELECT delivery.Courier_Name, Customers.Name
FROM Customers
INNER JOIN Delivery
ON customers.Customer_ID = delivery.Customer_ID;


--INDEX CODES

CREATE INDEX card_information
ON Wallets(Card_Number,CVC);

db.wallets.createIndex( { Card_Number: 1, CVC: 1 }, { name: "card_information" } )

CREATE INDEX personel_information
ON Customers(Adress,Mail);

db.customers.createIndex( { Adress: 1, Mail: 1 }, { name: "personel_information" } )

CREATE INDEX rcoupon_information
ON restaurant_coupons(RCoupon_Name,RCoupon_Description,RCoupon_Code);

db.restaurant_coupons.createIndex({ RCoupon_Name: 1, RCoupon_Description: 1, RCoupon_Code: 1 }, { name: "rcoupon_information" })

STORED PROCEDURE CODES

delimiter //

CREATE PROCEDURE cheapest_menu( IN MenuPrice decimal(10,2))
BEGIN
SELECT * FROM menu WHERE Price <= MenuPrice;
END//

delimiter ;

db.menu.aggregate([
   {
      $match: { Price: { $lte: MenuPrice } }
   }
])

DELIMITER //
CREATE PROCEDURE get_customers_by_year(IN IN_year INT)
BEGIN
    SELECT * FROM Customers WHERE Birthdate >= IN_year;
END //
DELIMITER ;

db.customers.aggregate([
    {
        $match: {
            Birthdate: {$gte: new Date(IN_year, 0, 1)}
        }
    }
])


delimiter //

CREATE PROCEDURE Customer_From_İzmir(IN Adress1 varchar(255))
BEGIN
  SELECT * FROM Customers WHERE Adress like Adress1;
END//

delimiter ;

db.customers.aggregate([
   {
      $match: { Adress: { $regex: Adress1 } }
   }
])


