SELECT CustomerID AS Customers_CustomerID, NULL AS Orders_CustomerID
FROM Customers
WHERE NOT EXISTS (
  SELECT *
  FROM Orders
  WHERE CustomerID = Customers.CustomerID
)
