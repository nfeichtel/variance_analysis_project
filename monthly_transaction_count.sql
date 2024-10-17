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
    DATE_TRUNC('month', transaction_date), 
    category

-- cost per dining transaction almost 10 usd more than price per groceries