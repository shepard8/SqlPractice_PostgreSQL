SELECT CustomerID, CompanyName, SUM(UnitPrice * Quantity) AS TotalOrderAmount
FROM OrderDetails
NATURAL JOIN Orders
NATURAL JOIN Customers
WHERE EXTRACT(YEAR FROM OrderDate) = 2016
GROUP BY CustomerID, CompanyName
HAVING SUM(UnitPrice * Quantity) >= 15000::money
