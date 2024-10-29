-- Count of each transaction category and the amount of money spent per transaction

SELECT
    category,
    SUM(amount_usd) AS total_amount,
    COUNT(amount_usd) AS transaction_count,
    ROUND(SUM(amount_usd) / COUNT(amount_usd), 2) AS usd_per_transaction
FROM all_spending
WHERE transaction_date >= '2024-04-01'
    AND transaction_date < '2024-07-01'
GROUP BY category
ORDER BY ROUND(SUM(amount_usd) / COUNT(amount_usd), 2) DESC