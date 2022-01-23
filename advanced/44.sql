SELECT EmployeeID, LastName, COUNT(*) AS AllOrders, NULLIF(COUNT(*) FILTER (WHERE ShippedDate >= RequiredDate), 0) AS LateOrders
FROM Orders
NATURAL RIGHT JOIN Employees
GROUP BY EmployeeID, LastName
