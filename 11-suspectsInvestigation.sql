CREATE PROCEDURE solution()
BEGIN
    SELECT id, name, surname FROM Suspect WHERE height <= 170 AND UPPER(name) LIKE UPPER('B%') AND surname LIKE 'Gre_n';
END
