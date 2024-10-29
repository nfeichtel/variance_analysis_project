-- Highest and lowest total Q2 2024 variances and %variances by category

SELECT 
    category,
    SUM(variance_amount) AS total_variance,
    ROUND(SUM(variance_amount)/SUM(budget_amount) * 100, 2) AS percent_variance
FROM q2_variance
GROUP BY category
ORDER BY ROUND(SUM(variance_amount)/SUM(budget_amount) * 100, 2)