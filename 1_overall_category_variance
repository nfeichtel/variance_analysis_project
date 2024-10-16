--Highest and lowest total Q2 2024 variances by category
SELECT 
    category,
    SUM(variance_amount) AS total_variance
FROM q2_variance
GROUP BY category
ORDER BY SUM(variance_amount)