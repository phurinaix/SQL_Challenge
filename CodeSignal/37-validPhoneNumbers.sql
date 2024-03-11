CREATE PROCEDURE solution()
BEGIN
    SELECT * FROM phone_numbers 
    WHERE phone_number 
    -- (1-[0-9]{3}-[0-9]{3}-[0-9]{4})
    -- (1)###-###-####
    REGEXP '^((1-[0-9]{3}-[0-9]{3}-[0-9]{4})|(\\(1\\)[0-9]{3}-[0-9]{3}-[0-9]{4}))$'
    ORDER BY surname;
END
