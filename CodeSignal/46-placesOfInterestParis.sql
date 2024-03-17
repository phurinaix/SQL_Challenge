CREATE PROCEDURE solution()
BEGIN
    DROP TABLE IF EXISTS mock;
    CREATE TABLE mock(
        id int(10) AUTO_INCREMENT PRIMARY KEY,
        place1 varchar(255), 
        place2 varchar(255)
    );
    
    INSERT INTO mock (place1, place2)
    SELECT a.name AS place1, b.name AS place2
    FROM sights a, sights b
    WHERE SQRT(POWER(a.x - b.x, 2) + POWER(a.y - b.y, 2)) < 5 
    AND a.name <> b.name
    ORDER BY a.name, b.name;
    
    SELECT x.place1, x.place2 FROM mock x
    WHERE x.place2 NOT IN (SELECT y.place1 FROM mock y WHERE y.id < x.id);
END
