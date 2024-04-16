create database ecom;
use ecom;
create table Categories (CategoryID int primary key, CategoryName varchar(25), Description varchar(100));
insert into Categories (CategoryID,CategoryName, Description) values (1,'Beverages','Soft drinks, coffees, teas, beers, and ales'),
(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings'),(3,'Confections','Desserts, candies, and sweet breads'),
(4,'Dairy Products','Cheeses'),(5,'Grains/Cereals','Breads, crackers, pasta, and cereal'),(6,'Seafood','Seaweed and fish');
create table Customers (CustomerID varchar(20),CompanyName varchar(50),ContactName varchar(25),ContactTitle varchar(25),Address varchar(35),City varchar(25),
Region varchar(30),PostalCode varchar(20),Country varchar(30),Phone varchar(15),Fax varchar(15));

insert into Customers (CustomerID, CompanyName, ContactName, ContactTitle,Address, City, Region, PostalCode, Country, Phone, Fax) values
('ALFKI', 'Alfreds Futterkiste','Maria Anders', 'Sales Representative','Obere Str.57', 'Berlin', null , '12209', 'Germany', '030-0074321',
'030-0076545'),
 ('ANATR', 'Ana Trujillo Emparedados y helados','Ana Trujillo', 'Owner', 'Avda. de la Constitución 2222','México D.F.', null,'5021' ,'Mexico', '(5)555-4729','(5)555-3745'),
 ('ANTON', 'Antonio MorenoTaquería','Antonio Moreno','Owner', 'Mataderos 2312', 'MéxicoD.F.', null,'5023', 'Mexico', '(5)555-3932', null),
('AROUT', 'Around the Horn', 'Thomas Hardy', 'SalesRepresentative','120 Hanover Sq.', 'London',null, 'WA1 1DP', 'UK', '(171)555-7788','(171)555-6750'),
('BERGS', 'Berglundssnabbköp','Christina Berglund','Order Administrator','Berguvsvägen 8',' Luleå',null, 'S-958 22',' Sweden',' 0921-12
34 65','0921-1234 67');

create table Order_details (OrderID int8, ProductID int, UnitPrice float, Quantity int, Discount float);
insert into Order_details (OrderID, ProductID, UnitPrice, Quantity, Discount) values (10248, 11, 14, 12, 0),(10248, 42, 9.8, 10, 0),
(10248, 72, 34.8, 5, 0),(10249, 14, 18.6, 9, 0),(10249, 51, 42.4,40, 0),(10250, 41, 7.7 ,10, 0),(10250, 51, 42.4, 35, 0.15),
(10250, 65, 16.8, 15, 0.15),(10251, 22, 16.8, 6, 0.05),(10251, 57, 15.6, 15, 0.05);

create table Product (ProductID int, ProductName varchar(50), SupplierID int, CategoryID int, QuantityPerUnit varchar(60),
 UnitPrice float, UnitsInStock int, UnitsOnOrder int, ReorderLevel int , Discontinued int);
 
insert into Product (ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder,
 ReorderLevel, Discontinued) values 
 (1, 'Chai', 1, 1, '10 boxes x 20 bags',18, 39, 0, 10, 0),
 (2, 'Chang', 1, 1, '24-12 oz bottles', 19, 17, 40, 25, 0),
 (3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles',10 ,13, 70, 25, 0),
 (4, 'Chef Anton s Cajun Seasoning',2, 2,'48 - 6 oz jars', 22, 53, 0, 0, 0),
 (5, 'Chef Anton s Gumbo Mix',2, 2, '36 boxes', 21.35, 0, 0, 0, 1),
 (6, 'Grandma s Boysenberry Spread',3, 2,'12 - 8 oz jars', 25, 120, 0, 25, 0),
 (7, 'Uncle Bobs Organic Dried Pears',3, 4, '12 - 1 lb pkgs', 30, 15, 0, 10, 0),
(8,'Northwoods Cranberry Sauce',3, 2, '12 - 12 oz jars', 40, 6, 0, 0, 0),
(9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97, 29, 0, 0, 1),
(10, 'Ikura', 4, 5, '12 - 200 ml jars', 31, 31, 0 ,0 ,0);

create table supplier (SupplierID int, CompanyName varchar(50), ContactName varchar(80), ContactTitle varchar(30), Address varchar(50),
 City varchar(25), Region varchar(20), PostalCode varchar(30), Country varchar(20), Phone varchar(15), Fax varchar(15));
 
insert into supplier (SupplierID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values
(1,'Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', null ,'EC1 4SD', 'UK', '(171) 555-2222',null),
(2, 'New Orleans Cajun Delights','Shelley Burke', 'Order Administrator','P.O. Box 78934', 'New Orleans','LA', 70117, 'USA', '(100)555-4822', null),
(3, 'Grandma Kellys Homestead','Regina Murphy','Sales Representative','707 Oxford Rd.', 'Ann Arbor', 'MI', 48104, 'USA', '(313) 555-5735','(313)
555-3349'),
(4,'Tokyo Traders',' Yoshi Nagase', 'Marketing Manager','9-8 Sekimai Musashino-shi', 'Tokyo',null , 100, 'Japan', '(03)3555-5011',null),
(5, 'Cooperativa de Quesos Las Cabras','Antonio delValle Saavedra','Export Administrator','Calle del Rosal 4', 'Oviedo',' Asturias', 33007, 'Spain', '(98) 598 7654',null),
(6, 'Heli Süßwaren GmbH & Co. KG','Petra Winkler', 'Sales Manager', 'Tiergartenstraße 5','Berlin',null, 10785,'Germany', '(010)9984510', null),
(7, 'Pavlova, Ltd.', 'Ian Devling', 'Marketing Manager','74 Rose St.Moonie Ponds','Melbourne ','Victoria', 3058, 'Australia', '(03)444-2343','
(03)444-6588'),
(8,'Specialty Biscuits, Ltd.','Peter Wilson',' Sales Representative','29 King s Way',' Manchester',null,'M14 GSD', 'UK',' (161)555-4448',null),
(9, 'PB Knäckebröd AB', 'Lars Peterson', 'Sales Agent', 'Kaloadagatan 13', 'Göteborg',null,' S-345 67',' Sweden', '031-987 6543','031-98765 91'),
(10,'Refrescos Americanas LTDA','Carlos Diaz','Marketing Manager','Av.das Americanas 12.890','São Paulo',null, 5442,' Brazil',' (11) 5554640', null);


-- 1.shows the CategoryName and Description from the categories table sorted by CategoryName.
select CategoryName, Description from Categories order by CategoryName;

-- 2.shows the ContactName, CompanyName, ContactTitle and Phone number from the customers table sorted by Phone.
select ContactName, CompanyName,ContactTitle,Phone from Customers order by Phone;

-- 3.shows all the CustomerID in lowercase letter and renamed as ID from the customers table.
select CustomerID, lower(CustomerID) as ID from CUstomers;

-- 4.shows the CompanyName, Fax, Phone, Country, HomePage from the suppliers table sorted by the Country in descending order then by CompanyName in ascending order.
select CompanyName, Fax, Phone, Country from supplier order by Country  desc, CompanyName;

-- 5.shows CompanyName, ContactName of all customers from ‘Mexico' only.
select CompanyName, ContactName from Customers where Country = 'Mexico';

-- 6.showing ProductName, UnitPrice, QuantityPerUnit of products that are out of stock.
select ProductName, UnitPrice, QuantityPerUnit from product where UnitsInStock = 0;

-- 7.showing all the ContactName, Address, City of all customers not from Germany, Mexico, Spain.
select ContactName, Address, City from Customers where Country not in ('Germany','Mexico','Spain');

-- 8.shows the City, CompanyName, ContactName of customers from cities starting with A or B.
select City, CompanyName, ContactName from Customers where City like "A%" or City like "B%";

-- 9.shows the ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel of all products that are up for reorder
select ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel from product where ReOrderLevel > '0';

-- 10.shows the CompanyName, ContactName number of all customer that have no fax number.
select CompanyName, ContactName from Customers where fax is null;

-- 11.shows the CompanyName, ContactName, Fax of all customers that do not have Fax number and sorted by ContactName.
select CompanyName,ContactName,Fax from Customers where fax is null order by ContactName;

-- 12.shows the City, CompanyName, ContactName of customers from cities that has letter L in the name sorted by ContactName.
select City,CompanyName,ContactName from Customers where City like "%l%" order by ContactName;

-- 13.showing OrderID, total number of Order ID as NumberofOrders from the orderdetails table grouped by OrderID and sorted by NumberofOrders in descending order

select OrderID, count(*) as NumberOfOrders from Order_details group by OrderID order by NumberOfOrders desc;

-- 14.shows the all column from product access five rows after 5 th row  ProductID
select * from product limit 5,5;

-- 15.shows the ContactName, ContactTitle, CompanyName of customers that the has no "Sales" in their ContactTitle
select ContactName, ContactTitle, CompanyName from Customers where ContactTitle is null;

-- 16.shows the CompanyName, ContactTitle, City, Country of all customers in any  city in Mexico or other cities in Spain other than Madrid.
select CompanyName,ContactTitle, City, Country from Customers where Country = ('Mexico' and 'Spain');

-- 17.shows the ContactName of all customers that do not have letter A as the second alphabet in their Contactname.
select ContactName from Customers where  ContactName not like "_a%";

-- 18. shows the average UnitPrice rounded to the next whole number, total price of UnitsInStock and maximum number of orders from the products table. All saved as AveragePrice, TotalStock and MaxOrder respectively
select ceil(avg(UnitPrice)) as AveragePrice, max(UnitsOnOrder) as MaxOrder, sum(UnitPrice*UnitsInStock) as TotalStock from product;

-- 19.shows the average, minimum and maximum UnitPrice of all products as AveragePrice, MinimumPrice and MaximumPrice respectively
select avg(UnitPrice) as AveragePrice, min(UnitPrice) as MinimumPrice, max(UnitPrice) as MaximumPrice from product;

-- 20.fetch the first 5 character of categoryName from the category tables and renamed as ShortInfo.
select substr(CategoryName,1,5) as ShortInfo from Categories ;

-- 21.shows that the contactname, companyname, contacttitle, and phone number from customer table sorted by contactname
select ContactName, CompanyName, ContactTitle, Phone from Customers order by ContactName;

-- 22.shows the capitalized ContactName and lowercase CompanyName and rename as Name and Company respt.
select upper(ContactName) as Name, lower(CompanyName) as Company from Customers;

-- 23. using case operator shows the unit price of products from order table
select UnitPrice,
case
when UnitPrice <= 10 then 'Cheap'
when UnitPrice >10 and UnitPrice <30 then 'Resonable'
when UnitPrice >30 then 'Expensive'
end
from Product;

-- 24.show the productName who are discontinued from product table
select ProductID,ProductName from Product where Discontinued = '1';

-- 25. show companyName, ContactName,Address, and city from supplier table and sort by city descending order
select CompanyName, ContactName, Address, City from supplier order by City desc;

-- 26. rename the column Address to Location from supplier table
alter table supplier rename column Address to Location;
 