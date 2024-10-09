CREATE TABLE all_spending
    (
        transaction_date DATE,
        day_of_week VARCHAR(255),
        city VARCHAR(255),
        latitude NUMERIC,
        longitude NUMERIC,
        transaction_type VARCHAR(255),
        description VARCHAR(255),
        detailed_notes VARCHAR(255),
        category VARCHAR(255),
        subcategory VARCHAR(255),
        amount_usd NUMERIC,
        amount_ars NUMERIC,
        ars_to_usd NUMERIC,
        notes VARCHAR(255)
    );

CREATE TABLE budget
    (
        budget_date DATE,
        category VARCHAR(255),
        budget_amount NUMERIC
    );

DROP TABLE all_spending