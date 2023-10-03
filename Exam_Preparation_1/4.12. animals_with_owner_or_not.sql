CREATE OR REPLACE PROCEDURE sp_animals_with_owners_or_not (
    IN animal_name VARCHAR(30),
	OUT result TEXT )
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT
        CASE
            WHEN o.name ISNULL THEN 'For adoption'
            ELSE o.name
        END
    INTO result FROM animals AS a
    LEFT JOIN owners o on a.owner_id = o.id
    WHERE a.name ILIKE animal_name;
END
$$ ;