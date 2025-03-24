SELECT item AS item, cash_in AS RECEIVE, cash_out AS PAY
FROM cashbook AS MONEYBOOK
WHERE item = '給料'