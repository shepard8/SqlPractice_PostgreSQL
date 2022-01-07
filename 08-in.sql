SELECT OrderID, CustomerID, ShipCountry
FROM Orders
WHERE ShipCountry IN ('Belgium', 'France')
