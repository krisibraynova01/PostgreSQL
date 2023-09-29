CREATE FUNCTION fn_calculate_future_value(
	initial_sum NUMERIC,
    yearly_interest_rate NUMERIC,
    number_of_years NUMERIC
)
RETURNS NUMERIC
AS $$
DECLARE 
future_value NUMERIC;
BEGIN
future_value := initial_sum * POWER(1 + yearly_interest_rate,number_of_years);
RETURN ROUND(future_value,4);
END;
$$
LANGUAGE plpgsql;

SELECT fn_calculate_future_value (1000, 0.1, 5);
SELECT fn_calculate_future_value(2500, 0.30, 2);
SELECT fn_calculate_future_value(500, 0.25, 10);


