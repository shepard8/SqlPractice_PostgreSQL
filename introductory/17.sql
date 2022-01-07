SELECT ContactTitle, COUNT(*) AS TotalContactTitle
FROM Customers
GROUP BY ContactTitle
