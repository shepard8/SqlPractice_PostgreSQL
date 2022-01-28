SELECT CustomerID, CompanyName, TotalOrderAmount
FROM Customers
INNER JOIN LATERAL (
  SELECT CustomerID, SUM(UnitPrice * Quantity) AS TotalOrderAmount
  FROM OrderDetails
  NATURAL JOIN Orders
  WHERE EXTRACT(YEAR FROM OrderDate) = 2016
  GROUP BY CustomerID
) HighValueCustomers USING (CustomerID)
WHERE TotalOrderAmount >= 15000::money
