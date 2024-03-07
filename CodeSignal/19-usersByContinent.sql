CREATE PROCEDURE solution()
BEGIN
    SELECT continent, SUM(users) as users FROM countries GROUP BY continent ORDER BY SUM(users) DESC;
END
