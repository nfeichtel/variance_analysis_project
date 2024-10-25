-- Variance breakdown by category by month

/* April 2024 Variance
Highest negative variance are accomodation, entertainment, and dining.
- Accommodation was difficult to predict in April due to variable travel and non-budgeted booking fees
*/
SELECT 
    month,
    category,
    SUM(variance_amount),
    ROUND(SUM(variance_amount) /
        (SELECT SUM(budget_amount) FROM q2_variance WHERE month = '2024-04-01')  * 100, 2) AS variance_percentage
FROM q2_variance
WHERE month = '2024-04-01'
GROUP BY month, category
ORDER BY
    month,
    SUM(variance_amount);


SELECT 
    month,
    category,
    SUM(variance_amount),
    ROUND(SUM(variance_amount) / 
        (SELECT SUM(budget_amount) FROM q2_variance WHERE month = '2024-05-01')  * 100, 2) AS variance_percentage
FROM q2_variance
WHERE month = '2024-05-01'
GROUP BY month, category
ORDER BY
    month,
    SUM(variance_amount);


SELECT 
    month,
    category,
    SUM(variance_amount),
    ROUND(SUM(variance_amount) / 
        (SELECT SUM(budget_amount) FROM q2_variance WHERE month = '2024-06-01')  * 100, 2) AS variance_percentage
FROM q2_variance
WHERE month = '2024-06-01'
GROUP BY month, category
ORDER BY SUM(variance_amount);