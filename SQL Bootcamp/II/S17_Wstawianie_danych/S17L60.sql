DROP TABLE IF EXISTS stock;
DROP TABLE IF EXISTS company;

CREATE TABLE stock (
    id                    INTEGER PRIMARY KEY,
    ticker              TEXT       UNIQUE NOT NULL,
    full_name       TEXT       NOT NULL,
    market           TEXT       NOT NULL DEFAULT 'GPW' 
);

INSERT INTO stock (ticker, full_name)
VALUES ('t1', 'test1'),
             ('t2','test2'),
             ('t3','test3'),
             ('t4','test4');

SELECT * FROM stock;

CREATE TABLE company (
    id                                INTEGER PRIMARY KEY,
    company_name         TEXT        NOT NULL 
);

INSERT INTO company (company_name)
SELECT full_name FROM stock;

SELECT * FROM company;