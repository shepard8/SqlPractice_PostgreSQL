-- https://www.postgresql.org/docs/current/functions-matching.html#FUNCTIONS-POSIX-REGEXP

SELECT ProductID, ProductName
FROM Products
WHERE ProductName ~* '.*queso.*'
