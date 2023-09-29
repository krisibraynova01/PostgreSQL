CREATE OR REPLACE FUNCTION fn_cash_in_users_games(game_name VARCHAR(50))
RETURNS TABLE(total_cash NUMERIC)
AS $$
BEGIN 
RETURN QUERY
WITH ranked_rows AS ( 
SELECT cash,
	ROW_NUMBER() OVER (ORDER BY cash DESC) as "row_numb"
	FROM users_games 
	JOIN games AS g ON g.id = users_games.game_id
	WHERE g.name = game_name
)
SELECT ROUND(SUM(cash)::NUMERIC, 2) AS total_cash
    FROM ranked_rows
    WHERE row_numb % 2 <> 0;
END;
$$ LANGUAGE plpgsql;

SELECT fn_cash_in_users_games('Love in a mist');
SELECT fn_cash_in_users_games('Delphinium Pacific Giant');


