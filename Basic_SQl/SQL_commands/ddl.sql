-- Active: 1780563775622@@127.0.0.1@3306@sqlpractice

CREATE Table library(
    book_id int PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) not NULL,
    author VARCHAR(255) not NULL,
    publication_year INT(4),
    genre VARCHAR(50)
)

insert INTO library(title,author,publication_year,genre) VALUES
('The life of sreeja','sujith',2026,'eternal sadness'),
('the confusion mist in lathas heart','sujith',2023,'escape matrix')

SELECT *from library

ALTER Table library add price DECIMAL(10,2)

ALTER Table library RENAME COLUMN genre to book_genre

alter TABLE library DROP COLUMN price

alter Table library MODIFY COLUMN publication_year VARCHAR(4)

desc library

ALTER Table library add constraint unique_constraint  UNIQUE (author, title)

alter Table library RENAME book_library

SELECT * from book_library

ALTER Table book_library DROP COLUMN book_genre

-- dml 

CREATE Table office(
    office_id int PRIMARY KEY AUTO_INCREMENT,
    office_name VARCHAR(100),
    location VARCHAR(100),
    employee_count int 
)

drop Table office

INSERT INTO office(office_name,location,employee_count) VALUES
("genpact","btm layout",40),
("google","marthalli",150)

SELECT * from office

UPDATE office SET location = "kormangla" WHERE office_id = 2

DELETE from office WHERE office_id = 2

