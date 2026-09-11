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

select SUM(sale_amount) as "sale amount"
from sales_data
GROUP BY category
HAVING sale_date = 2023

