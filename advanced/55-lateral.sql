SELECT DISTINCT ShipCountry, CustomerID, OrderID, OrderDate
FROM (SELECT DISTINCT ShipCountry FROM Orders) base
NATURAL JOIN LATERAL (
  SELECT *
  FROM Orders
  WHERE ShipCountry = base.ShipCountry
  ORDER BY OrderDate
  LIMIT 1
) data
