SELECT LEFT(first_name,2) AS "initials",
COUNT(LEFT(first_name,2)) AS "user_count"
FROM users
GROUP BY LEFT(first_name,2)
ORDER BY user_count DESC, initials;