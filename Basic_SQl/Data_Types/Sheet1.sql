-- Active: 1780563775622@@127.0.0.1@3306@sqlpractice
CREATE DATABASE sqlpractice

use sqlpractice

SELECT DATABASE()

CREATE Table student(
    s_id INT,
    name VARCHAR(15),
    age INT,
    gender CHAR(1),
    marks FLOAT,
    dob DATE
)

INSERT INTO student VALUES(1, "sujith", 22, "M", 75.5, "2004-06-07")

INSERT INTO student VALUES(2, "sreeja", 22, "F", 90.5, "2000-01-01")

INSERT INTO student VALUES(3, "latha", 22, "F", 90.5, "2000-01-01")

SELECT * FROM student

CREATE Table car(
    car_id INT PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(50),
    year YEAR,
    price DECIMAL(10,2),
    produced TIMESTAMP
)

INSERT INTO car VALUES(1,"Tata","sumo",2022, 150000.00, '2026-08-10 18:08:00')

SELECT * FROM car

INSERT INTO car VALUES(2,"toyato","corolla",2021, 130000.00, '2026-08-10 18:08:00')

INSERT INTO car VALUES(3,"frod","f1 car",2019, 300000.00, '2026-08-10 18:08:00')

SELECT * FROM car

