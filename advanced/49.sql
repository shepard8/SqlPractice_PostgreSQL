-- No idea what the author is talking about, there are no null values :-(
-- Maybe if we use ranges such as 0 - 1000, 1001 - 5000, 5001 - 10000, 10000 - infinity? (the values between 1000 and 1001 or 5000 and 5001 or 10000 and 10001 would then be excluded)
-- This is the same query as for exercise 48.
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
