--Overall variance for 2nd Quarter of 2024
SELECT
    SUM(budget_amount) AS total_budget_amount,
    SUM(actual_amount) AS total_actual_amount,
    SUM(variance_amount)  AS total_variance_amount,
    ROUND(SUM(variance_amount) / SUM(budget_amount) * 100, 2) AS total_variance_percent,
    CASE 
        WHEN SUM(variance_amount) < 0 THEN 'unfavorable'
        WHEN SUM(variance_amount) > 0 THEN 'favorable'
        ELSE NULL
        END AS favorability
FROM q2_variance
