CREATE PROCEDURE solution()
BEGIN
    SELECT id, name, surname FROM Suspect WHERE height <= 170 OR UPPER(name) NOT LIKE UPPER('B%') OR surname          NOT LIKE 'Gre_n' ORDER BY id;
END
