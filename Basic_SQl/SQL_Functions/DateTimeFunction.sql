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

