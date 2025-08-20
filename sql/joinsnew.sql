-- Customers table

use company_db;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

-- Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert customers
INSERT INTO Customers VALUES
(1, 'Alice', 'alice@example.com'),
(2, 'Bob', 'bob@example.com'),
(3, 'Charlie', 'charlie@example.com');

-- Insert orders
INSERT INTO Orders VALUES
(101, 1, '2025-08-01', 500.00),
(102, 2, '2025-08-02', 300.00),
(103, 1, '2025-08-03', 200.00),
(104, 3, '2025-08-04', 150.00);


-- inner join
select * from customers as com inner join orders as ord on com.CustomerID = ord.CustomerID;

select * from customers as com left join orders as ord on com.CustomerID = ord.CustomerID;


select * from customers as com right join orders as ord on com.CustomerID = ord.CustomerID;

select * from customers as com cross join orders as ord;










