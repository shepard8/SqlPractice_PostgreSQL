SELECT EmployeeID, OrderID, OrderDate
FROM orders
WHERE EXTRACT(MONTH FROM OrderDate) <> EXTRACT(MONTH FROM OrderDate + INTERVAL '1 day')
