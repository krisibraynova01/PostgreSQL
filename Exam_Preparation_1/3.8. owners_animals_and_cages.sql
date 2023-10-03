SELECT 
CONCAT(o.name, ' - ', a.name) AS "Owners - Animals",
o.phone_number AS "Phone Number",
c.cage_id AS "Cage ID"
FROM owners AS o
JOIN animals AS a ON a.owner_id = o.id
JOIN animal_types AS at ON at.id = a.animal_type_id
JOIN animals_cages AS c ON c.animal_id = a.id
WHERE at.animal_type = 'Mammals'
ORDER BY o.name,
a.name DESC;

