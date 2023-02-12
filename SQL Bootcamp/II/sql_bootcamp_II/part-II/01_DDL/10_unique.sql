CREATE TABLE stock (
    id        INTEGER PRIMARY KEY,
    ticker    TEXT,
    full_name TEXT
);

INSERT INTO stock (ticker, full_name)
VALUES ('CDR', 'CD Projekt');

INSERT INTO stock (ticker, full_name)
VALUES ('PLW', 'Playway');

INSERT INTO stock (ticker, full_name)
VALUES ('TEN', 'Ten Square Games');

SELECT * FROM stock;

INSERT INTO stock (ticker, full_name)
VALUES ('TEN', 'Ten Square Games');

DROP TABLE stock;

CREATE TABLE stock (
    id        INTEGER PRIMARY KEY,
    ticker    TEXT UNIQUE,
    full_name TEXT
);

INSERT INTO stock (ticker, full_name)
VALUES ('CDR', 'CD Projekt');

INSERT INTO stock (ticker, full_name)
VALUES ('PLW', 'Playway');

INSERT INTO stock (ticker, full_name)
VALUES ('TEN', 'Ten Square Games');

SELECT * FROM stock;

INSERT INTO stock (ticker, full_name)
VALUES ('TEN', 'Ten Square Games');

SELECT * FROM stock WHERE ticker == 'CDR';
EXPLAIN QUERY PLAN SELECT * FROM stock WHERE ticker == 'CDR';
