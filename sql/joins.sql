-- 🔹 Departments Table (Parent)
create database newemp;
use newemp;

CREATE TABLE departments (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(50)
);

CREATE TABLE manager (
  manager_id INT PRIMARY KEY,
  managername VARCHAR(50)
);




INSERT INTO manager (manager_id, managername) VALUES
(1, 'Surya'),
(2, 'ranjani'),
(3, 'enoc'),
(4, 'guna');

-- 🔹 Employees Table (Child)
CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(100),
  dept_id INT,
  salary DECIMAL(10,2),
  manager_id INT,
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees (emp_id, emp_name, dept_id, salary, manager_id) VALUES
(101, 'Ravi', 1, 40000, NULL),
(102, 'Anu', 2, 60000, 101),
(103, 'Karthik', 2, 50000, 101),
(104, 'Meena', NULL, 45000, 102),
(105, 'Sathish', 4, 55000, NULL);

-- Inner Join

select emp.emp_name, dep.dept_name from employees emp inner join departments dep on emp.dept_id = dep.dept_id;

select * from employees e inner join departments d on e.dept_id = d.dept_id;

select * from employees  inner join manager  on employees.manager_id = manager.manager_id;

-- --Left Join

select * from employees e left join departments d on e.dept_id = d.dept_id;

select * from employees e right join departments d on e.dept_id = d.dept_id;
