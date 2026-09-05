
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

SELECT * from product

SELECT product_name, POWER(product_price,2)
from product

SELECT product_name, POW(product_price,2)
from product

SELECT product_name, pow(product_price,3) as "Cube of price"
from product

SELECT POWER(3.14,2) as "square of PI"

SELECT SQRT(product_price) as "Square root of price"
from product

SELECT SQRT(25) as "sqrt of 25"

SELECT POW(5,3)

SELECT POW(3,4)

SELECT POW(5,-2)

SELECT SQRT(144) + POW(2,4) as "result"

SELECT SQRT(81) + pow(3,3)

SELECT product_name, product_price, CEIL(product_price) as "celing product price"
from product

SELECT CEIL(5.1)

SELECT product_name, product_price, FLOOR(product_price)
as "Product price from floor"
from product

SELECT FLOOR(7.1)

SELECT product_name, FLOOR(SQRT(product_price))
from product