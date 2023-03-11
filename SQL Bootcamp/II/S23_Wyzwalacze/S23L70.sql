DROP TABLE IF EXISTS stock;
DROP TRIGGER IF EXISTS validate_email;

CREATE TABLE stock (
    id              INTEGER   PRIMARY KEY,
    ticker          TEXT      UNIQUE NOT NULL,
    company         TEXT      NOT NULL,
    price           REAL      NOT NULL,
    contact_email   TEXT      NOT NULL 
);

CREATE TRIGGER validate_email BEFORE INSERT
ON stock
BEGIN
    SELECT CASE
        WHEN NEW.contact_email NOT LIKE '%_@__%.__%' THEN RAISE (ABORT, 'Invalid email')
    END;
END;

INSERT INTO stock (ticker, company, price, contact_email)
VALUES ('CDR', 'CD PROJEKT', 100, 'cdr@esmartdata.org'),
       ('PLW', 'Playway', 312, 'plw@esmartdata.org'),
       ('TEN', 'Ten Square Games', 1000, 'ten@esmartdata.org'),
       ('PCF', 'PCF Group', 411, 'pcf@esmartdata.org'),
       ('11B', '11 BIT STUDIOS', 865, '11b@esmartdata.org'),
       ('BBT', 'Boombit', 11300, 'bbt@esmartdata.org'),
       ('CFG', 'Creative Froge', 497, 'cfg@esmartdata');



SELECT * FROM stock;