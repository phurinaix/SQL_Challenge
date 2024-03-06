CREATE PROCEDURE solution()
BEGIN
    SELECT * FROM users WHERE attribute LIKE CONCAT('_%', '\%', CAST(first_name AS BINARY), '_', CAST(second_name AS BINARY), '\%', '%') ORDER BY attribute;
END
