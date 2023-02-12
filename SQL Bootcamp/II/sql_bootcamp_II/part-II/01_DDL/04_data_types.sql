SELECT TYPEOF(20);

SELECT TYPEOF(20),
       TYPEOF(3.5),
       TYPEOF('SQL'),
       TYPEOF(true),
       TYPEOF(false),
       TYPEOF(NULL),
       TYPEOF(x'0101');
	   
SELECT * FROM Category;
SELECT *, TYPEOF(Id) FROM Category;
SELECT *, TYPEOF(Id), TYPEOF(CategoryName) FROM Category;
