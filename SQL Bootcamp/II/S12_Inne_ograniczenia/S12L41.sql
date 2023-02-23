DROP TABLE IF EXISTS stock;

CREATE TABLE stock (
    Id              INTEGER PRIMARY KEY,
    ticker        TEXT UNIQUE CHECK(LENGTH(ticker) == 3),
    full_name TEXT CHECK (full_name != ''),
    price         REAL CHECK (price > 0)
);

INSERT INTO stock(ticker, full_name, price)
VALUES ('CDR', 'CD Project', 111);

INSERT INTO stock(ticker, full_name, price)
VALUES ('TEN', 'Ten Square Games', 222);

INSERT INTO stock(ticker, full_name, price)
VALUES ('PLW', 'TPlayway', 333);


SELECT * FROM stock;