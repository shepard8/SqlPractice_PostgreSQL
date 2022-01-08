SELECT ShipCountry, AVG(Freight::decimal(10, 2))::decimal(10, 4) AS AverageFreight
FROM Orders
WHERE DATE_PART('year', OrderDate) = 2015
GROUP BY ShipCountry
ORDER BY AverageFreight DESC
LIMIT 3
