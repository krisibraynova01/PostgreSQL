SELECT 
CONCAT(m.mountain_range,' ',p.peak_name) AS "Mountain Information",
LENGTH(CONCAT(m.mountain_range,' ',p.peak_name)) AS "Character Length",
BIT_LENGTH(CONCAT(m.mountain_range,' ',p.peak_name)) AS "Bits of a String"
FROM mountains m 
JOIN peaks p 
ON m.id=p.mountain_id;
