SELECT * FROM company_db.orders;

select count("") from orders;
SELECT CustomerID,amount FROM orders where Amount > (select count("3") from orders);

