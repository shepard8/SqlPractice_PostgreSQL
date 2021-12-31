-- https://www.postgresql.org/docs/current/citext.html

-- CREATE EXTENSION citext

SELECT ProductID, ProductName
FROM Products
WHERE ProductName::citext LIKE '%queso%'
