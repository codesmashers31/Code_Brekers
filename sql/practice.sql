create database taskdb;
use taskdb;
create table Customers (
CustomerID  int primary key auto_increment,
Name varchar(30),
Email  varchar(30),
City  varchar(30)        
);
create table Orders (
OrderID  int,
CustomerID  int,
OrderDate date,
Amount  int       
);



insert into Customers (Name,Email,City) values ("Meera",null,"Chennai");
insert into Orders (OrderID,CustomerID,OrderDate,Amount) values (102,1,'2023-01-10',1800),(103,1,curdate(),3000),(104,2,curdate(),2200),(105,3,curdate(),1500);
update Customers set City="Delhi" where name = "Arjun";
delete from Orders  where OrderID = 105;

select amount,CustomerID from Orders where amount > 2000;

select max(CustomerID) from Orders;
select Name,OrderID from Customers cross join Orders where OrderID > (select min(CustomerID) from Orders);


select * from 




