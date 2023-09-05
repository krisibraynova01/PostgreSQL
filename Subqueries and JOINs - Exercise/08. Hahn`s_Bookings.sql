SELECT COUNT(*)
FROM bookings
WHERE customer_id IN (
    SELECT customer_id
    FROM customers
    WHERE last_name LIKE '%Hahn'
);