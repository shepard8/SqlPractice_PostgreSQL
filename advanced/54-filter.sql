SELECT Country, COUNT(*) FILTER (WHERE IsSupplier) AS TotalSuppliers, COUNT(*) FILTER (WHERE NOT IsSupplier) AS TotalCustomers
FROM (
  SELECT Country, true AS IsSupplier FROM Suppliers
  UNION ALL
  SELECT Country, false FROM Customers
) T
GROUP BY Country
ORDER BY Country
