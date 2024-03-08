CREATE PROCEDURE solution()
BEGIN
    SELECT 
        COUNT(
            CASE
                WHEN description IS NULL THEN 1
                WHEN TRIM(UPPER(description)) IN ('NULL', 'NIL', '-') THEN 1
            END
        )
        AS number_of_nulls
    FROM departments;
END
