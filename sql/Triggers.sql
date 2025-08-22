use taskdb;
create table emp_log(

log_id int primary key auto_increment,
Cus_ID int,
action varchar(200),
log_time  timestamp default CURRENT_TIMESTAMP 

);

create table update_log(

log_id int primary key auto_increment,
Cus_ID int,
name varchar(200),
action varchar(200),
log_time  timestamp default CURRENT_TIMESTAMP 

);

alter table update_log  add column old_name varchar(200);


DELIMITER $$

CREATE TRIGGER newlog after insert on customers 
for each row 
begin
insert into emp_log(Cus_ID,action,log_time) values (new.CustomerID,'i am insert new data',Now());
end$$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER updatelog after UPDATE on customers 
for each row 
begin
insert into update_log(Cus_ID,name,action,log_time,old_name) values (CustomerID,new.Name,'Update',Now(),old.Name);
end$$

DELIMITER ;








 