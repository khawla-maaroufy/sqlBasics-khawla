Q1
CREATE DATABASE zonetest; //zone-test ne fonctionne pas )
Q2
create table Customer ( 
    CustomerId int NOT NULL,    
    FirstName varchar(40) , 
    LastName varchar(40) , 
    City varchar(40) , 
    Country varchar(40),
    Phone varchar (20) , 
    PRIMARY KEY (CustomerId)
    ) ;
    
create table Orders (
    OrdersId int NOT NULL, 
    OrderDate date , 
    OrderNumber varchar(10), 
    TotalAmount decimal(12,2),
    PRIMARY KEY (OrdersId) ,
    FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId)
    ) ; 
    
create table OrderItem ( 
    OrderItemId int NOT NULL , 
    UnitPrice decimal (12,2) , 
    Quantity int ,
    PRIMARY KEY (OrderItemId),
    FOREIGN KEY (OrdersId) REFERENCES Orders(OrdersId) ,
    FOREIGN KEY (ProductId) REFERENCES Product(ProductId)
    ) ;
    
    create table Product ( 
    ProductId int NOT NULL,
    ProductName varchar(50), 
    UnitPrice decimal (12,2), 
    Package varchar (30), 
    IsDiscontinued bit,
    PRIMARY KEY (ProductId) ,
    FOREIGN KEY (SupplierId) REFERENCES Supplier(SupplierId)
    ) ;
    
create table Supplier (
    SupplierId int NOT NULL, 
    CompanyName varchar(40), 
    ContactName varchar(50), 
    ContactTitle varchar (40), 
    City varchar (40), 
    Country varchar(40), 
    Phone varchar(30), 
    Fax varchar (30),
    PRIMARY KEY (SupplierId)
    );
Q3 
SELECT FirstName,LastName,Country FROM Customer ;
Q4
Q5.1
 SELECT IsDiscontinued FROM Product WHERE id > 50 ; 
Q5.2
SELECT * FROM Product WHERE ProductName LIKE 'Ca%' ; 
Q6
