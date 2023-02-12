DROP TABLE IF EXISTS stock;

CREATE TABLE stock (
    id        INTEGER PRIMARY KEY,
    ticker    TEXT,
    full_name TEXT
);

INSERT INTO stock (ticker, full_name)
VALUES ('CDR', 'CD Projekt');

INSERT INTO stock (ticker)
VALUES ('PLW');

INSERT INTO stock (full_name)
VALUES ('Ten Square Games');

SELECT * FROM stock;

DROP TABLE IF EXISTS stock;

CREATE TABLE stock (
    id        INTEGER PRIMARY KEY,
    ticker    TEXT NOT NULL,
    full_name TEXT NOT NULL
);

INSERT INTO stock (ticker, full_name)
VALUES ('CDR', 'CD Projekt');

INSERT INTO stock (ticker)
VALUES ('PLW');

INSERT INTO stock (full_name)
VALUES ('Ten Square Games');

SELECT * FROM stock;