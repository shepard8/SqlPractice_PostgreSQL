SELECT CustomerID, NULL AS CustomerID
FROM Customers
EXCEPT
SELECT CustomerID, NULL
FROM Orders
WHERE EmployeeID = 4
