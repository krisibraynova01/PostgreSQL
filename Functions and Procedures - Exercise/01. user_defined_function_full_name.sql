CREATE FUNCTION fn_full_name(first_name VARCHAR(20), last_name VARCHAR(20))
RETURNS VARCHAR
AS $$
BEGIN 
     RETURN INITCAP(CONCAT(first_name,' ',last_name));
END;
$$ LANGUAGE plpgsql;

