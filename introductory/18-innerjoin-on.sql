SELECT ProductID, ProductName, CompanyName AS Supplier
FROM Products
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID

