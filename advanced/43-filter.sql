SELECT EmployeeID, LastName, COUNT(*) AS AllOrders, COUNT(*) FILTER (WHERE ShippedDate >= RequiredDate) AS LateOrders
FROM Orders
NATURAL JOIN Employees
GROUP BY EmployeeID, LastName
