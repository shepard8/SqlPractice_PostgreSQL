-- The problem comes from the time. 2015-12-31 11:00:00 comes after
-- 2015-12-31 (implicitly 00:00:00), hence it is not taken into account.
--
-- Missing OrderID is 10807.

SELECT OrderID, ShipCountry, OrderDate
FROM Orders
WHERE EXTRACT(YEAR FROM OrderDate) = 2015
  AND OrderDate NOT BETWEEN '20150101' AND '20151231'
