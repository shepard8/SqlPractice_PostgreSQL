SELECT EmployeeID, LastName, OrderID, ProductName, Quantity
FROM OrderDetails
INNER JOIN Products USING (ProductID)
INNER JOIN Orders USING (OrderID)
INNER JOIN Employees USING (EmployeeID)
ORDER BY OrderID, ProductID
