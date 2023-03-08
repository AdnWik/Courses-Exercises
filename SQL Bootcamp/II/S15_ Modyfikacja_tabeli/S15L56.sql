DROP TABLE IF EXISTS stock;
DROP TABLE IF EXISTS stock_market;

CREATE TABLE stock (
    id                INTEGER PRIMARY KEY,
    ticker          TEXT NOT NULL,
    full_name   TEXT NOT NULL
);

INSERT INTO stock (ticker, full_name)
VALUES ('CDR', 'CD Projekt'),
             ('PLW', 'Playway');

SELECT * FROM stock;

ALTER TABLE stock ADD COLUMN price REAL NOT NULL DEFAULT 0 CHECK (price > 0);

INSERT INTO stock (ticker, full_name, price)
VALUES ('TEN', 'CD Ten Square Games', 500);

SELECT * FROM stock;

ALTER TABLE stock RENAME COLUMN full_name to company_name;

SELECT * FROM stock;

ALTER TABLE stock RENAME TO stock_market;

SELECT * FROM stock_market;