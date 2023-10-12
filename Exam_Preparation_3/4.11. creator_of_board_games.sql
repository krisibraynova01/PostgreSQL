CREATE
        OR REPLACE FUNCTION fn_creator_with_board_games(
	IN first_name_of_a_board_game_creatOR VARCHAR(30),
        
	OUT total_games INT
 )
AS
$$
BEGIN
 total_games := (SELECT COUNT(c.id)
					
    FROM creators AS c
				JOIN creators_board_games AS cbg 
ON cbg.creator_id = c.id
JOIN board_games AS bg

    ON bg.id = cbg.board_game_id	
	WHERE first_name_of_a_board_game_creatOR = c.first_name);
END;
$$
LANGUAGE plpgsql;
