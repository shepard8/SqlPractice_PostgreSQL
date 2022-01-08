SELECT ShipCountry, AVG(Freight::decimal(10, 2))::decimal(10, 4) AS AverageFreight
FROM Orders
GROUP BY ShipCountry
ORDER BY AverageFreight DESC
LIMIT 3
