SELECT ProductID, ProductName, CompanyName AS Supplier
FROM Products
INNER JOIN Suppliers USING (SupplierID)

