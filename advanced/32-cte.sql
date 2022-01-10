WITH HighValueOrders AS (
  SELECT OrderID, SUM(UnitPrice * Quantity) AS TotalOrderAmount
  FROM OrderDetails
  GROUP BY OrderID
  HAVING SUM(UnitPrice * Quantity) >= 10000::money
)
SELECT CustomerID, CompanyName, OrderID, TotalOrderAmount
FROM HighValueOrders
NATURAL JOIN Orders
NATURAL JOIN Customers
WHERE EXTRACT(YEAR FROM OrderDate) = 2016
