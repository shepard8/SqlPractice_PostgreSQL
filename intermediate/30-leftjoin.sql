SELECT Customers.CustomerID AS Customers_CustomerID, Orders.CustomerID AS Orders_CustomerID
FROM Customers
LEFT JOIN Orders USING (CustomerID)
WHERE Orders.CustomerID IS NULL
