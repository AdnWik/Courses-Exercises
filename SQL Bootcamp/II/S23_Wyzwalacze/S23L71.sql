DROP TABLE IF EXISTS stock;
DROP TABLE IF EXISTS stock_logs;
DROP TRIGGER IF EXISTS logs_update_email;

CREATE TABLE stock (
    id              INTEGER   PRIMARY KEY,
    ticker          TEXT      UNIQUE NOT NULL,
    company         TEXT      NOT NULL,
    price           REAL      NOT NULL,
    contact_email   TEXT      NOT NULL 
);

CREATE TABLE stock_logs (
    id                  INTEGER     PRIMARY KEY,
    old_id              INTEGER,
    new_id              INTEGER,
    old_contact_email   TEXT,
    new_contact_email   TEXT,
    action_type         TEXT,
    created_at          TEXT
);

CREATE TRIGGER logs_update_email AFTER UPDATE
ON stock WHEN OLD.contact_email != NEW.contact_email
BEGIN
    INSERT INTO stock_logs (old_id,
                            new_id,
                            old_contact_email,
                            new_contact_email,
                            action_type,
                            created_at)
    VALUES (
        OLD.id,
        NEW.id,
        OLD.contact_email,
        NEW.contact_email,
        'UPDATE',
        DATETIME('now')
    );
END;



INSERT INTO stock (ticker, company, price, contact_email)
VALUES ('CDR', 'CD PROJEKT', 100, 'cdr@esmartdata.org'),
       ('PLW', 'Playway', 312, 'plw@esmartdata.org'),
       ('TEN', 'Ten Square Games', 1000, 'ten@esmartdata.org');
	   
UPDATE stock SET contact_email = 'TEST'
WHERE id == 1;

UPDATE stock SET contact_email = 'cdr@esmartdata.org'
WHERE id == 1;



SELECT * FROM stock;
SELECT * FROM stock_logs;