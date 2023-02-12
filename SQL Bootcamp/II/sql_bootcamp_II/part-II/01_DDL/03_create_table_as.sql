SELECT * FROM Category;
SELECT * FROM northwind.Category;

CREATE TABLE CategoryCopy AS SELECT * FROM northwind.Category;
CREATE TABLE northwind.CategoryCopy AS SELECT * FROM northwind.Category;

DROP TABLE CategoryCopy;
DROP TABLE northwind.CategoryCopy;

SELECT * FROM Customer;
SELECT ContactName, CompanyName, ContactTitle FROM Customer;

CREATE TABLE report AS SELECT ContactName, CompanyName, ContactTitle FROM Customer;

SELECT * FROM report;