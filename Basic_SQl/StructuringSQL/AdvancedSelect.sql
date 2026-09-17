show DATABASES

use sqlpractice

SELECT 4+5 as "end result"

SELECT ROUND(2022,-1)

CREATE Table ticketbook(
    booking_id int PRIMARY KEY,
    movie_name VARCHAR(60),
    show_date DATE,
    cust_name VARCHAR(60),
    num_tickets INT,
    ticket_price DECIMAL(10,2)
)

insert INTO ticketbook VALUES
(1,"Manam","2023-12-12","Nagarjuna",5,10.5),
(2,"OG","2023-03-12","Pawan kalyan",20,19.5),
(3,"Thoery of everything","2023-09-12","stepen hawking",3,5.5),
(4,"Fight club","2023-08-09","David fintcher",2,20.5)

SELECT * from ticketbook

SELECT *
from ticketbook
ORDER BY ticket_price DESC
LIMIT 1

SELECT movie_name,ticket_price from ticketbook
WHERE ticket_price = (SELECT MAX(ticket_price) from ticketbook)

SELECT MAX(ticket_price) as "higgest ticket amount" from ticketbook

SELECT * from ticketbook
WHERE num_tickets = (SELECT MIN(num_tickets) from ticketbook)

SELECT * from ticketbook
WHERE show_date = (SELECT show_date from ticketbook WHERE movie_name = "Fight Club")

SELECT * from ticketbook

INSERT into ticketbook VALUES
(5,"Ready player one","2023-08-09","steven staiberg",2,20.5)

SELECT movie_name, cust_name from ticketbook
WHERE num_tickets > (SELECT AVG(num_tickets) from ticketbook)

SELECT * from ticketbook
WHERE show_date = (SELECT booking_id from ticketbook WHERE movie_name = "Fight Club")
OR num_tickets = (SELECT num_tickets from ticketbook WHERE movie_name = "Fight Club")

create Table customers(
    id int PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
)

create Table orders(
    order_id int PRIMARY KEY,
    id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
)

insert INTO customers VALUES
(101,"sujith","sujith1368@proton.me"),
(102,"sreeja","sreejachinni@gmail.com"),
(103,"latha","latha@gmail.com")

INSERT INTO orders VALUES
(1,101,'2023-01-15',50.00),
(2,102,'2023-01-16',75.00),
(3,103,'2023-01-17',15.00),
(4,102,'2023-01-18',50.00),
(5,102,'2023-01-15',25.00),
(6,101,'2023-01-15',100.00)

SELECT * from customers

SELECT * from orders


SELECT id , name from customers
WHERE id in (SELECT id from orders WHERE total_amount > 
(SELECT AVG(total_amount) from orders
WHERE orders.id = customers.id))