SELECT TYPEOF(20);

SELECT TYPEOF(20),
       TYPEOF(3.5),
       TYPEOF("SQL"),
       TYPEOF(true),
       TYPEOF(null),
       TYPEOF(x'1010');

SELECT * FROM Category;

SELECT *, TYPEOF(id) FROM Category;

SELECT *, TYPEOF(id), TYPEOF(CategoryName) FROM Category;