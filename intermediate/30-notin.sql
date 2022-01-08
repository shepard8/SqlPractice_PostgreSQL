SELECT CustomerID AS Customers_CustomerID, NULL AS Orders_CustomerID
FROM Customers
WHERE CustomerID NOT IN (
  SELECT CustomerID
  FROM Orders
)
