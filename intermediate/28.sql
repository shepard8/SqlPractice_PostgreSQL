SELECT ShipCountry, AVG(Freight::decimal(10, 2))::decimal(10, 4) AS AverageFreight
FROM Orders
WHERE OrderDate >= (SELECT MAX(OrderDate) FROM Orders) - INTERVAL '1 year'
GROUP BY ShipCountry
ORDER BY AverageFreight DESC
LIMIT 3
