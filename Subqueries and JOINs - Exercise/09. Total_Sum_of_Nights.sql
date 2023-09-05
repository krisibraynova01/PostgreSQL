SELECT 
a.name,
SUM(b.booked_for) AS "sum"
FROM apartments a
JOIN bookings b
ON a.apartment_id=b.apartment_id
GROUP BY a.name
ORDER BY a.name;