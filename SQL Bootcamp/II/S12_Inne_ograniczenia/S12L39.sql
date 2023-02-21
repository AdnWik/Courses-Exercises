DROP TABLE IF EXISTS stock;

CREATE TABLE stock (
    Id        INTEGER PRIMARY KEY,
    ticker    TEXT UNIQUE,
    full_name TEXT
);

INSERT INTO stock(ticker, full_name)
VALUES ('CDR', 'CD Project');

INSERT INTO stock(ticker, full_name)
VALUES ('TEN', 'Ten Square Games');

INSERT INTO stock(ticker, full_name)
VALUES ('PLW', 'TPlayway');


SELECT * FROM stock;