-- CREATE EXTENSION citext

SELECT ProductID, ProductName
FROM Products
WHERE ProductName::citext LIKE '%queso%'
