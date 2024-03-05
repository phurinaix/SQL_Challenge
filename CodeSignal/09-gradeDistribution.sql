CREATE PROCEDURE solution()
BEGIN
    SELECT name AS Name
    , id AS ID
    FROM Grades
    WHERE Final > ((0.25 * Midterm1) + (0.25 * Midterm2) + (0.5 * Final)) AND
    Final > ((0.5 * Midterm1) + (0.5 * Midterm2))
    ORDER BY left(name, 3) , id;
END
