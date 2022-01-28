SELECT CustomerID, CompanyName, OrderID, TotalOrderAmount
FROM Orders
INNER JOIN LATERAL (
  SELECT OrderID, SUM(UnitPrice * Quantity) AS TotalOrderAmount
  FROM OrderDetails
  GROUP BY OrderID
) HighValueOrders USING (OrderID)
NATURAL JOIN Customers
WHERE EXTRACT(YEAR FROM OrderDate) = 2016
  AND TotalOrderAmount >= 10000::money
