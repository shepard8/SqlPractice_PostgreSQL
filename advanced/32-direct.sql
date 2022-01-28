-- This solution is simple but becomes impractical and hard to maintain when
-- there are lots of columns to retrieve.
SELECT CustomerID, CompanyName, OrderID, SUM(UnitPrice * Quantity) AS TotalOrderAmount
FROM OrderDetails
NATURAL JOIN Orders
NATURAL JOIN Customers
WHERE EXTRACT(YEAR FROM OrderDate) = 2016
GROUP BY CustomerID, CompanyName, OrderID
HAVING SUM(UnitPrice * Quantity) >= 10000::money
