CREATE OR REPLACE PROCEDURE sp_withdraw_money(
    account_id INT,
	money_amount NUMERIC(10,4)
)
AS $$
DECLARE current_balance NUMERIC;

BEGIN 

 SELECT balance INTO current_balance
    FROM accounts
    WHERE id = account_id;

IF (current_balance - money_amount) >= 0 THEN
UPDATE accounts
SET balance = balance - money_amount
WHERE id=account_id;
COMMIT;

ELSE
RAISE NOTICE 'Insufficient balance for withdrawal. Current balance: %', current_balance;
END IF;
END;
$$ LANGUAGE plpgsql;

CALL sp_withdraw_money(6, 5437.0000);

SELECT * FROM accounts
WHERE id = 6;
