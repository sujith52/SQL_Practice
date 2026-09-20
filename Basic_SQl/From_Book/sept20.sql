-- Active: 1780563775622@@127.0.0.1@3306@ecom
CREATE DATABASE ecom

use ecom

SHOW DATABASES

CREATE TABLE customers(
    cust_id int PRIMARY key AUTO_INCREMENT,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    email VARCHAR(100) UNIQUE
)

create Table products(
    product_id INT PRIMARY key AUTO_INCREMENT,
    name VARCHAR(100),
    price DECIMAL(10,2)
)

create Table orders(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    cust_id int,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Foreign Key (cust_id) REFERENCES customers(cust_id)
)

create Table orderitems(
    orderitemid int PRIMARY KEY AUTO_INCREMENT,
    orderid INT,
    productid INT,
    quantity INT,
    Foreign Key (orderid) REFERENCES orders(order_id),
    FOREIGN KEY (productid) references products(product_id)
)

insert INTO customers(firstname,lastname,email) VALUES
('sujith','gavathakatla','sujith1368@proton.me'),
('sreeja','v','sreeja@gmail.com'),
('latha','b','latha@gmail.com')

INSERT INTO products (name,price) VALUES
('laptop',999.99),
('smartphone oppo',589.63)

INSERT INTO orders(cust_id)
VALUES(1),(2)

INSERT INTO orderitems(orderid,productid,quantity) VALUES
(1,1,2),
(2,2,5)

SELECT * from customers

SELECT * FROM orders

SELECT * from products

SELECT * from orderitems

UPDATE products SET price = 1099
WHERE product_id = 1

INSERT into customers(firstname,lastname,email) VALUE
("pawan","kalyan","pawankalyan@gmail.com")

DELETE from customers
WHERE cust_id = 5

CREATE Table salaries(
    empid INT(10) PRIMARY KEY AUTO_INCREMENT,
    salary DECIMAL(10,2) not NULL,
    check (salary > 0 and salary < 100000)
)

drop Table salaries

INSERT INTO salaries(salary) VALUES
(50000)

INSERT INTO salaries(salary) VALUES
(150000)

alter Table salaries add name VARCHAR(100) not NULL

select * from salaries

UPDATE salaries SET name = "sujith"
WHERE empid = 1

ALTER TABLE salaries CHANGE COLUMN name empname VARCHAR(80)

SELECT * from salaries

ALTER Table salaries MODIFY COLUMN salary INT

