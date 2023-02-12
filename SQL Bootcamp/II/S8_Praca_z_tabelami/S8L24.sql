SELECT * FROM Category;

CREATE TABLE CategoryCopy AS SELECT * FROM Category;

DROP TABLE IF EXISTS CategoryCopy; 

SELECT ContactName, CompanyName, ContactTitle FROM Customer;

CREATE TABLE report AS SELECT ContactName, CompanyName, ContactTitle FROM Customer;

SELECT * FROM report;

DROP TABLE IF EXISTS report;