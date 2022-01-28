-- The book says there should be 71 results, however I get 69. The next question asks the same and gets 69 results. Maybe I'm missing something here.
SELECT
  initial.CustomerID,
  initial.OrderID AS InitialOrderID,
  initial.OrderDate AS InitialOrderDate,
  next.OrderID AS NextOrderID,
  next.OrderDate AS NextOrderDate,
  next.OrderDate::date - initial.OrderDate::date AS DaysBetweenOrders
FROM Orders initial
INNER JOIN Orders next ON next.CustomerID = initial.CustomerID AND initial.OrderDate < next.OrderDate AND next.OrderDate::date - initial.OrderDate::date <= 5
