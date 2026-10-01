CREATE table city(
    id int PRIMARY KEY,
    name VARCHAR(50),
    country_code VARCHAR(20),
    district VARCHAR(50),
    population INT
)

INSERT INTO city VALUES
(1,"madanapalle","517325","annamayya",100000)

SELECT * FROM city

SELECT * FROM city
WHERE LEFT(name,1) in ('a','b','c')

SELECT CONCAT("the ",UPPER(name), " is in ",LOWER(district)) FROM city

