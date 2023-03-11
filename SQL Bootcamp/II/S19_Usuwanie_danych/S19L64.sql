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

DELETE FROM stock WHERE id == 6;
DELETE FROM stock WHERE full_name LIKE 'C%';

SELECT * FROM stock;