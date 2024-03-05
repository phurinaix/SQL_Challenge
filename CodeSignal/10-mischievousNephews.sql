CREATE PROCEDURE solution()
BEGIN
    SELECT WEEKDAY(mischief_date) as weekday, mischief_date, author, title 
    FROM mischief ORDER BY weekday,
    CASE author WHEN 'Huey' THEN 0 
            WHEN 'Dewey' THEN 1
            WHEN 'Louie' THEN 2
    END, mischief_date, title;
    
END
