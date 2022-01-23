SELECT EmployeeID, LastName, COUNT(*) AS TotalLateOrders
FROM Orders
NATURAL JOIN Employees
WHERE ShippedDate >= RequiredDate
GROUP BY EmployeeID, LastName
ORDER BY TotalLateOrders DESC
