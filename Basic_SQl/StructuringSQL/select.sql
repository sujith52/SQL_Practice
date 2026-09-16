-- select 

CREATE Table sales(
    sale_id int PRIMARY KEY,
    product_id int,
    sale_date DATE,
    quantity INT,
    unitprice DECIMAL(10,2),
    customerid int
)

insert INTO sales VALUES
(1,1,'2026-06-03',53,12,501)

select COUNT(quantity) as "total quantity" ,
SUM(quantity * unitprice) as "total revenue",
AVG(unitprice) as "avg unit price"
from sales
WHERE quantity > 10
GROUP BY product_id
ORDER BY AVG(unitprice)

CREATE Table sales_data(
    product_id int primary key,
    product_name VARCHAR(50),
    sale_date DATE,
    sale_amount DECIMAL(10,2),
    category varchar(50),
    customer_id int UNIQUE,
    customer_name VARCHAR(50)
)

select SUM(sale_amount) as "total sale amount"
from sales_data
WHERE YEAR(sales_data) = 2023
GROUP BY category
HAVING SUM(sale_amount) >= 1000
ORDER BY SUM(sale_amount) DESC

CREATE Table inventory(
    product_id int PRIMARY KEY,
    product_name varchar(50),
    quantity_in_stock INT,
    unit_price DECIMAL(10,2)
)

insert INTO inventory VALUES
(1,"Bajaj fan",5,6.32),
(2,"scocks",20,89.2),
(3,"laptop",12,100.56)

SELECT * from inventory

SELECT product_name, SUM(quantity_in_stock * unit_price) as total_value
from inventory
GROUP BY product_name
HAVING total_value >= 500
ORDER BY total_value DESC


CREATE Table employee_data(
    emp_id int PRIMARY KEY,
    emp_name VARCHAR(60),
    hire_date DATE,
    salary DECIMAL(10,2),
    department VARCHAR(50),
    position VARCHAR(80)
)

insert into employee_data VALUES
(1,"Sujith Kumar","2022-01-05",60000,"IT","developer"),
(2,"Sreeja","2023-01-05",80000,"IT","Database"),
(3,"Latha","2024-10-21",896523,"Cloud","Aws admin"),
(4,"vinitha","2019-09-19",500000,"IT","tester")

INSERT INTO employee_data VALUES
(5,"chandana","2019-09-19",400000,"Medicine Department","Slicer")

SELECT * from employee_data

SELECT department,position,emp_name, LENGTH(emp_name) as "emp length" , IF ((LENGTH(emp_name)> 10) , "Long","Short"),
IF(AVG(salary)<0,"No Data", AVG(salary))
from employee_data
GROUP BY department, position, emp_name
ORDER BY emp_name