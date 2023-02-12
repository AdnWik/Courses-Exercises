DROP TABLE IF EXISTS stock;
DROP TABLE IF EXISTS stock_logs;

CREATE TABLE stock (
    id            INTEGER PRIMARY KEY,
    ticker        TEXT    NOT NULL,
    company       TEXT    NOT NULL,
    price         REAL    NOT NULL,
    contact_email TEXT    NOT NULL
);

INSERT INTO stock (ticker, company, price, contact_email)
VALUES ('PLW', 'Playway', 650, 'ir@playway.com'),
       ('BBT', 'Boombit', 19, 'ir@boombit.com'),
       ('CDR', 'CD Projekt', 270, 'gielda@cdprojekt.com');
          
SELECT * FROM stock;

CREATE TABLE stock_logs (
    id                INTEGER PRIMARY KEY,
    old_id            INTEGER,
    new_id            INTEGER,
    old_contact_email TEXT,
    new_contact_email TEXT,
    action_type       TEXT,
    created_at        TEXT
);

CREATE TRIGGER logs_update_email AFTER UPDATE
ON stock WHEN OLD.contact_email != NEW.contact_email
BEGIN
    INSERT INTO stock_logs (
        old_id,
        new_id,
        old_contact_email,
        new_contact_email,
        action_type,
        created_at
    )
    VALUES (
        OLD.id,
        NEW.id,
        OLD.contact_email,
        NEW.contact_email,
        'UPDATE',
        DATETIME('now')
    );
END;

SELECT * FROM stock;
SELECT * FROM stock_logs;

UPDATE stock SET contact_email = 'ir@bbt.com' WHERE id == 2;
