--  UDT for the learner
CREATE TYPE learner_type AS (
    id INT,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR,
    grade_id INT
);