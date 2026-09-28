-- 1 NF

CREATE Table stud(
    student_id INT,
    student_name VARCHAR(50),
    course_name VARCHAR(50)
)

insert into stud VALUES
(101,"sujith","Python"),
(101,"sujith","Sql"),
(102,"sreejas","Web development")

SELECT * from stud

-- 2nf

ALTER Table stud drop COLUMN course_name

create Table cour(
    student_id INT,
    course VARCHAR(50)
)

insert INTO cour VALUES
(101,"Python"),
(101,"SQL"),
(102,"Java")

SELECT DISTINCT s.student_id,s.student_name,c.course
from stud s INNER JOIN cour c
on s.student_id = c.student_id

-- 3nf

SELECT * FROM cour

ALTER Table cour RENAME COLUMN student_id to course_id

UPDATE cour SET course_id = 3 WHERE course="Java"

CREATE Table enrollment(
    student_id INT,
    course_id INT
)

INSERT INTO enrollment VALUES
(101,1),(101,2),(102,3)

SELECT * from enrollment