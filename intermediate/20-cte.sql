WITH Counts AS (
  SELECT CategoryID, COUNT(*) AS TotalProducts
  FROM Products
  GROUP BY CategoryID
)
SELECT CategoryName, TotalProducts
FROM Categories
NATURAL JOIN Counts
ORDER BY TotalProducts DESC
