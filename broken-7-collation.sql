-- https://www.postgresql.org/docs/current/functions-matching.html

-- CREATE COLLATION case_insensitive (provider = icu, locale = 'und-u-ks-level2', deterministic = false);


SELECT ProductID, ProductName
FROM Products
WHERE ProductName COLLATE "case_insensitive" LIKE '%queso%'

-- The pattern matching operators of all three kinds do not support nondeterministic collations.
