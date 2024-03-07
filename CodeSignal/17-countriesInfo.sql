CREATE PROCEDURE solution()
BEGIN
    SELECT COUNT(name) as number, AVG(population) as average, SUM(population) as total FROM countries;
END
