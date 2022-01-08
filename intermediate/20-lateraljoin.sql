SELECT CategoryName, TotalProducts
FROM Categories
NATURAL JOIN LATERAL (SELECT CategoryID, COUNT(*) AS TotalProducts FROM Products GROUP BY CategoryID) T
ORDER BY TotalProducts DESC
