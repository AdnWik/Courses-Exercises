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
       ('BBT', 'Boombit'),
       ('ULG', 'Ultimate Games'),
       ('CFG', 'Creative Forge');
	   
SELECT * FROM stock;

UPDATE stock SET market = 'New Connect' WHERE id == 5;	 

SELECT * FROM stock;  

UPDATE stock 
SET market = 'New Connect' 
WHERE id == 5;

UPDATE stock 
SET ticker = 'CDR.PL', full_name = 'CD Projekt Red' 
WHERE id == 1;

UPDATE stock 
SET market = 'GPW w Warszawie'
WHERE market == 'GPW';

SELECT * FROM stock;

UPDATE stock 
SET ticker = 'CDR';