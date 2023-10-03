SELECT v.name AS "volunteers",
v.phone_number,
TRIM(SUBSTRING(v.address,POSITION(',' in v.address)+1)) AS "Address"
FROM volunteers AS v
JOIN volunteers_departments AS vd ON vd.id = v.department_id
WHERE address LIKE '%Sofia%'
AND vd.department_name = 'Education program assistant'
ORDER BY v.name;