CREATE PROCEDURE solution()
BEGIN
    SELECT CONCAT(IF(gender = 'M', 'King ', 'Queen '), name) AS name 
    FROM Successors 
    ORDER BY YEAR(CURDATE()) - YEAR(birthday) DESC;
END
