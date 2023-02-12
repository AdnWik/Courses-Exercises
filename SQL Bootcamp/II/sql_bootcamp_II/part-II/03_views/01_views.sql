SELECT * FROM OrderDetail;
SELECT * FROM Product;

SELECT *
FROM OrderDetail AS t1 
LEFT JOIN Product AS t2 ON t1.ProductId = t2.id;

SELECT t1.Id, 
       t1.OrderId,
       t1.ProductId,
       t2.ProductName,
       t1.UnitPrice,
       t1.Quantity,
       t1.Discount
FROM OrderDetail AS t1 
LEFT JOIN Product AS t2 ON t1.ProductId = t2.id;

CREATE VIEW OrderSimpleDetails_V AS
SELECT t1.Id, 
       t1.OrderId,
       t1.ProductId,
       t2.ProductName,
       t1.UnitPrice,
       t1.Quantity,
       t1.Discount
FROM OrderDetail AS t1 
LEFT JOIN Product AS t2 ON t1.ProductId = t2.id;

SELECT * FROM OrderSimpleDetails_V;

SELECT * FROM OrderSimpleDetails_V WHERE UnitPrice > 10.0;

DROP VIEW OrderSimpleDetails_V;
