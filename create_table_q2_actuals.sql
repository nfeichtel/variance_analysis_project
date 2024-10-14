--Creates the monthly view of 2nd quarter actual expenses
CREATE TABLE Q2_actuals AS
    WITH Q2_2024 AS 
    (
        SELECT *
        FROM all_spending
        WHERE 
            transaction_date >= '2024-04-01'
            AND transaction_date < '2024-07-01'
    ),

    Q2_actual AS
    (   
        SELECT
            DATE_TRUNC('month', transaction_date) AS actual_month,
            LOWER(category) AS actual_category,
            SUM(amount_usd) AS actual_amount
        FROM Q2_2024
        GROUP BY
            DATE_TRUNC('month', transaction_date),
            category
        ORDER BY
            actual_month,
            category
    )

    SELECT * FROM Q2_actual;