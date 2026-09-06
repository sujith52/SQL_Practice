-- date and time 

SELECT * from drives

SELECT SYSDATE()

SELECT LOCALTIME()

SELECT NOW()

SELECT CURRENT_DATE()

SELECT CURRENT_TIME()

SELECT CURDATE()

SELECT CURRENT_TIME()

CREATE TABLE passenger_booking (
    passenger_id INT PRIMARY KEY,
    passenger_name VARCHAR(100),
    passenger_email VARCHAR(150),
    ticket_number VARCHAR(20),
    booking_datetime DATETIME,
    booking_status VARCHAR(20)
);

INSERT INTO passenger_booking
VALUES
(1, 'John Doe', 'john.doe@example.com', 'T12345', '2023-10-23 10:30:00', 'Confirmed'),
(2, 'Alice Johnson', 'alice.johnson@example.com', 'T12346', '2023-10-24 14:15:00', 'Pending'),
(3, 'Bob Smith', 'bob.smith@example.com', 'T12347', '2023-10-25 11:45:00', 'Confirmed'),
(4, 'Emily Davis', 'emily.davis@example.com', 'T12348', '2023-10-26 16:20:00', 'Pending'),
(5, 'Michael Brown', 'michael.brown@example.com', 'T12349', '2023-10-27 08:40:00', 'Confirmed'),
(6, 'Olivia Rodriguez', 'olivia.rodriguez@example.com', 'T12358', '2023-10-28 17:55:00', 'Confirmed'),
(7, 'Elijah Martinez', 'elijah.martinez@example.com', 'T12359', '2023-10-29 09:10:00', 'Pending'),
(8, 'Charlotte Lee', 'charlotte.lee@example.com', 'T12360', '2023-10-30 15:30:00', 'Confirmed');

SELECT * FROM passenger_booking

SELECT passenger_name,booking_datetime
from passenger_booking
WHERE booking_datetime > SYSDATE()

INSERT INTO passenger_booking VALUES
(9, 'sujith Dark', 'john.doe@example.com', 'T12385', '2026-10-23 10:30:00', 'Confirmed')

SELECT passenger_name, passenger_email
FROM passenger_booking
WHERE booking_datetime > SYSDATE()

SELECT SYSDATE() as "right now date"

SELECT NOW() as "now date"

SELECT 
TIMESTAMPDIFF(YEAR,'2026-09-06','2027-08-09') as "Year difference",
TIMESTAMPDIFF(MONTH,'2026-09-06','2027-08-09') as "month difference",
TIMESTAMPDIFF(day,'2026-09-06','2027-08-09') as "day difference"

SELECT
TIMESTAMPDIFF(YEAR,'2023-10-11','2024-10-11') as "year differences bro",
TIMESTAMPDIFF(MONTH,'2023-10-11','2024-10-11') as "month differences bro",
TIMESTAMPDIFF(DAY,'2023-10-11','2024-10-11') as " day differences bro"

SELECT
TIMESTAMPDIFF(HOUR,"2023-10-10 12:10:10","2023-10-11 12:10:10") as "hour diff",
TIMESTAMPDIFF(MINUTE,"2023-10-10 12:10:10","2023-10-11 12:10:10") as "min diff",
TIMESTAMPDIFF(SECOND,"2023-10-10 12:10:10","2023-10-11 12:10:10") as "sec diff"

SELECT * from passenger_booking

SELECT
TIMESTAMPDIFF(DAY,booking_datetime,SYSDATE()) as "remmaining days" 
from passenger_booking

SELECT
DATE_ADD('2023-10-11 12:03:10', INTERVAL 4 HOUR)
as "added 4 hours to it "

SELECT
DATE_SUB('2023-10-11 12:04:10', INTERVAL 3 HOUR)
as "removed 3 hours bro !"

SELECT
date_add('2023-10-11 12:01:01', INTERVAL 10 SECOND)
as "added the 10 sec for the date",
DATE_ADD('2023-10-11 12:01:01', interval 5 MINUTE)
as " added the 5 mins "

SELECT
DATE_ADD('2023-10-10', interval 3 DAY) as "added 3 days",
DATE_ADD('2023-10-10', interval 5 MONTH) as "added 5 month",
DATE_ADD('2023-10-10', interval 2 YEAR) as "added 2 years"

SELECT
passenger_name, booking_datetime
from passenger_booking
WHERE TIMESTAMPDIFF(day,booking_datetime,SYSDATE()) > 16

SELECT
passenger_name, booking_datetime
from passenger_booking
WHERE DATE_ADD(booking_datetime, INTERVAL 16 day) = SYSDATE()

SELECT DATE(booking_datetime) from passenger_booking

SELECT TIME(booking_datetime) from passenger_booking

SELECT date_add('2023-01-01', INTERVAL -3 DAY)

select DATE_ADD('2023-11-11',interval -3 YEAR)

