--Utworzenie tablei
CREATE TABLE IF NOT EXISTS stock_market(
    ticker  TEXT NOT NULL,
    company TEXT NOT NULL,
    price   REAL NOT NULL
);

--Wstawienie kilku wierszy
INSERT INTO stock_market(ticker, company, price)
VALUES ('CDR', 'CD PROJEKT', 260),
       ('PLW', 'Playway' , 650),
       ('TEN', 'Ten Square Games', 550),
       ('PCF', 'PCF Group', 80),
       ('11B', '11 BIT STUDIOS', 550),
       ('BBT', 'Boombit', 18),
       ('CFG', 'Creative Froge', 37);

SELECT * FROM stock_market;

SELECT *, rowid FROM stock_market;
SELECT *, _rowid_ FROM stock_market;
SELECT *, oid FROM stock_market;

SELECT * FROM stock_market WHERE rowid = 5;

EXPLAIN QUERY PLAN SELECT * FROM stock_market WHERE rowid = 5;