SELECT EmployeeID, LastName, AllOrders, LateOrders, 1.0 * LateOrders / AllOrders AS PercentLateOrders
FROM Employees
NATURAL RIGHT JOIN LATERAL (SELECT EmployeeID, COUNT(*) AS AllOrders, COUNT(*) FILTER (WHERE ShippedDate >= RequiredDate) AS LateOrders FROM Orders GROUP BY EmployeeID) T
