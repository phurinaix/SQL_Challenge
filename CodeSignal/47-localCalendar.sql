CREATE PROCEDURE solution()
BEGIN
    SELECT x.event_id, 
    IF(y.hours = 24, CONCAT(LEFT(DATE_ADD(x.date, INTERVAL y.timeshift MINUTE), 16), ''),
    DATE_FORMAT(DATE_ADD(x.date, INTERVAL y.timeshift MINUTE), '%Y-%m-%d %h:%i %p'))
    AS formatted_date
    FROM events x 
    LEFT JOIN settings y 
    ON x.user_id = y.user_id;
END
