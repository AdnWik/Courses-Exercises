DROP TABLE IF EXISTS stock;

CREATE TABLE stock (
    Id        INTEGER PRIMARY KEY,
    ticker    TEXT UNIQUE NOT NULL,
    full_name TEXT NOT NULL
);

INSERT INTO stock(ticker, full_name)
VALUES ('CDR', 'CD Project');

INSERT INTO stock(full_name)
VALUES ('Ten Square Games');

INSERT INTO stock(ticker)
VALUES ('PLW');


SELECT * FROM stock;