SELECT 
mc.country_code,
m.mountain_range,
p.peak_name,
p.elevation
FROM 
(SELECT mountain_id,
country_code
FROM mountains_countries
WHERE country_code='BG') mc
JOIN 
(SELECT mountain_range , id
FROM mountains) m
ON m.id=mc.mountain_id
JOIN(
SELECT peak_name,
elevation,
mountain_id
FROM peaks
WHERE elevation > 2835) p 
ON p.mountain_id=m.id
ORDER BY p.elevation DESC;
