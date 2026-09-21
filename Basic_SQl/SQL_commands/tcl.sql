CREATE Table bankaccounts(
    account_number int PRIMARY key AUTO_INCREMENT,
    user_name VARCHAR(100),
    password VARCHAR(150),
    balance INT
)

insert into bankaccounts VALUES
(1004,"sujith","sujith123",50000),
(1005,"sreeja","chinni123",694563),
(1006,"latha","alluarjun120",548966)

SELECT * from bankaccounts

UPDATE bankaccounts set balance = balance - 10000
WHERE user_name="sreeja"

UPDATE bankaccounts set balance = balance + 10000
WHERE user_name= "sujith"

set AUTOCOMMIT = 0

UPDATE bankaccounts set balance = balance + 1044
WHERE user_name= "sujith"

ROLLBACK

COMMIT

INSERT INTO bankaccounts VALUES(1007,"chandana","topper123",400000)

INSERT INTO bankaccounts VALUES(1008,"vinitha","vinitha9663",800000)

SAVEPOINT firstpoint

COMMIT

SELECT * FROM bankaccounts

INSERT INTO bankaccounts VALUES(1009,"sabeha","sabeha123",800000)

INSERT INTO bankaccounts VALUES(1010,"rashmi","rashmi123",900000)

SELECT * from bankaccounts

ROLLBACK to firstpoint

CREATE Table patients_details(
    pat_id int PRIMARY KEY AUTO_INCREMENT,
    pat_name VARCHAR(200) not NULL
)

start TRANSACTION

insert INTO patients_details(pat_name) VALUES
("pawan kalyan"),
("allu arjun"),
("uday kiran")

SAVEPOINT firstman

SELECT * from patients_details

INSERT INTO patients_details(pat_name) VALUES
("chiranhevi"),
("nag mama")

ROLLBACK to firstman

COMMIT

START TRANSACTION

SAVEPOINT udaybro

INSERT INTO patients_details(pat_name)
VALUES  ("chiranhevi")

SELECT * from patients_details

ROLLBACK to udaybro