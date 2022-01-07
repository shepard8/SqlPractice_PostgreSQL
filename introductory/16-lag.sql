-- Note: The same result can be obtained using LEAD instead of LAG.
WITH T AS (
  SELECT Country, LAG(Country) OVER (ORDER BY Country) AS lagged
  FROM Customers
)
SELECT Country
FROM T
WHERE Country <> lagged
   OR lagged IS NULL
