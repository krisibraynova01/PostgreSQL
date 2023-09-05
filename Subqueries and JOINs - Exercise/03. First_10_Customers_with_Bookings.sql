SELECT
b.booking_id AS "Booking ID",
CAST(b.starts_at as Date) AS "Start Date",
b.apartment_id AS "Apartment ID",
CONCAT(c.first_name,' ', c.last_name) AS "Customer Name"
FROM bookings b
RIGHT JOIN customers c
ON b.customer_id = c.customer_id
order by "Customer Name"
LIMIT 10;