CREATE PROCEDURE solution()
BEGIN
    SELECT name, event_date FROM Events
    WHERE event_date >=
    (
        SELECT ADDDATE(event_date, INTERVAL -7 DAY) 
        FROM Events 
        ORDER BY event_date DESC LIMIT 1
    )
    AND
    event_date <>
    (
        SELECT event_date 
        FROM Events 
        ORDER BY event_date DESC LIMIT 1
    )
    ORDER BY event_date DESC;
END
