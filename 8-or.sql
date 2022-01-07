SELECT OrderID, CustomerID, ShipCountry
FROM Orders
WHERE ShipCountry = 'Belgium' OR ShipCountry = 'France'
