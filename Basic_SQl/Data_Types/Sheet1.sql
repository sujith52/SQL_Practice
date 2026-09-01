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

INSERT INTO student(s_id, name) VALUES (4, "vinitha")

SELECT name FROM student

SELECT name, age from student

SELECT gender, name, marks, dob from student

SELECT name 
FROM student

SELECT name from student WHERE name = "sujith"

SELECT name,s_id, gender from student WHERE name = "sujith"

SELECT name FROM student WHERE gender = "M"

SELECT name FROM student WHERE gender = "F"

SELECT name FROM student WHERE marks > 60

SELECT name from student where s_id = 1

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

DESC car

CREATE Table patients(
    p_id int primary key,
    name varchar(50),
    admision DATE,
    checkup datetime,
    bill DECIMAL(10,2)
)

insert INTO patients VALUES (1,"raju","2026-08-09", "2026-08-10 12:49:00", 150.36)

insert INTO patients VALUES (2,"gijigadu","2026-08-09", "2026-08-10 12:49:00", 150.36)

insert INTO patients VALUES (3,"suri","2026-08-09", "2026-08-10 12:49:00", 150.36)

select * from patients

show TABLES
