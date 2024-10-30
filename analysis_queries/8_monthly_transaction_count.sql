-- Count of each transaction category each month and the amount of money spent per transaction
-- Cost per dining transaction between 5 to 15 usd more than price per groceries each month
-- April can generally be seen as an outler for many

SELECT
    DATE_TRUNC('month', transaction_date),
    category,
    SUM(amount_usd) AS total_amount,
    COUNT(amount_usd) AS transaction_count,
    ROUND(SUM(amount_usd) / COUNT(amount_usd), 2) AS usd_per_transaction
FROM all_spending
WHERE transaction_date >= '2024-04-01'
    AND transaction_date < '2024-07-01'
GROUP BY 
    DATE_TRUNC('month', transaction_date), 
    category
ORDER BY
    category,
    DATE_TRUNC('month', transaction_date) 

