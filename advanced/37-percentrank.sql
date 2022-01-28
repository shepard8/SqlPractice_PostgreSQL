WITH T AS (
  SELECT
    OrderID,
    PERCENT_RANK() OVER (ORDER BY random()) AS pc
  FROM orders
)
SELECT OrderID
FROM T
WHERE pc <= 0.02
