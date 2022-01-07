SELECT ProductID, ProductName, Supplier
FROM Products
NATURAL JOIN LATERAL (SELECT SupplierID, CompanyName AS Supplier FROM Suppliers) T

