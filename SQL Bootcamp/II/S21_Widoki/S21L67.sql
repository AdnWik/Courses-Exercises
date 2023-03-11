--SELECT * FROM OrderDetail;
--SELECT * FROM Product;
DROP VIEW IF EXISTS OrderSimpleDetail_V;


CREATE VIEW OrderSimpleDetail_V AS
SELECT t1.Id,
       t1.OrderId,
       t1.ProductId,
       t2.ProductName,
       t1.UnitPrice,
       t1.Quantity,
       t1.Discount
FROM OrderDetail AS t1
LEFT JOIN Product AS t2 ON t1.ProductId = t2.Id;

SELECT * FROM OrderSimpleDetail_V;