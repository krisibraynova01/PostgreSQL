SELECT b.booking_id AS "Booking ID",
a.name AS "Apartment Owner",
a.apartment_id AS "Apartment ID",
CONCAT(c.first_name,' ',c.last_name) AS "Customer Name"
FROM bookings b
FULL JOIN apartments a
ON b.booking_id=a.booking_id
FULL JOIN customers c
ON c.customer_id=b.customer_id
ORDER BY "Booking ID",
"Apartment Owner",
"Customer Name"
