CREATE PROCEDURE solution()
BEGIN

    SELECT ROUND(SUM(SQRT(POWER(i - k, 2) + POWER(j - l, 2))), 9) AS total
    FROM
    (SELECT a.x AS i, a.y AS j, b.x AS k, b.y AS l
    FROM cities a, cities b WHERE a.id < b.id GROUP BY a.id) AS group_cities;
END
