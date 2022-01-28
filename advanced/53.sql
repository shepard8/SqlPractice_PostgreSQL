SELECT DISTINCT suppliers.country AS SupplierCountry, customers.country AS CustomerCountry
FROM customers
FULL OUTER JOIN suppliers USING (country)
