SELECT e.employee_id,
CONCAT(e.first_name,' ',e.last_name) AS "full_name",
ep.project_id,
p.name AS "project_name"
FROM employees e
JOIN employees_projects ep
ON ep.employee_id = e.employee_id 
JOIN projects p ON p.project_id = ep.project_id
WHERE p.project_id=1;
