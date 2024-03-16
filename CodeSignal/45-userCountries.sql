CREATE PROCEDURE solution()
BEGIN
    SELECT users.id, IF(cities.country IS NULL, 'unknown', cities.country) as country 
    FROM users
    LEFT JOIN cities ON users.city = cities.city;
END
