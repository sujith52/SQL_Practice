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