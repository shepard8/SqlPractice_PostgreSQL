-- Note that there will be approximately 17 rows, not always exactly 17 rows.
SELECT OrderID
FROM orders TABLESAMPLE BERNOULLI (2)
