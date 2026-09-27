-- SQLBook: Code
-- phase 3, practice on the joins

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30),
    location VARCHAR(30)
);

INSERT INTO departments VALUES
(1, 'IT', 'Bangalore'),
(2, 'HR', 'Chennai'),
(3, 'Finance', 'Mumbai'),
(4, 'Sales', 'Delhi'),
(5, 'Marketing', 'Pune'),
(6, 'Operations', 'Hyderabad');

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    manager_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees VALUES
(101, 'Rahul', 1, 105, 55000),
(102, 'Priya', 2, 106, 42000),
(103, 'Arjun', 1, 105, 48000),
(104, 'Sneha', 3, 107, 50000),
(105, 'Vikram', 1, NULL, 85000),
(106, 'Meena', 2, NULL, 78000),
(107, 'Kiran', 3, NULL, 82000),
(108, 'Anjali', 1, 105, 62000),
(109, 'Rohit', 4, 110, 39000),
(110, 'Neha', 4, NULL, 75000),
(111, 'Suresh', 1, 105, 58000),
(112, 'Divya', 2, 106, 45000),
(113, 'Amit', NULL, 105, 60000);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    dept_id INT,
    budget DECIMAL(12,2)
);

INSERT INTO projects VALUES
(201, 'E-Commerce', 1, 500000),
(202, 'Recruitment Portal', 2, 250000),
(203, 'Financial Dashboard', 3, 400000),
(204, 'CRM System', 4, 350000),
(205, 'Marketing Analytics', 5, 300000),
(206, 'Internal Automation', NULL, 150000);

CREATE TABLE employee_projects (
    emp_id INT,
    project_id INT,
    role VARCHAR(30),
    PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

INSERT INTO employee_projects VALUES
(101, 201, 'Developer'),
(103, 201, 'Tester'),
(105, 201, 'Project Manager'),
(108, 201, 'Developer'),
(102, 202, 'HR Executive'),
(106, 202, 'Project Manager'),
(104, 203, 'Accountant'),
(107, 203, 'Project Manager'),
(109, 204, 'Sales Executive'),
(110, 204, 'Project Manager'),
(111, 201, 'Developer'),
(112, 202, 'Recruiter');

SELECT * from projects

SELECT * from employee_projects

SELECT * from employees

SELECT * from departments

SELECT e.emp_name, d.dept_name
from employees e join departments d
on e.dept_id = d.dept_id

SELECT e.emp_name, d.dept_name, d.location
from employees e join departments d
on e.dept_id = d.dept_id

SELECT e.emp_name,e.salary, d.dept_name
from employees e join departments d
on e.dept_id = d.dept_id

SELECT e.emp_name, d.dept_name
from employees e INNER join departments d
on e.dept_id = d.dept_id and d.dept_name = "IT"

SELECT e.emp_name, d.location
from employees e join departments d
on e.dept_id = d.dept_id and d.location = "bangalore"

SELECT e.emp_name, d.dept_name, e.salary
from employees e join departments d
on e.dept_id = d.dept_id and e.salary > 50000

SELECT e.emp_name,e.salary, d.dept_name
from employees e join departments d
on e.dept_id = d.dept_id
ORDER BY e.salary DESC

SELECT d.dept_name, COUNT(e.emp_id) as "emp COUNT"
from employees e join departments d
on e.dept_id = d.dept_id
GROUP BY d.dept_id

SELECT d.dept_name, AVG(e.salary)
from employees e join departments d
on e.dept_id = d.dept_id
GROUP BY d.dept_id

-- round 3 left joins

SELECT  d.dept_name, e.emp_name
from  departments d LEFT join employees e
on e.dept_id = d.dept_id

SELECT  d.dept_name, e.emp_name
from  departments d LEFT join employees e
on e.dept_id = d.dept_id and e.emp_id is NULL

SELECT d.dept_name, COUNT(e.emp_id)
from  departments d LEFT join employees e
on e.dept_id = d.dept_id
GROUP BY d.dept_id

SELECT d.dept_name, COUNT(e.emp_id) as emps
from  departments d LEFT join employees e
on  d.dept_id = e.dept_id 
GROUP BY d.dept_id, d.dept_name
HAVING COUNT(e.emp_id) = 0

SELECT d.dept_name, COUNT(e.emp_id)
from  departments d LEFT join employees e
on e.dept_id = d.dept_id
GROUP BY d.dept_id 
ORDER BY COUNT(e.emp_id) DESC

SELECT d.dept_name, SUM(e.salary) as "total salary"
from  departments d LEFT join employees e
on e.dept_id = d.dept_id
GROUP BY d.dept_id

-- round 4

SELECT d.dept_name, e.emp_name
from employees e RIGHT join departments d
on e.dept_id = d.dept_id

SELECT d.dept_name, e.emp_name
from employees e LEFT join departments d
on e.dept_id = d.dept_id

SELECT e.emp_name, d.dept_name
from employees e RIGHT join departments d
on e.dept_id = d.dept_id

SELECT d.dept_name, COUNT(e.emp_id)
from employees e RIGHT join departments d
on e.dept_id = d.dept_id
GROUP BY d.dept_id
HAVING COUNT(e.emp_id) = 0

-- round 5

SELECT * from employees e LEFT join departments d
on e.dept_id = d.dept_id
UNION
SELECT * from employees e RIGHT join departments d
on e.dept_id = d.dept_id

SELECT e.emp_name, d.dept_name from employees e LEFT join departments d
on e.dept_id = d.dept_id
UNION
SELECT e.emp_name, d.dept_name from employees e RIGHT join departments d
on e.dept_id = d.dept_id

SELECT e.emp_name, d.dept_name from employees e LEFT join departments d
on e.dept_id = d.dept_id
WHERE d.dept_id is NULL
UNION
SELECT e.emp_name, d.dept_name from employees e RIGHT join departments d
on e.dept_id = d.dept_id
WHERE e.emp_id is NULL

SELECT * from projects

SELECT d.dept_name, p.project_name from departments d LEFT JOIN projects p
on p.dept_id = d.dept_id
WHERE p.project_id is NULL
UNION
SELECT d.dept_name,p.project_name from departments d RIGHT JOIN projects p
on p.dept_id = d.dept_id
WHERE d.dept_name is NULL

-- round 6

SELECT e.emp_name, m.emp_name
from employees e INNER join employees m
on e.emp_id = m.emp_id

SELECT e.emp_name, m.emp_name, e.salary, m.salary
from employees e INNER join employees m
on e.emp_id = m.emp_id

SELECT e.emp_name, m.emp_name, e.salary, m.salary
from employees e INNER join employees m
on e.emp_id = m.emp_id
WHERE e.salary > m.salary

SELECT e.emp_name, m.emp_name, e.salary, m.salary
from employees e INNER join employees m
on e.emp_id = m.emp_id
WHERE m.emp_name = "vikram"

SELECT e.emp_name, m.emp_name, e.salary, m.salary
from employees e LEFT join employees m
on e.emp_id = m.emp_id

SELECT e.emp_name, m.emp_name, e.salary, m.salary
from employees e INNER join employees m
on e.emp_id = m.emp_id
WHERE m.salary > 70000

SELECT  m.emp_name, COUNT(e.emp_id) as "report mem"
from employees e INNER join employees m
on m.emp_id = e.manager_id
GROUP BY m.emp_id

SELECT  m.emp_name, COUNT(e.emp_id) as "report mem"
from employees e INNER join employees m
on m.emp_id = e.manager_id 
GROUP BY m.emp_id
HAVING COUNT(e.emp_id) >= 2

-- round 7

SELECT * from departments d CROSS join projects p
on d.dept_id = p.dept_id

SELECT * from departments d CROSS join projects p
on d.location = "bangalore"

-- round 8

SELECT e.emp_name, d.dept_name, p.project_name
from employees e 
INNER join departments d
on e.dept_id = d.dept_id
INNER join employee_projects ep
on e.emp_id = ep.emp_id
INNER join projects p
on ep.project_id = p.project_id

SELECT e.emp_name, ep.role, p.project_name
from employees e 
inner join employee_projects ep
on e.emp_id = ep.emp_id
INNER join projects p
on ep.project_id = p.project_id

SELECT e.emp_name
from employees e INNER join employee_projects ep
on e.emp_id = ep.emp_id 
INNER join projects p
on ep.project_id = p.project_id and p.project_name = "E-commerce"

SELECT e.emp_name,d.dept_name
from employees e 
INNER join departments d
on e.dept_id = d.dept_id
INNER join employee_projects ep
on e.emp_id = ep.emp_id
INNER join projects p
on ep.project_id = p.project_id
WHERE d.dept_name = "IT"

SELECT * from projects

SELECT e.emp_name,d.dept_name,p.project_name,p.budget
from employees e INNER join departments d
on e.dept_id = d.dept_id
INNER JOIN employee_projects ep
on e.emp_id = ep.emp_id
INNER join projects p
on ep.project_id = p.project_id

SELECT p.project_name, COUNT(ep.emp_id)
from employees e INNER JOIN employee_projects ep
on e.emp_id = ep.emp_id
LEFT join projects p
on ep.project_id = p.project_id
GROUP BY p.project_name

SELECT p.project_name, COUNT(ep.emp_id) as "employee count"
from projects p
LEFT join employee_projects ep
on p.project_id = ep.project_id
GROUP BY p.project_id, p.project_name

SELECT p.project_name
from projects p
LEFT join employee_projects ep
on p.project_id = ep.project_id
WHERE ep.emp_id is NULL

SELECT e.emp_name
from employees e 
LEFT join employee_projects ep
on e.emp_id = ep.emp_id
WHERE ep.project_id is NULL

SELECT d.dept_name , COALESCE(SUM(p.budget),0)
from departments d 
left join projects p
on d.dept_id = p.dept_id
GROUP BY d.dept_id

SELECT d.dept_name , COALESCE(SUM(p.budget),0)
from departments d 
left join projects p
on d.dept_id = p.dept_id
GROUP BY d.dept_id
HAVING SUM(p.budget) > 400000

-- round 9

SELECT e.emp_name,m.emp_name , d.dept_name
from employees e INNER join employees m
on e.manager_id = m.emp_id
inner join departments d 
on e.dept_id = d.dept_id

SELECT e.emp_name, m.emp_name, p.project_name
from employees e
inner JOIN employees m
on e.manager_id = m.emp_id
INNER join employee_projects ep
on e.emp_id = ep.emp_id
inner join projects p
on ep.project_id = ep.project_id

SELECT e.emp_name, m.emp_name, p.project_name
from employees e
inner JOIN employees m
on e.manager_id = m.emp_id
inner join employee_projects ep1
on e.emp_id = ep1.emp_id
inner join employee_projects ep2
on m.emp_id = ep2.emp_id
INNER join projects p
on ep1.project_id = p.project_id

SELECT d.dept_name, COUNT(ep.emp_id), COUNT(p.project_id), SUM(p.budget)
from employees e inner join departments d 
on e.dept_id = d.dept_id
LEFT join employee_projects ep
on e.emp_id = ep.emp_id
inner JOIN projects p
on ep.project_id = p.project_id
GROUP BY d.dept_id, p.project_id

SELECT d.dept_name, e.emps, p.projcount,p.totals
from departments d
LEFT JOIN(
    SELECT dept_id , count(*) as emps from employees
    GROUP BY dept_id
) e
on d.dept_id = e.dept_id
LEFT JOIN(
    SELECT dept_id, COUNT(*) as projcount,
    SUM(budget) as totals
    from projects p
    GROUP BY dept_id
) p
on d.dept_id = p.dept_id

SELECT e.emp_name,m.emp_name,d.dept_name,p.project_name,p.budget,e.salary
from employees e LEFT join employees m
on e.manager_id = m.emp_id
left JOIN departments d 
on e.dept_id = d.dept_id
LEFT join employee_projects ep
on e.emp_id = ep.emp_id
LEFT JOIN projects p
on ep.project_id = p.project_id
ORDER BY d.dept_name, e.salary DESC