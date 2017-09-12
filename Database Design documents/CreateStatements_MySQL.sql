Create TABLE Customer (
CustomerID numeric (4) NOT NULL,
Name varchar (30) NOT NULL,
Email varchar (30) NOT NULL,
Street varchar (30) NULL,
City varchar (30) NULL,
ZipCode numeric (6) NULL,
State varchar (20) NULL,
Password varchar (30) NOT NULL,
CONSTRAINT Customer_Pk PRIMARY KEY (CustomerID)
);

Create TABLE Product (
ProductID numeric (4) NOT NULL,
ProductName varchar (100) NOT NULL,
Price_inDollars decimal (10,2) NOT NULL,
Discount_inDollars numeric (30) NOT NULL,
ProductSize_inPounds varchar (50)NOT NULL,
Dimensions_inInches varchar (30) NOT NULL,
ShippingWeight_inPounds varchar (50) NOT NULL,
ModelNumber varchar (30) NOT NULL,
Description varchar (1000) NOT NULL,
Image varchar (50) NOT NULL,
Manufacturer varchar (50) NOT NULL,
CONSTRAINT Product_Pk PRIMARY KEY (ProductID)
);

CREATE TABLE ProductFeature (
ProductFeatureID numeric (4)	NOT NULL,
Feature		 varchar (500)	NOT NULL,
ProductID	 numeric (4)	NOT NULL,
CONSTRAINT productfeature_pk PRIMARY KEY (ProductFeatureID),
CONSTRAINT product_fk FOREIGN KEY (ProductID)
REFERENCES Product (ProductID)
ON DELETE CASCADE
);

CREATE TABLE Cart (
CartID numeric (4) NOT NULL,
Status varchar (10) NOT NULL,
CustomerID numeric (4) NOT NULL,
CONSTRAINT cart_pk PRIMARY KEY (CartID),
CONSTRAINT customer_fk FOREIGN KEY (CustomerID)
REFERENCES Customer (CustomerID)
ON DELETE CASCADE
);

CREATE TABLE CartProducts (
CartProductsID numeric (4) NOT NULL,
CartID numeric (4) NOT NULL,
ProductID numeric (4) NOT NULL,
NumberOfUnits integer NOT NULL,
CONSTRAINT cartproductsid_pk PRIMARY KEY (CartProductsID),
CONSTRAINT cartid_fk FOREIGN KEY (CartID)
REFERENCES Cart (CartID)
ON DELETE CASCADE,
CONSTRAINT productid_fk FOREIGN KEY (ProductID)
REFERENCES Product (ProductID)
ON DELETE CASCADE
);

CREATE TABLE CardDetails (
CardDetailId numeric (4) NOT NULL,
CustomerId numeric (4) NOT NULL,
CardType varchar(25) NOT NULL,
CardNumber numeric(24) NOT NULL,
ExpiryDate Date NOT Null,
SecurityCode numeric(24) NOT NULL,
FirstName varchar (100) NOT NULL,
LastName varchar (100) NOT NULL,
Phone varchar (25) NOT NULL,
Email varchar (100) NOT NULL,
CompanyName  varchar (100) Null,
Street varchar (100) NOT NULL,
ApartmentNumber numeric (24) NOT NULL,
ZipCode numeric(24) NOT NULL,
CONSTRAINT carddetail_pk PRIMARY KEY (CardDetailId),
CONSTRAINT customer_carddetails_fk FOREIGN KEY (CustomerId)
REFERENCES Customer(CustomerId)
ON DELETE CASCADE
);

Create TABLE Payment (
PaymentID numeric(4) NOT NULL,
Status varchar(30) NOT NULL,
CartID numeric(4) NOT NULL,
CardDetailId numeric(4) NOT NULL,
CONSTRAINT Payment_pk PRIMARY KEY (PaymentID),
CONSTRAINT Payment_Cart_fk FOREIGN KEY (CartID)
REFERENCES Cart (CartID),
CONSTRAINT Payment_CardDetails_fk FOREIGN KEY (CardDetailId)
REFERENCES CardDetails (CardDetailId)
);

Create TABLE Orders (
OrderID numeric(4) NOT NULL,
CUSTOMERID numeric (4),
PaymentID numeric (4) NOT NULL,
OrderStatus varchar(30) NOT NULL,
OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
CONSTRAINT Order_pk PRIMARY KEY (OrderID),
CONSTRAINT Order_Customer_fk FOREIGN KEY (CustomerID)
REFERENCES Customer (CustomerID)
ON DELETE SET NULL,
CONSTRAINT Order_Payment_fk FOREIGN KEY (PaymentID)
REFERENCES Payment (PaymentID)
);

CREATE TABLE OrderDetails (
OrderDetailsID numeric (4) NOT NULL,
OrderID numeric (4) NOT NULL,
ProductId numeric(4),
NumberOfUnits integer NOT NULL,
Unitprice  decimal(10,2) NOT Null,
CONSTRAINT orderdetails_pk PRIMARY KEY (OrderDetailsID),
CONSTRAINT order_orderdetails_fk FOREIGN KEY (OrderID)
REFERENCES Orders(OrderID)
On Delete CASCADE,
CONSTRAINT order_productid_fk FOREIGN KEY (ProductID)
REFERENCES Product (ProductID)
On Delete SET NULL
);

CREATE TABLE CustomerProduct(
CustomerProductID numeric (4)	NOT NULL,
CustomerID numeric (4)	NOT NULL,
ProductID numeric (4)	NOT NULL,
Rating numeric(1),
Headline varchar(100),
Review varchar(500),
CONSTRAINT customerproduct_pk PRIMARY KEY (CustomerProductID),
CONSTRAINT customer_prod1_fk FOREIGN KEY (CustomerID)
REFERENCES Customer (CustomerID),
CONSTRAINT product1_fk FOREIGN KEY (ProductID)
REFERENCES Product (ProductID)
ON delete CASCADE		
);


CREATE TABLE ProductQuestionnaire (
CustomerProductID	numeric (4)	NOT NULL,
CustomerID 		numeric (4)	NOT NULL,
ProductID	 	numeric (4)	NOT NULL,
Question		varchar(240),
Answer			varchar(340),
CONSTRAINT customerproduct2_pk PRIMARY KEY (CustomerProductID),
CONSTRAINT customer2_fk FOREIGN KEY (CustomerID)
REFERENCES Customer (CustomerID),
CONSTRAINT product2_fk FOREIGN KEY (ProductID)
REFERENCES Product (ProductID)
ON DELETE CASCADE
);
commit;