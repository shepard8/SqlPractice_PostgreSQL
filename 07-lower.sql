SELECT ProductID, ProductName
FROM Products
WHERE LOWER(ProductName) LIKE '%queso%'
