-- Allows for viewing all transactions in Q2 2024, while filtering for the desired category
SELECT
    transaction_date,
    city,
    category,
    amount_usd,
    description,
    detailed_notes
FROM all_spending
WHERE transaction_date >= '2024-04-01'
    AND transaction_date < '2024-07-01'
    -- Filter for category below for detailed insights
    AND category = 'Transportation'