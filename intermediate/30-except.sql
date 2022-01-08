SELECT CustomerID AS Customers_CustomerID, NULL AS Orders_CustomerID
FROM Customers
EXCEPT
SELECT CustomerID, NULL
FROM Orders
