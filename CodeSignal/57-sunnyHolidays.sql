CREATE PROCEDURE solution()
BEGIN
    SELECT holiday_date AS ski_date FROM holidays
    WHERE EXISTS (
        SELECT * FROM weather WHERE weather.sunny_date = holidays.holiday_date
    );
END
