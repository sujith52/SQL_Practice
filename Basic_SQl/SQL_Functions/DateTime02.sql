-- mastering day , month, year, daytime !

SELECT * FROM passenger_booking

SELECT
passenger_name,
YEAR(booking_datetime) as "Year",
Month(booking_datetime) as "Month",
DAY(booking_datetime) as "Day",
TIME(booking_datetime) as "time "
from passenger_booking

SELECT passenger_name, booking_datetime
from passenger_booking
WHERE DAY(booking_datetime) BETWEEN 25 and 31

SELECT passenger_name,booking_datetime
from passenger_booking
WHERE MONTH(booking_datetime) BETWEEN 7 and 12

SELECT DAYNAME('2023-10-10')

SELECT DAYNAME('2019-09-09')

SELECT passenger_name
from passenger_booking
WHERE DAYNAME(booking_datetime) BETWEEN 'Saturday' and 'Sunday'

SELECT passenger_name
from passenger_booking
WHERE DAYNAME(booking_datetime) IN("Monday","Tuesday","Wednesday","Thursday")

SELECT DAYNAME(booking_datetime) from passenger_booking

SELECT MONTH(NOW())

SELECT YEAR(SYSDATE())

SELECT DATE_ADD(SYSDATE(), INTERVAL 3 YEAR)