SELECT CustomerID, CompanyName, Region
FROM Customers
-- Note : In PostgreSQL NULLS LAST is the default. However the goal of the
--        exercise is to put the NULL values specifically at the end.
ORDER BY Region NULLS LAST, CustomerID
