DROP TABLE IF EXISTS stock;

CREATE TABLE stock (
    id                    INTEGER   PRIMARY KEY,
    ticker              TEXT         UNIQUE NOT NULL,
    full_name       TEXT          NOT NULL,
    market           TEXT          NOT NULL DEFAULT 'GPW' 
);

INSERT INTO stock (ticker, full_name)
VALUES ('CDR', 'CD PROJEKT'),
             ('PLW', 'Playway'),
             ('TEN', 'Ten Square Games'),
             ('PCF', 'PCF Group'),
             ('11B', '11 BIT STUDIOS'),
             ('BBT', 'Boombit'),
             ('CFG', 'Creative Froge');

SELECT * FROM stock;

UPDATE stock 
SET market = 'New Connect'
WHERE id == 7;

UPDATE stock
SET ticker = 'CDR.PL',
       full_name = 'CD PROJEKT RED'
WHERE id == 1;

UPDATE stock
SET market = 'GPW w Warszawie'
WHERE market == 'GPW';

SELECT * FROM stock;