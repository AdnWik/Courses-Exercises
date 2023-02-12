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
VALUES ('TE', 'Ten Square Games');

SELECT * FROM stock;

DROP TABLE IF EXISTS stock;

CREATE TABLE stock (
    id        INTEGER PRIMARY KEY,
    ticker    TEXT CHECK (LENGTH(ticker) == 3),
    full_name TEXT
);

INSERT INTO stock (ticker, full_name)
VALUES ('CDR', 'CD Projekt');

INSERT INTO stock (ticker, full_name)
VALUES ('PLW', 'Playway');

INSERT INTO stock (ticker, full_name)
VALUES ('TE', 'Ten Square Games');

SELECT * FROM stock;

DROP TABLE IF EXISTS stock;

INSERT INTO stock (ticker, full_name)
VALUES ('TEN', '');

DROP TABLE IF EXISTS stock;

CREATE TABLE stock (
    id        INTEGER PRIMARY KEY,
    ticker    TEXT CHECK (LENGTH(ticker) == 3),
    full_name TEXT CHECK (full_name != '')
);

INSERT INTO stock (ticker, full_name)
VALUES ('CDR', 'CD Projekt');

INSERT INTO stock (ticker, full_name)
VALUES ('PLW', 'Playway');

SELECT * FROM stock;

DROP TABLE IF EXISTS stock;

INSERT INTO stock (ticker, full_name)
VALUES ('TEN', '');

DROP TABLE IF EXISTS stock;

CREATE TABLE stock (
    id        INTEGER PRIMARY KEY,
    ticker    TEXT CHECK (LENGTH(ticker) == 3),
    full_name TEXT CHECK (full_name != ''),
    price     REAL CHECK (price > 0)
);

INSERT INTO stock (ticker, full_name, price)
VALUES ('CDR', 'CD Projekt', 250);

INSERT INTO stock (ticker, full_name, price)
VALUES ('PLW', 'Playway', 650);

SELECT * FROM stock;

DROP TABLE IF EXISTS stock;

INSERT INTO stock (ticker, full_name, price)
VALUES ('TEN', 'Ten Square Games', 500);
