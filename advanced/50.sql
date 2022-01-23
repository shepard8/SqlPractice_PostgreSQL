WITH Groups AS (
  SELECT CustomerID,
    CASE
    WHEN SUM(UnitPrice * Quantity) <= 1000::money THEN 'Low'
    WHEN SUM(UnitPrice * Quantity) <= 5000::money THEN 'Medium'
    WHEN SUM(UnitPrice * Quantity) <= 10000::money THEN 'High'
    ELSE 'Very High'
  END AS CustomerGroup
  FROM Orders
  NATURAL JOIN OrderDetails
  WHERE EXTRACT(YEAR FROM OrderDate) = 2016
  GROUP BY CustomerID
)
SELECT CustomerGroup, COUNT(*) AS TotalInGroup, 1.0 * COUNT(*) / (SELECT COUNT(*) FROM Groups) AS PercentageInGroup
FROM Groups
GROUP BY CustomerGroup
ORDER BY TotalInGroup DESC
