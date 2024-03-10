CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT x.country, 
    (SELECT COALESCE(SUM(number_of_places), 0) FROM countryActivities y 
    WHERE y.country = x.country AND y.leisure_activity_type = 'Adventure park')
    AS adventure_park,
    (SELECT COALESCE(SUM(number_of_places), 0) FROM countryActivities y 
    WHERE y.country = x.country AND y.leisure_activity_type = 'Golf')
    AS golf,
    (SELECT COALESCE(SUM(number_of_places), 0) FROM countryActivities y 
    WHERE y.country = x.country AND y.leisure_activity_type = 'River cruise')
    AS river_cruise,
    (SELECT COALESCE(SUM(number_of_places), 0) FROM countryActivities y 
    WHERE y.country = x.country AND y.leisure_activity_type = 'Kart racing')
    AS kart_racing
    FROM countryActivities x
    GROUP BY x.country
    ORDER BY x.country;
END
