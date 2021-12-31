SELECT OrderID, CustomerID, ShipCountry
FROM Orders
WHERE ShipCountry = 'Belgium'
UNION ALL -- More efficient than UNION and correct since we know subresults are disjoint.
SELECT OrderID, CustomerID, ShipCountry
FROM Orders
WHERE ShipCountry = 'France'
