SELECT ProductID, ProductName, (SELECT CompanyName FROM Suppliers WHERE SupplierID = Products.SupplierID) AS Supplier
FROM Products

