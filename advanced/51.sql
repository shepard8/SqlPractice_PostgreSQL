SELECT CustomerID, CompanyName, TotalOrderAmount, CustomerGroupName
FROM Customers
NATURAL RIGHT JOIN LATERAL (
  SELECT CustomerID, SUM(UnitPrice * Quantity) AS TotalOrderAmount
  FROM Orders
  NATURAL JOIN OrderDetails
  WHERE EXTRACT(YEAR FROM OrderDate) = 2016
  GROUP BY CustomerID
) Totals
INNER JOIN CustomerGroupThresholds ON RangeBottom <= TotalOrderAmount AND TotalOrderAmount <= RangeTop
