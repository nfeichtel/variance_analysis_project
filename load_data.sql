
COPY all_spending
FROM '/Users/nickfeichtel/Desktop/Portfolio_Projects/variance_analysis_project/rolling_travel_finances.csv'
DELIMITER ',' CSV HEADER;

COPY budget
FROM '/Users/nickfeichtel/Desktop/Portfolio_Projects/variance_analysis_project/variance_budget.csv'
DELIMITER ',' CSV HEADER;

/*
\copy all_spending FROM '/Users/nickfeichtel/Desktop/Portfolio_Projects/variance_analysis_project/rolling_travel_finances.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
\copy budget FROM '/Users/nickfeichtel/Desktop/Portfolio_Projects/variance_analysis_project/variance_budget.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
*/