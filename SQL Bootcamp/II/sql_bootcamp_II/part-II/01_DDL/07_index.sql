DROP TABLE IF EXISTS stock_market;

CREATE TABLE stock_market (
    id      INTEGER PRIMARY KEY,
    ticker  TEXT    NOT NULL,
    company TEXT    NOT NULL,
    price   REAL    NOT NULL
);

INSERT INTO stock_market (ticker, company, price)
VALUES ('CDR', 'CD Projekt', 260),
       ('PLW', 'Playway', 650),
       ('TEN', 'Ten Square Games', 550),
       ('PCF', 'PCF Group', 80),
       ('11B', '11 BIT Studios', 550),
       ('BBT', 'Boombit', 18),
       ('CFG', 'Creative Forge', 37);
	   
SELECT * FROM stock_market;		
EXPLAIN QUERY PLAN SELECT * FROM stock_market WHERE id == 5;
EXPLAIN QUERY PLAN SELECT * FROM stock_market WHERE ticker == 'CFG';

CREATE INDEX idx_ticker ON stock_market (ticker);

EXPLAIN QUERY PLAN SELECT * FROM stock_market WHERE ticker == 'CFG';

DROP INDEX idx_ticker;

EXPLAIN QUERY PLAN SELECT * FROM stock_market WHERE ticker == 'CFG';