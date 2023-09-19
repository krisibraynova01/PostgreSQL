CREATE VIEW view_continents_countries_currencies_details AS
SELECT CONCAT(co.continent_name,': ',co.continent_code) AS "Continent Details",
CONCAT(c.country_name,' - ', c.capital, ' - ', c.area_in_sq_km, ' - ', 'km2') AS "Country Information",
CONCAT(cu.description, ' (', cu.currency_code, ')') AS "Currencies" 
FROM continents as co
JOIN countries as c 
ON co.continent_code = c.continent_code
JOIN currencies as cu
ON c.currency_code = cu.currency_code
ORDER BY "Country Information","Currencies";