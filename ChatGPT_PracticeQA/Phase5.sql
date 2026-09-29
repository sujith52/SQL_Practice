SELECT * FROM students

drop Table students

CREATE Table students(
    student_id int primary KEY,
    student_name VARCHAR(80),
    email VARCHAR(100) UNIQUE,
    age INT
)

create table enroolments(
    student_id INT,
    course_id INT,
    enroll_date DATE,
    PRIMARY KEY(student_id,course_id)
)

create TABLE depart(
    dept_id int PRIMARY KEY,
    dep_name VARCHAR(50)
)

drop table students

CREATE Table students(
    student_id int PRIMARY KEY,
    student_name VARCHAR(50),
    dep_id INT,
    Foreign Key (dep_id) REFERENCES depart(dept_id)
)

insert into students VALUES
(101,"sujith",10)

-- round 2

create Table sts(
    id int PRIMARY KEY,
    name not NULL,
    email not null UNIQUE,
    age int check(age >= 18)
)

create TABLE employee(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(60),
    status DEFAULT 'active'
)

insert INTO sts VALUES
(101,"sujith","java"),
(101,"sujith","python")

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100)
);

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,

    PRIMARY KEY (student_id, course_id),

    FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

drop Table students

alter Table students add COLUMN email VARCHAR(50)

alter table students add COLUMN age int

alter Table students RENAME COLUMN student_name to full_name

alter Table students MODIFY COLUMN  email VARCHAR(100)

drop table students

CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(50),
    email VARCHAR(100)
);

alter Table students modify student_id int PRIMARY KEY

alter Table students MODIFY student_name varchar(50) not NULL

alter Table students MODIFY email VARCHAR(100) UNIQUE

create DATABASE college

use college

CREATE table departments(
    dep_id int PRIMARY KEY,
    dep_name VARCHAR(50)
)

create Table courses(
    courseid int PRIMARY key,
    course_name VARCHAR(100),
    dep_id INT,
    Foreign Key (dep_id) REFERENCES departments(dep_id)
)

create table teacher(
    teach_id int primary KEY,
    teach_name VARCHAR(50),
    course_id INT,
    Foreign Key (course_id) REFERENCES courses(courseid)
)

create table student(
    id int PRIMARY KEY,
    name VARCHAR(50)
)

