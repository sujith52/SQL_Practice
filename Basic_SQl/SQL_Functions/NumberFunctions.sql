
-- number functions 

CREATE Table product(
    product_id int primary key,
    product_name varchar(50),
    product_price DECIMAL(10,5)
)

drop TABLE product

desc product

insert into product VALUES
(1,"Laptop",999.93645),
(2,"smartphones",896.8652),
(3,"headphones",4862.83435),
(4,"keyboard",826.8925),
(5,"moniter",788.1235),
(6,"mouse",452.8641)

SELECT * from product

SELECT product_id,product_name from product
WHERE MOD(product_id,2)=1

SELECT product_id from product
WHERE MOD(product_id,2)=0

SELECT product_price from product
WHERE MOD(product_price,2)=0

SELECT MOD(123,2)

SELECT MOD(140,5)

SELECT product_name,
ABS(product_price) as "Absolute price" 
from product

SELECT ABS(-55.5)

SELECT MOD(product_price,2) as "remainder" from product

SELECT mod(17,5)

-- round function in sql

SELECT  product_name, ROUND(product_price)
from product

SELECT product_name, ROUND(product_price,1) as "Rounded price"
from product

SELECT * FROM product

SELECT product_name, ROUND(product_price,-2) as "near 100"
FROM product

SELECT ROUND(44.3989,2)

SELECT ROUND(1234.657,-2)

SELECT product_name, TRUNCATE(product_price,2)
from product

SELECT product_name, TRUNCATE(product_price,1) as "truncated price"
from product

SELECT TRUNCATE(123.456,2)

SELECT TRUNCATE(1234.567,-2)

SELECT TRUNCATE(123.456,0)

