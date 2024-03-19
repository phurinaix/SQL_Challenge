CREATE PROCEDURE solution()
BEGIN
    SELECT a.id AS id1, b.id AS id2 
    FROM positions a, positions b
    WHERE SQRT(POWER(a.x - b.x, 2) + POWER(a.y - b.y, 2)) = (
        SELECT MIN(SQRT(POWER(a.x - c.x, 2) + POWER(a.y - c.y, 2))) 
        FROM positions c WHERE a.id <> c.id
    )
    GROUP BY a.id
    ORDER BY a.id;
END
