CREATE PROCEDURE solution()
BEGIN
    SELECT id, email_title,
    IF(FLOOR(size/POWER(2, 20)) >= 1, 
    CONCAT(FLOOR(size/POWER(2, 20)), ' Mb'),
    CONCAT(FLOOR(size/POWER(2, 10)), ' Kb')
    )
    AS short_size FROM emails ORDER BY size DESC;
END
