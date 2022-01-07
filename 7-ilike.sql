-- https://www.postgresql.org/docs/current/functions-matching.html#FUNCTIONS-LIKE

SELECT ProductID, ProductName
FROM Products
WHERE ProductName ILIKE '%queso%'
