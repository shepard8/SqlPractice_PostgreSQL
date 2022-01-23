WITH HighValueCustomers AS (
  SELECT CustomerID, SUM(UnitPrice * Quantity) AS TotalsWithoutDiscount, SUM(UnitPrice * Quantity * (1 - Discount)) AS TotalsWithDiscount
  FROM OrderDetails
  NATURAL JOIN Orders
  WHERE EXTRACT(YEAR FROM OrderDate) = 2016
  GROUP BY CustomerID
  HAVING SUM(UnitPrice * Quantity * (1 - Discount)) >= 15000::money
)
SELECT CustomerID, CompanyName, TotalsWithoutDiscount, TotalsWithDiscount
FROM HighValueCustomers
NATURAL JOIN Customers
