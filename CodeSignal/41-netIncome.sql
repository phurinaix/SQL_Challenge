CREATE PROCEDURE solution()
BEGIN
    SELECT 
    YEAR(date) as year, 
    CEIL(MONTH(date)/3) as quarter,
    SUM(profit)-SUM(loss) as net_profit
    FROM accounting 
    GROUP BY year, quarter;
END
