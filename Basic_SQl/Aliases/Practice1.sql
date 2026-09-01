show DATABASES

show TABLES

desc employ

SELECT name as full_name from employ

SELECT email as Email_ID from employ

select email as "Email ID from table" from employ

SELECT name "Full names from table " from employ

SELECT name, email from employ as EMp 

CREATE Table emp_al (
    id int PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    department VARCHAR(20),
    salary INT
)

insert INTO emp_al VALUES
(1,"sujith","G","IT",50000),
(2,"sreejas","V","IT",100000),
(3,"lathas","B","IT",100000)

SELECT
first_name as "Employee Name",
salary as "Monthly Salary"
from emp_al

SELECT first_name, department, salary 
from emp_al as Employee_Table

select first_name, salary, salary * 12 as "Annual Salary"
from emp_al

SELECT first_name as "Employee Name",
salary as "Current Salary",
salary * 1.06 as "New Salary"
from emp_al

SELECT first_name as "Employee Name",
department as "Department",
salary * 12 as "Annual Salary"
from emp_al as Employee 
WHERE salary * 12 > 700000

