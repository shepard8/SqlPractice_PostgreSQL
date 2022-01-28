WITH HighValueCustomers AS (
  SELECT CustomerID, SUM(UnitPrice * Quantity) AS TotalOrderAmount
  FROM OrderDetails
  NATURAL JOIN Orders
  WHERE EXTRACT(YEAR FROM OrderDate) = 2016
  GROUP BY CustomerID
  HAVING SUM(UnitPrice * Quantity) >= 15000::money
)
SELECT CustomerID, CompanyName, TotalOrderAmount
FROM HighValueCustomers
NATURAL JOIN Customers
