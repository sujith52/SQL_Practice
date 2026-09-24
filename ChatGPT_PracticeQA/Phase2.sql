drop Table employees

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    designation VARCHAR(30),
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(30)
);

INSERT INTO employees
(emp_id, emp_name, department, designation, salary, joining_date, city)
VALUES
(101, 'Rahul Sharma', 'IT', 'Developer', 55000, '2023-01-15', 'Bangalore'),
(102, 'Priya Reddy', 'HR', 'HR Executive', 42000, '2022-06-10', 'Chennai'),
(103, 'Arjun Kumar', 'IT', 'Tester', 48000, '2023-03-20', 'Hyderabad'),
(104, 'Sneha Rao', 'Finance', 'Accountant', 50000, '2021-11-05', 'Bangalore'),
(105, 'Vikram Singh', 'IT', 'Manager', 85000, '2020-02-18', 'Bangalore'),
(106, 'Meena Devi', 'HR', 'Manager', 78000, '2019-08-25', 'Chennai'),
(107, 'Kiran Patel', 'Finance', 'Manager', 82000, '2018-04-12', 'Mumbai'),
(108, 'Anjali Das', 'IT', 'Developer', 62000, '2024-01-10', 'Pune'),
(109, 'Rohit Verma', 'Sales', 'Sales Executive', 39000, '2023-07-22', 'Delhi'),
(110, 'Neha Kapoor', 'Sales', 'Manager', 75000, '2020-09-30', 'Delhi'),
(111, 'Suresh Rao', 'IT', 'Developer', 58000, '2024-05-14', 'Bangalore'),
(112, 'Divya Reddy', 'HR', 'Recruiter', 45000, '2024-02-01', 'Chennai'),
(113, 'Amit Sharma', 'IT', 'Developer', 60000, '2022-12-20', 'Hyderabad'),
(114, 'Pooja Singh', 'Finance', 'Accountant', 47000, '2023-08-15', 'Mumbai'),
(115, 'Karthik Rao', 'Sales', 'Sales Executive', 41000, '2024-03-10', 'Delhi');



SELECT DISTINCT department from employees

SELECT DISTINCT city from employees

SELECT DISTINCT designation from employees

SELECT   COUNT(DISTINCT department) as "no of departments"  
from employees

SELECT COUNT(DISTINCT city) as "no of unique cities" 
from employees

SELECT COUNT(DISTINCT designation) as "total designations"
from employees

SELECT emp_name, salary as "Monthly Salary"
from employees

SELECT emp_name as "Employee Name", department as "Department Name"
from employees

SELECT emp_name, salary, salary * 12 as "Annual Salary"
from employees

SELECT emp_name as "Name :", salary as "Income :"
from employees

SELECT COUNT(*) as "Total Employee count"
from employees

SELECT COUNT(*) as "Employees working in it"
from employees
WHERE department = "IT"

SELECT COUNT(*)
from employees
WHERE department ="HR"

SELECT department,COUNT(*) as "emp in each dep"
from employees
GROUP BY department

SELECT city, COUNT(*)
from employees
GROUP BY city

SELECT designation, COUNT(*)
from employees
GROUP BY designation

SELECT department, COUNT(*) as "Employee count"
from employees
GROUP BY department

SELECT SUM(salary)
from employees

SELECT SUM(salary)
from employees
WHERE department = "IT"

SELECT department,SUM(salary) as "Total salary"
from employees
GROUP BY department

SELECT city,SUM(salary)
from employees
GROUP BY city

SELECT designation,SUM(salary)
from employees
GROUP BY designation

SELECT department, SUM(salary)
from employees
WHERE department IN("IT","HR","Finance")
GROUP BY department

-- round 5
SELECT AVG(salary)
from employees

SELECT AVG(salary)
from employees
WHERE department = "IT"

SELECT department, AVG(salary)
from employees
GROUP BY department

SELECT city, AVG(salary)
from employees
GROUP BY city

SELECT department, AVG(salary)
from employees
GROUP BY department
HAVING AVG(salary) > 55000

SELECT city, AVG(salary)
from employees
GROUP BY city
HAVING AVG(salary) > 55000

-- stopped at problem 30 at september 24