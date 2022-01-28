SELECT ShipCountry, CustomerID, OrderID, OrderDate
FROM Orders o1
WHERE NOT EXISTS (
  SELECT *
  FROM Orders o2
  WHERE o2.ShipCountry = o1.ShipCountry
    AND o2.OrderDate < o1.OrderDate
)
ORDER BY ShipCountry
