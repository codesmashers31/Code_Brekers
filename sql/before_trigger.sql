use taskdb;


create table salary_log(
emp_id int primary key,
amount int
);


DELIMITER &&

CREATE TRIGGER salarylog 
before insert on orders 
for each row
begin
-- if amount < 5000 , set it to 5000

-- if 
-- NEW.amount < 5000 THEN
-- SET NEW.amount = 5000;
-- end if;

-- set new.CustomerID = round(new.CustomerID);

if
new.OrderDate is null then
set new.OrderDate = curdate();
end if;
end&&

DELIMITER ;

DELIMITER &&
CREATE TRIGGER datevalidation 
before insert on orders 
for each row
begin
if
new.OrderDate is null then
set new.OrderDate = curdate();
end if;
end&&





DELIMITER ;


DELIMITER **

CREATE TRIGGER newtrigger 
BEFORE insert on orders
for each row begin

if
new.amount = 1800 then
set new.amount = 2000;
end if;
end**


DELIMITER ;



