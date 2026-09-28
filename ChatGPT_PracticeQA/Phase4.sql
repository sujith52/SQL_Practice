drop Table employees

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    manager_id INT
);

INSERT INTO employees VALUES
(101, 'Rahul', 'IT', 55000, 105),
(102, 'Priya', 'HR', 42000, 106),
(103, 'Arjun', 'IT', 48000, 105),
(104, 'Sneha', 'Finance', 50000, 107),
(105, 'Vikram', 'IT', 85000, NULL),
(106, 'Meena', 'HR', 78000, NULL),
(107, 'Kiran', 'Finance', 82000, NULL),
(108, 'Anjali', 'IT', 62000, 105),
(109, 'Rohit', 'Sales', 39000, 110),
(110, 'Neha', 'Sales', 75000, NULL),
(111, 'Suresh', 'IT', 58000, 105),
(112, 'Divya', 'HR', 45000, 106);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30)
);

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Sales'),
(5, 'Marketing');

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    department VARCHAR(30),
    budget DECIMAL(12,2)
);

INSERT INTO projects VALUES
(201, 'E-Commerce', 'IT', 500000),
(202, 'Recruitment Portal', 'HR', 250000),
(203, 'Financial Dashboard', 'Finance', 400000),
(204, 'CRM System', 'Sales', 350000),
(205, 'Marketing Analytics', 'Marketing', 300000);

-- round 1 

SELECT * 
from employees
WHERE salary > (SELECT AVG(salary) from employees)

SELECT * from employees
WHERE salary = (SELECT MAX(salary) from employees)
LIMIT 1

SELECT * from employees
WHERE salary = (SELECT MIN(salary) from employees)

SELECT * from employees
WHERE salary > (SELECT salary from employees WHERE emp_name="Rahul")

SELECT * from employees
WHERE department = (SELECT department from employees WHERE emp_name="Rahul")

SELECT * from employees
WHERE salary >
(SELECT AVG(salary) from employees WHERE department="IT")

SELECT * from employees
WHERE salary > 
ALL (SELECT salary from employees WHERE department ="HR")

SELECT * from employees
WHERE salary > ANY 
(SELECT salary from employees WHERE department ="HR")

-- round 2

SELECT department, avg_sal from 
(SELECT department, avg(salary) as avg_sal from employees
GROUP BY department) as avg_table
WHERE avg_sal > 55000

SELECT department,max_sal from 
(SELECT department, max(salary) as max_sal FROM employees
GROUP BY department) as main_table
WHERE max_sal > 80000

SELECT department, emp_count FROM
(SELECT department, count(*) as emp_count FROM employees
GROUP BY department) as emp_count
WHERE emp_count > 2

SELECT department, total_sal, avg_sal FROM
(SELECT department, sum(salary) as total_sal, 
avg(salary) as avg_sal FROM employees 
GROUP BY department) as tables2
ORDER BY avg_sal DESC

-- round 3

SELECT emp_name, salary,
(SELECT AVG(salary) from employees) as "avg salry"
FROM employees

SELECT emp_name,salary,
(SELECT MAX(salary) FROM employees) as "maximum salry of employ"
FROM employees

SELECT e.emp_name,e.department,e.salary,
(SELECT AVG(e2.salary) FROM employees e2  WHERE e2.department = e.department) as dep_avg
FROM employees e

-- round 4

SELECT *
FROM employees e
WHERE e.salary > (SELECT AVG(salary) FROM employees e2
WHERE e2.department = e.department)

SELECT department, emp_name
FROM employees e
WHERE e.salary = (SELECT MAX(salary) FROM employees e2 
WHERE e2.department = e.department)

SELECT department, emp_name
FROM employees e
WHERE e.salary = (SELECT MIN(salary) FROM employees e2 
WHERE e2.department = e.department)

SELECT department, emp_name
FROM employees e
WHERE e.salary > ALL (SELECT SUM(e2.salary) FROM employees e2 
WHERE e2.department = e.department and e2.emp_id != e.emp_id)

SELECT e.* FROM employees e
WHERE EXISTS(
    SELECT 1 from employees e2 
    WHERE e2.department = e.department
    and e2.salary > e.salary
)

-- round 5

SELECT e.department from employees e
WHERE EXISTS(
    SELECT 1 from employees e2
    WHERE e2.department = e.department
)

SELECT d.* from departments d
WHERE NOT EXISTS(
    SELECT 1 from employees e2
    WHERE e2.department = d.dept_name
)

SELECT e.* from employees e
WHERE EXISTS(
    SELECT * from departments d
    WHERE d.dept_name = e.department
)

SELECT e.* from employees e
WHERE EXISTS(
    SELECT 1 from employees d
    WHERE d.department = e.department 
    and d.emp_id != e.emp_id
)

-- round 6

SELECT e.* from employees e
WHERE not EXISTS(
    SELECT 1 from employees e2
    WHERE e2.manager_id = e.emp_id
)

-- round 7

SELECT emp_name as name from employees
UNION
SELECT project_name as name from projects

SELECT emp_name as name from employees
UNION ALL
SELECT project_name as name from projects

SELECT department FROM employees
UNION
SELECT dept_name from departments

SELECT department FROM employees
UNION ALL
SELECT dept_name from departments

-- round 8

SELECT e.* from employees e
WHERE e.salary >  ANY (SELECT salary from employees WHERE department ="HR")

SELECT emp_name,department,salary from employees e
WHERE salary > (SELECT avg(salary) FROM employees) and
salary > all (SELECT salary FROM employees WHERE department = "HR") AND
EXISTS (SELECT 1 FROM employees e2 WHERE e2.department = e.department
and e2.emp_id <> e.emp_id) and EXISTS
(SELECT 1 FROM departments d WHERE d.dept_name = e.department)

