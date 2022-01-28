SELECT OrderID, OrderDate, RequiredDate, ShippedDate
FROM Orders
WHERE ShippedDate >= RequiredDate
ORDER BY OrderID
