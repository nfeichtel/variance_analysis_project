-- Monthly % breakdown of how the budget is allocated by category and how money is actually spent by category

-- April 2024
SELECT 
    month,
    category,
    SUM(actual_amount) actual_amount,
    ROUND(SUM(actual_amount) / (SELECT SUM(actual_amount) FROM q2_variance WHERE month = '2024-04-01') * 100, 2) percent_of_actual_spend,
    SUM(budget_amount) budget_amount,
    ROUND(SUM(budget_amount) / (SELECT SUM(budget_amount) FROM q2_variance WHERE month = '2024-04-01') * 100, 2) percent_of_budget_amount
FROM q2_variance
WHERE month = '2024-04-01'
GROUP BY 
    month,
    category
ORDER BY ROUND(SUM(actual_amount) / (SELECT SUM(actual_amount) FROM q2_variance WHERE month = '2024-04-01') * 100, 2) DESC;

-- May 2024
SELECT 
    month,
    category,
    SUM(actual_amount) actual_amount,
    ROUND(SUM(actual_amount) / (SELECT SUM(actual_amount) FROM q2_variance WHERE month = '2024-05-01') * 100, 2) percent_of_actual_spend,
    SUM(budget_amount) budget_amount,
    ROUND(SUM(budget_amount) / (SELECT SUM(budget_amount) FROM q2_variance WHERE month = '2024-05-01') * 100, 2) percent_of_budget_amount
FROM q2_variance
WHERE month = '2024-05-01'
GROUP BY 
    month,
    category
ORDER BY ROUND(SUM(actual_amount) / (SELECT SUM(actual_amount) FROM q2_variance WHERE month = '2024-05-01') * 100, 2) DESC;

-- June 2024
SELECT 
    month,
    category,
    SUM(actual_amount) actual_amount,
    ROUND(SUM(actual_amount) / (SELECT SUM(actual_amount) FROM q2_variance WHERE month = '2024-06-01') * 100, 2) percent_of_actual_spend,
    SUM(budget_amount) budget_amount,
    ROUND(SUM(budget_amount) / (SELECT SUM(budget_amount) FROM q2_variance WHERE month = '2024-06-01') * 100, 2) percent_of_budget_amount
FROM q2_variance
WHERE month = '2024-06-01'
GROUP BY 
    month,
    category
ORDER BY ROUND(SUM(actual_amount) / (SELECT SUM(actual_amount) FROM q2_variance WHERE month = '2024-06-01') * 100, 2) DESC;