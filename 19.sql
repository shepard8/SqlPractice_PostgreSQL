SELECT OrderID, OrderDate, CompanyName AS Shipper
FROM Orders
INNER JOIN Shippers ON ShipperID = ShipVia
WHERE OrderID < 10270
