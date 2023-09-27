SELECT COUNT(*)
FROM countries C 
LEFT JOIN countries_rivers ON countries_rivers.country_code = C.country_code
where countries_rivers.river_id is null;