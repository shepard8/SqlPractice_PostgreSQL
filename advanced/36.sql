SELECT OrderID, COUNT(*) AS TotalOrderDetails
FROM orderdetails
GROUP BY OrderID
ORDER BY TotalOrderDetails DESC
LIMIT 10
