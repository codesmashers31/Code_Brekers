CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Customers_new (
    Customer_id INT PRIMARY KEY,
    Name VARCHAR(100),
    Email_new VARCHAR(100) NULL
);


use company_db;

INSERT INTO Orders (OrderID,CustomerID,OrderDate,Amount) VALUES (106,1,curdate(),1000.00);

INSERT INTO Customers VALUES
(4, upper('Surya'), 'suriflix@gmail.com'),
(5, 'Bob', 'bob@example.com'),
(6, lower('SURYA'), 'charlie@example.com');


INSERT INTO customers_new (Customer_id,Name)  VALUES
(2, upper('Surya'));


SELECT Email_new, NULLIF('This is empty', 'This is empty')
FROM customers_new;

INSERT INTO Customers VALUES (10,concat('Name',  ' ', 'Value'),'suriflix@gmail.com');



INSERT INTO Customers VALUES (13,concat('Name',  ' ', 'Value'), "");




