SELECT CustomerID, CompanyName, TotalsWithoutDiscount, TotalsWithDiscount
FROM Customers
INNER JOIN LATERAL (
  SELECT CustomerID, SUM(UnitPrice * Quantity) AS TotalsWithoutDiscount, SUM(UnitPrice * Quantity * (1 - Discount)) AS TotalsWithDiscount
  FROM OrderDetails
  NATURAL JOIN Orders
  WHERE EXTRACT(YEAR FROM OrderDate) = 2016
  GROUP BY CustomerID
) HighValueCustomers USING (CustomerID)
WHERE TotalsWithDiscount >= 15000::money
