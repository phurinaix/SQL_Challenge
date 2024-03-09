CREATE PROCEDURE solution()
BEGIN
    SELECT name FROM people_hobbies WHERE FIND_IN_SET('sports', hobbies) 
    AND FIND_IN_SET('reading', hobbies) ORDER BY name;
END
