WITH Totals AS (
  SELECT CustomerID, SUM(UnitPrice * Quantity) AS TotalOrderAmount
  FROM Orders
  NATURAL JOIN OrderDetails
  WHERE EXTRACT(YEAR FROM OrderDate) = 2016
  GROUP BY CustomerID
)
SELECT CustomerID, CompanyName, TotalOrderAmount,
  CASE
  WHEN TotalOrderAmount <= 1000::money THEN 'Low'
  WHEN TotalOrderAmount <= 5000::money THEN 'Medium'
  WHEN TotalOrderAmount <= 10000::money THEN 'High'
  ELSE 'Very High'
  END AS CustomerGroup
FROM Customers
NATURAL JOIN Totals
