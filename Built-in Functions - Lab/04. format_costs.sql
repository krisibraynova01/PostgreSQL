SELECT title,
CAST(cost AS DECIMAL(6,3)) AS "modified_price"
FROM books
ORDER BY id;