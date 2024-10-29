-- Overall % breakdown of how the budget is allocated by category and how money is actually spent by category

SELECT 
    category,
    SUM(actual_amount) actual_amount,
    ROUND(SUM(actual_amount) / (SELECT SUM(actual_amount) FROM q2_variance) * 100, 2) percent_of_actual_spend,
    SUM(budget_amount) budget_amount,
    ROUND(SUM(budget_amount) / (SELECT SUM(budget_amount) FROM q2_variance) * 100, 2) percent_of_budget_amount
FROM q2_variance
GROUP BY category
ORDER BY ROUND(SUM(actual_amount) / (SELECT SUM(actual_amount) FROM q2_variance) * 100, 2) DESC