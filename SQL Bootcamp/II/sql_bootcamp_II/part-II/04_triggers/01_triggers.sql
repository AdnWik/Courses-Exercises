DROP TABLE IF EXISTS stock;

CREATE TABLE stock (
    id            INTEGER PRIMARY KEY,
    ticker        TEXT    NOT NULL,
    company       TEXT    NOT NULL,
    price         REAL    NOT NULL,
    contact_email TEXT    NOT NULL
);

INSERT INTO stock (ticker, company, price, contact_email)
VALUES ('PLW', 'Playway', 650, 'ir@playway.com'),
       ('BBT', 'Boombit', 19, 'ir@bbt');
       	   
SELECT * FROM stock;
DELETE FROM stock;

CREATE TRIGGER validate_email BEFORE INSERT
ON stock
BEGIN
    SELECT CASE
               WHEN NEW.contact_email NOT LIKE '%_@__%.__%' THEN RAISE(ABORT, 'Invalid email')
    END;
END;

INSERT INTO stock (ticker, company, price, contact_email)
VALUES ('PLW', 'Playway', 650, 'ir@playway.com');

INSERT INTO stock (ticker, company, price, contact_email)
VALUES ('BBT', 'Boombit', 19, 'ir@bbt');

SELECT * FROM stock;

DROP TRIGGER validate_email;

INSERT INTO stock (ticker, company, price, contact_email)
VALUES ('BBT', 'Boombit', 19, 'ir@bbt');
