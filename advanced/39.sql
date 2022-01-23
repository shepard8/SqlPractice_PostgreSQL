SELECT DISTINCT details.OrderID, details.ProductID, details.UnitPrice, details.Quantity, details.Discount
FROM OrderDetails detail1
INNER JOIN OrderDetails detail2 USING (OrderID, Quantity)
INNER JOIN OrderDetails details USING (OrderID)
WHERE detail1.ProductID <> detail2.ProductID
  AND detail1.Quantity >= 60
ORDER BY OrderID
