SELECT a.name,
CASE WHEN EXTRACT(HOUR FROM co.start) BETWEEN 6 AND 20 THEN 'Day'
    ELSE 'Night'
END AS "day_time",
co.bill,
cl.full_name,
ca.make,
ca.model,
c.name
FROM addresses AS a
JOIN courses AS co ON co.from_address_id = a.id
JOIN clients AS cl ON cl.id = co.client_id
JOIN cars AS ca ON co.car_id = ca.id
JOIN categories AS c ON ca.category_id = c.id
ORDER BY co.id