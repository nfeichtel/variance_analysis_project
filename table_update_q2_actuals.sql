--inserting records to indicate the actual spending amounts were 0, not null values

INSERT INTO q2_actuals
VALUES
    ('2024-06-01 00:00:00-03', 'transportation', 0),
    ('2024-06-01 00:00:00-03', 'excursion', 0),
    ('2024-05-01 00:00:00-03', 'excursion', 0);

UPDATE q2_actuals
SET actual_amount = 0.00
WHERE actual_amount = 0;