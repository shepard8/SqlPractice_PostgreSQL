SELECT CategoryName, COUNT(*) AS TotalProducts
FROM Products
NATURAL JOIN Categories
GROUP BY CategoryName
ORDER BY TotalProducts DESC
