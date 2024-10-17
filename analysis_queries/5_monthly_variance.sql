SELECT 
    month,
    SUM(variance_amount) AS monthly_variance,
    ROUND(SUM(variance_amount)/sum(budget_amount) * 100, 2) AS monthly_variance_percent,
    CASE 
        WHEN SUM(variance_amount) < 0 THEN 'unfavorable'
        WHEN SUM(variance_amount) > 0 THEN 'favorable'
        ELSE 'no variance'
        END AS monthly_favorability
FROM q2_variance
GROUP BY month
ORDER BY month
