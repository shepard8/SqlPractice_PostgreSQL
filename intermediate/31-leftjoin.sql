SELECT Customers.CustomerID AS Customers_CustomerID, Orders.CustomerID AS Orders_CustomerID
FROM Customers
LEFT JOIN Orders ON (Customers.CustomerID = Orders.CustomerID AND Orders.EmployeeID = 4)
WHERE Orders.CustomerID IS NULL
