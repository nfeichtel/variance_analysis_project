-- Full view of monthly spend and transaction count

-- April 2024
WITH month_cat_var AS (
    SELECT 
        month,
        category,
        SUM(variance_amount) AS monthly_variance,
        ROUND(SUM(variance_amount) /
            (SELECT SUM(budget_amount) FROM q2_variance WHERE month = '2024-04-01')  * 100, 2) AS variance_percentage
    FROM q2_variance
    WHERE month = '2024-04-01'
    GROUP BY month, category
    ORDER BY
        month,
        SUM(variance_amount)),
    
    monthly_trans_count AS (
    SELECT
        DATE_TRUNC('month', transaction_date) AS month,
        LOWER(category) AS category,
        SUM(amount_usd) AS total_amount,
        COUNT(amount_usd) AS transaction_count,
        ROUND(SUM(amount_usd) / COUNT(amount_usd), 2) AS usd_per_transaction
    FROM all_spending
    WHERE transaction_date >= '2024-04-01'
        AND transaction_date < '2024-07-01'
    GROUP BY 
        DATE_TRUNC('month', transaction_date), 
        category
    ORDER BY
        category,
        DATE_TRUNC('month', transaction_date)
    )

SELECT
    month_cat_var.month,
    month_cat_var.category,
    monthly_trans_count.total_amount AS actual_spend,
    month_cat_var.monthly_variance,
    month_cat_var.variance_percentage,
    monthly_trans_count.transaction_count,
    monthly_trans_count.usd_per_transaction
FROM monthly_trans_count
RIGHT JOIN month_cat_var
    ON month_cat_var.month = monthly_trans_count.month
    AND month_cat_var.category = monthly_trans_count.category
ORDER BY monthly_trans_count.transaction_count DESC;


-- May 2024
WITH month_cat_var AS (
    SELECT 
        month,
        category,
        SUM(variance_amount) AS monthly_variance,
        ROUND(SUM(variance_amount) /
            (SELECT SUM(budget_amount) FROM q2_variance WHERE month = '2024-05-01')  * 100, 2) AS variance_percentage
    FROM q2_variance
    WHERE month = '2024-05-01'
    GROUP BY month, category
    ORDER BY
        month,
        SUM(variance_amount)),
    
    monthly_trans_count AS (
    SELECT
        DATE_TRUNC('month', transaction_date) AS month,
        LOWER(category) AS category,
        SUM(amount_usd) AS total_amount,
        COUNT(amount_usd) AS transaction_count,
        ROUND(SUM(amount_usd) / COUNT(amount_usd), 2) AS usd_per_transaction
    FROM all_spending
    WHERE transaction_date >= '2024-04-01'
        AND transaction_date < '2024-07-01'
    GROUP BY 
        DATE_TRUNC('month', transaction_date), 
        category
    ORDER BY
        category,
        DATE_TRUNC('month', transaction_date)
    )

SELECT
    month_cat_var.month,
    month_cat_var.category,
    monthly_trans_count.total_amount AS actual_spend,
    month_cat_var.monthly_variance,
    month_cat_var.variance_percentage,
    monthly_trans_count.transaction_count,
    monthly_trans_count.usd_per_transaction
FROM monthly_trans_count
RIGHT JOIN month_cat_var
    ON month_cat_var.month = monthly_trans_count.month
    AND month_cat_var.category = monthly_trans_count.category
ORDER BY monthly_trans_count.transaction_count DESC;


-- June 2024
WITH month_cat_var AS (
    SELECT 
        month,
        category,
        SUM(variance_amount) AS monthly_variance,
        ROUND(SUM(variance_amount) /
            (SELECT SUM(budget_amount) FROM q2_variance WHERE month = '2024-06-01')  * 100, 2) AS variance_percentage
    FROM q2_variance
    WHERE month = '2024-06-01'
    GROUP BY month, category
    ORDER BY
        month,
        SUM(variance_amount)),
    
    monthly_trans_count AS (
    SELECT
        DATE_TRUNC('month', transaction_date) AS month,
        LOWER(category) AS category,
        SUM(amount_usd) AS total_amount,
        COUNT(amount_usd) AS transaction_count,
        ROUND(SUM(amount_usd) / COUNT(amount_usd), 2) AS usd_per_transaction
    FROM all_spending
    WHERE transaction_date >= '2024-04-01'
        AND transaction_date < '2024-07-01'
    GROUP BY 
        DATE_TRUNC('month', transaction_date), 
        category
    ORDER BY
        category,
        DATE_TRUNC('month', transaction_date)
    )

SELECT
    month_cat_var.month,
    month_cat_var.category,
    monthly_trans_count.total_amount AS actual_spend,
    month_cat_var.monthly_variance,
    month_cat_var.variance_percentage,
    monthly_trans_count.transaction_count,
    monthly_trans_count.usd_per_transaction
FROM monthly_trans_count
RIGHT JOIN month_cat_var
    ON month_cat_var.month = monthly_trans_count.month
    AND month_cat_var.category = monthly_trans_count.category
ORDER BY monthly_trans_count.transaction_count DESC;