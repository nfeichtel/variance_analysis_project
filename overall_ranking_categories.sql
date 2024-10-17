SELECT
    category,
    SUM(variance_amount),
    RANK() OVER(PARTITION BY favorability ORDER BY ABS(SUM(variance_amount))DESC) AS variance_rank
FROM q2_variance
GROUP BY category, favorability;
