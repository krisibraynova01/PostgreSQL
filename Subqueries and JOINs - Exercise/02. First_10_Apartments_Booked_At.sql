SELECT 
a.name AS "Name",
a.country AS "Country",
CAST(b.booked_at AS Date) AS "Booked at"
FROM apartments a
LEFT JOIN bookings b
ON a.booking_id=b.booking_id
LIMIT 10;