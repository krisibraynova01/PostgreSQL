SELECT magic_wand_creator,
MAX(deposit_amount) AS "Max Deposit Amount"
FROM wizard_deposits
GROUP BY magic_wand_creator
HAVING MAX(deposit_amount) NOT IN(20000,40000)
ORDER BY MAX(deposit_amount) DESC
LIMIT 3;
