-- DML
use company_db;
-- set sql_safe_updates = 1;
-- insert into employees (emp_id,emp_name,salary,dept_id) values (34,"New",30000,104);
-- update employees set emp_name="React New", salary=500000, dept_id=102 where id=1;
-- delete from employees where emp_name="New";

-- --DQL:
select * from employees;
select count(1) from employees;
select * from  department limit 2;

-- select  dept_name,count(*) as total_emp from department group by dept_name;


select dept_id,salary,count(*) thisisfortotalgrouping from employees group by dept_id,salary;

-- selecet pannuren evlo row erukkunu - yenga erunthu employees table la erunthu, group pannuren dept_id

select * from employees order by emp_name desc;


select salary,emp_name from employees where salary >= 40000;

select dept_id,emp_name,salary,count(salary) as total  from employees group by dept_id,emp_name,salary having avg(salary) >= 40000;