SELECT ProductID, ProductName, CompanyName AS Supplier
FROM Products
NATURAL JOIN Suppliers
