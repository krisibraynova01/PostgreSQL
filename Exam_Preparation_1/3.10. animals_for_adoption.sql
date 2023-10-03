SELECT
    a.name AS "Animal Name",
    EXTRACT('YEAR' FROM a.birthdate ) AS "Birth Year",
    at.animal_type AS "Animal Type"
FROM animals AS a
JOIN animal_types at on at.id = a.animal_type_id
WHERE owner_id ISNULL
  AND
    at.animal_type != 'Birds'
    AND birthdate > '2022-01-01'::DATE - interval '5 years'
ORDER BY a.name;