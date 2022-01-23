SELECT DISTINCT OrderID
FROM OrderDetails detail1
INNER JOIN OrderDetails detail2 USING (OrderID, Quantity)
WHERE detail1.ProductID <> detail2.ProductID
  AND detail1.Quantity >= 60
ORDER BY OrderID
