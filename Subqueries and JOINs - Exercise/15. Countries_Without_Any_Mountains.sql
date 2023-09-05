SELECT COUNT(*) AS "countries_without_mountains"
FROM countries
WHERE country_code NOT IN 
(SELECT country_code FROM mountains_countries);