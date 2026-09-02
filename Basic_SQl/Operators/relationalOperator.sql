show tables

CREATE Table course_tab(
    course_id int PRIMARY KEY,
    course_name VARCHAR(50),
    course_fee int 
)

create table students(
    student_id int primary key,
    student_name varchar(50),
    course_id int,
    Foreign Key (course_id) REFERENCES course_tab(course_id)
)

insert INTO course_tab VALUES
(101,"Data Science", 60000),
(102,"Computer science", 50000),
(103,"computer vision", 80000),
(104,"Data analytics", 40000)


insert INTO students VALUES
(11,"sujith",101),
(12,"sreeja",102),
(13,"latha",103),
(14,"vinitha",104),
(15,"chandana",103)

SELECT * from students

SELECT * from course_tab

SELECT course_name from course_tab WHERE
course_fee > 75000

SELECT course_name from course_tab WHERE
course_fee >= 60000

SELECT course_name as "Course Name :"
from course_tab WHERE course_fee <= 60000

SELECT student_id, student_name from students
where course_id = 103

SELECT student_id, student_name from students
where course_id != 101

SELECT student_id, student_name from students
where course_id <> 103


