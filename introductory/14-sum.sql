-- Alternate solution. The performance is the same. Note that COUNT conveys the intent of counting as opposed to SUM.
SELECT SUM(1) AS TotalCustomers
FROM Customers
