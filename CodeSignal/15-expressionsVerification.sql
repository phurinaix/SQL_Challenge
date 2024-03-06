CREATE PROCEDURE solution()
BEGIN
    SELECT * FROM expressions
    WHERE c =
    CASE
        WHEN operation = '+' THEN a+b
        WHEN operation = '-' THEN a-b
        WHEN operation = '*' THEN a*b
        WHEN operation = '/' THEN a/b
    END;
END
