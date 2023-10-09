DELETE FROM clients
WHERE LENGTH(full_name) > 3 
AND id NOT IN(SELECT client_id 
	 FROM courses AS c 
	 JOIN clients cl 
	 ON cl.id=c.client_id
	WHERE cl.id IS NOT NULL);