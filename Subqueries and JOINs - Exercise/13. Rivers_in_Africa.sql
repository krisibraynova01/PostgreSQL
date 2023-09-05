SELECT c.country_name, r.river_name
FROM rivers r
LEFT JOIN countries_rivers cr ON cr.river_id=r.id
RIGHT JOIN countries c ON cr.country_code = c.country_code
WHERE c.continent_code = 'AF'
ORDER BY c.country_name
LIMIT 5;