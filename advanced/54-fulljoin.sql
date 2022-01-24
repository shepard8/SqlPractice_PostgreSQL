WITH CustomersCounts AS (
  SELECT Country, COUNT(*) AS TotalCustomers
  FROM Customers
  GROUP BY Country
),
SuppliersCounts AS (
  SELECT Country, COUNT(*) AS TotalSuppliers
  FROM Suppliers
  GROUP BY Country
)
SELECT COALESCE(SuppliersCounts.Country, CustomersCounts.Country) AS Country, COALESCE(TotalSuppliers, 0) AS TotalSuppliers, COALESCE(TotalCustomers, 0) AS TotalCustomers
FROM SuppliersCounts
FULL OUTER JOIN CustomersCounts USING (Country)
ORDER BY 1
