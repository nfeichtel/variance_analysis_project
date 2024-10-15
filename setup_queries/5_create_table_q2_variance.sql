--Create the 2nd quarter variance table
CREATE TABLE q2_variance AS
    WITH q2_budget AS 
    (   
        SELECT
            DATE_TRUNC('month', budget_date) AS budget_month,
            category AS budget_category,
            budget_amount 
        FROM budget
        WHERE DATE_TRUNC('month', budget_date) < '2024-07-01'
        ORDER BY
            budget_month,
            category
    )

    SELECT 
        budget_month AS month,
        budget_category AS category,
        budget_amount,
        actual_amount,
        budget_amount - actual_amount AS variance_amount,
        CASE
            WHEN budget_amount = 0 AND actual_amount = 0 THEN NULL
            ELSE ROUND(((budget_amount - actual_amount)/budget_amount) * 100, 2) 
            END AS variance_percentage,
        CASE 
            WHEN budget_amount - actual_amount < 0 THEN 'unfavorable'
            WHEN budget_amount - actual_amount > 0 THEN 'favorable'
            ELSE NULL
            END AS favorability
    FROM q2_budget b
    FULL OUTER JOIN q2_actuals a
        ON b.budget_month = a.actual_month
        AND b.budget_category = a.actual_category;