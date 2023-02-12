DROP TABLE IF EXISTS stock;

CREATE TABLE stock (
    id        INTEGER PRIMARY KEY,
    ticker    TEXT    NOT NULL,
    full_name TEXT    NOT NULL,
    market    TEXT    NOT NULL DEFAULT 'GPW'
);

INSERT INTO stock (id, ticker, full_name, market)
VALUES (1, 'CDR', 'CD Projekt', 'GPW');

INSERT INTO stock 
VALUES (2, 'PLW', 'Playway', 'GPW');

INSERT INTO stock (ticker, full_name, market)
VALUES ('TEN', 'Ten Square Games', 'GPW');

INSERT INTO stock (ticker, full_name)
VALUES ('BBT', 'Boombit');

INSERT INTO stock (ticker, full_name, market)
VALUES ('CFG', 'Creative Forge', 'New Connect');

SELECT * FROM stock;

DROP TABLE IF EXISTS stock;

CREATE TABLE stock (
    id        INTEGER PRIMARY KEY,
    ticker    TEXT    NOT NULL,
    full_name TEXT    NOT NULL,
    market    TEXT    NOT NULL DEFAULT 'GPW'
);

INSERT INTO stock (ticker, full_name)
VALUES ('CDR', 'CD Projekt'),
	   ('PLW', 'Playway'),
	   ('BBT', 'Boombit');
	   
SELECT * FROM stock;	   