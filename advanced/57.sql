WITH T AS (
  SELECT CustomerID, OrderDate, LEAD(OrderDate) OVER w, (LEAD(OrderDate) OVER w)::date - OrderDate::date AS DaysBetweenOrders
  FROM Orders fst
  WINDOW w AS (PARTITION BY CustomerID ORDER BY OrderDate)
)
SELECT *
FROM T
WHERE DaysBetweenOrders BETWEEN 0 AND 5
