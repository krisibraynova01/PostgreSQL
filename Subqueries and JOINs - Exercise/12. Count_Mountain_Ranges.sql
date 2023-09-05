SELECT 
mc.country_code,
COUNT(m.mountain_range) AS "mountain_range_count"
FROM
(SELECT id,
mountain_range
FROM mountains) m
JOIN (
SELECT country_code, mountain_id 
FROM 
mountains_countries
WHERE country_code IN ('US','RU','BG')) mc
ON mc.mountain_id=m.id
GROUP BY mc.country_code 
ORDER BY "mountain_range_count" DESC;