SELECT OrderID
FROM orders
ORDER BY random()
LIMIT (SELECT COUNT(*) FROM orders) * 0.02
