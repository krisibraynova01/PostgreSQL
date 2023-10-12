SELECT b.id,
        
b.name,
        
b.release_year,
        
c.name AS "category_name"
FROM board_games AS b
JOIN categories AS c
    ON c.id = b.category_id
WHERE c.name LIKE '%Strategy Games%'
        OR c.name LIKE '%Wargames%'
ORDER BY b.release_year DESC;
