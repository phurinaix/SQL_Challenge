CREATE PROCEDURE solution()
BEGIN
    SELECT DISTINCT x.director FROM moviesInfo x 
    WHERE 2 < (SELECT SUM(y.oscars) FROM moviesInfo y WHERE x.director = y.director AND y.year > 2000)
    ORDER BY x.director;
END
