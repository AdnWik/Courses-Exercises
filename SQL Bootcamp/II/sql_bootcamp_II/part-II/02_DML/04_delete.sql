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

DELETE FROM stock WHERE id == 5;

DELETE FROM stock;

DELETE FROM stock WHERE full_name LIKE 'C%';