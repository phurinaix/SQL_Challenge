SELECT Name AS Employee
FROM Employee x
WHERE x.Salary > (SELECT y.Salary FROM Employee y WHERE y.Id = x.ManagerId);
