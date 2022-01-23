SELECT DISTINCT OrderID
FROM OrderDetails detail1
WHERE Quantity >= 60
  AND EXISTS (
    SELECT *
    FROM OrderDetails detail2
    WHERE detail2.OrderId = detail1.OrderID
      AND detail2.Quantity = detail1.Quantity
      AND detail2.ProductID <> detail1.ProductID
    )
ORDER BY OrderID
