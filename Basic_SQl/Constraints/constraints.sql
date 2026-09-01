CREATE Table institue (
    id INT PRIMARY KEY,
    name VARCHAR(15) not NULL,
    age int check(age >= 18),
    inst VARCHAR(50) DEFAULT "Kodnest"
)

INSERT INTO institue VALUES(1, "Sujith", 22,"")

INSERT INTO institue(id, name, age) VALUES (2, "Sreeja", 22),(3,"Latha",22)

INSERT INTO institue VALUES(4,"vinitha", 22, "Doctor")

SELECT * FROM institue


CREATE Table courses (
    c_id INT PRIMARY KEY,
    name VARCHAR(50),
    std_id INT,
    FOREIGN KEY (std_id) REFERENCES institue(id)
)

INSERT INTO courses VALUES(101,"Python",1)

INSERT INTO courses VALUES(102,"SQL",2)

INSERT INTO courses VALUES(105,"HTML",3)

SELECT * from courses

CREATE TABLE departments (
    dep_id int PRIMARY KEY,
    dep_name VARCHAR(50) not NULL
)

create table emp(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dep_id INT,
    Foreign Key (dep_id) REFERENCES departments(dep_id)
)

insert into departments VALUES (101, "CSE")

insert into departments VALUES (102,"ECE")

insert into emp VALUES(1,"Sujith",101)

insert into emp VALUES(2,"Sreeja",101)

insert into emp VALUES(3,"Latha",102)

SELECT * from emp

SELECT * FROM departments

CREATE table deps(
    dep_id int PRIMARY key,
    dep_name VARCHAR(20) not NULL,
    dep_loc VARCHAR(20) not NULL
)

insert INTO deps VALUES (1,"Sales","A-block"),
(2,"IT","B=block"), 
(3,"NON- IT", "C-bloock")

select * from deps

CREATE Table employ(
    id int primary key,
    name VARCHAR(30) not null,
    email VARCHAR(50) UNIQUE,
    dep_id int, 
    FOREIGN key (dep_id) REFERENCES deps(dep_id)
)

insert into employ VALUES (1,"sujith","sujith1368@proton.me",2),
(2,"sreeja","sreejachinni@proton.me",1),
(3,"latha","lathaTopper@proton.me",3)

SELECT *  from employ