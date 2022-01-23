SELECT
  OrderDetails.OrderID,
  ProductID,
  UnitPrice,
  Quantity,
  Discount
FROM OrderDetails
JOIN (
  SELECT DISTINCT OrderID -- Added DISTINCT here, since there are two potential problems, this ID occured twice which led to the 4 spurious rows.
  FROM OrderDetails
  WHERE Quantity >= 60
  GROUP BY OrderID, Quantity
  HAVING COUNT(*) > 1
) PotentialProblemOrders ON PotentialProblemOrders.OrderID = OrderDetails.OrderID
ORDER BY OrderID, ProductID
