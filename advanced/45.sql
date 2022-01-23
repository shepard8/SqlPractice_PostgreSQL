SELECT EmployeeID, LastName, COUNT(*) AS AllOrders, COUNT(*) FILTER (WHERE ShippedDate >= RequiredDate) AS LateOrders
FROM Orders
NATURAL RIGHT JOIN Employees
GROUP BY EmployeeID, LastName
