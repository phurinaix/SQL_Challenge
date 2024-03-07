CREATE PROCEDURE solution()
BEGIN
    SELECT country, COUNT(competitor) AS competitors FROM foreignCompetitors
    GROUP BY country
    UNION ALL
    SELECT 'Total:', COUNT(competitor) FROM foreignCompetitors
    ORDER BY
    CASE 
        WHEN country = 'Total:' THEN 1
    END,
    country;
END
