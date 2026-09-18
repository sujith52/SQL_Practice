SELECT * from customers

INSERT INTO customers VALUES
(104,"vinitha","vinitha9663@proton.me")

SELECT * from orders

SELECT id, name from customers
WHERE id in (SELECT id from orders)

SELECT DISTINCT customers.id from customers, orders
WHERE orders.id = customers.id

select * from table1,table2
WHERE table1.B = table2.B

SELECT DISTINCT * from customers, orders
WHERE customers.id > orders.total_amount

SELECT * from customers INNER JOIN orders
WHERE customers.id = orders.id

CREATE Table table1(
    A int,
    B int
)

CREATE Table table2(
    B int,
    C int
)

drop Table table2

INSERT INTO table1 VALUES
(1,2),(3,4),(5,6),(7,8)

INSERT INTO table2 VALUES
(4,1),(3,1),(8,1)

SELECT * FROM table1

SELECT * from table1 INNER join table2 
on table1.B = table2.B

SELECT * from table1 NATURAL JOIN table2 

SELECT * from table1 LEFT JOIN table2 
on table1.b = table2.b

SELECT * from table1 RIGHT JOIN table2 
on table1.b = table2.b

-- SELECT * from table1 FULL JOIN table2 on table1.B = table2.B
-- in oracle ot on mysql

SELECT * from table1 LEFT JOIN table2 
on table1.b = table2.b
UNION
SELECT * from table1 RIGHT JOIN table2 
on table1.b = table2.b

SELECT * from table1 CROSS JOIN table2

SELECT * from table1,table2

SELECT t1.`B` from table1 t1 join table1 ta1 on t1.`A` = ta1.`B`

SELECT t1.`B` from table1 t1 ,table1 ta1 WHERE t1.`B` = ta1.`A`

