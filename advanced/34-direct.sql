SELECT CustomerID, CompanyName, SUM(UnitPrice * Quantity) AS TotalsWithoutDiscount, SUM(UnitPrice * Quantity * (1 - Discount)) AS TotalsWithDiscount
FROM OrderDetails
NATURAL JOIN Orders
NATURAL JOIN Customers
WHERE EXTRACT(YEAR FROM OrderDate) = 2016
GROUP BY CustomerID, CompanyName
HAVING SUM(UnitPrice * Quantity * (1 - Discount)) >= 15000::money
