DROP TABLE IF EXISTS user;

CREATE TABLE user (
    id         INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT,
    country    TEXT DEFAULT 'Poland',
    created_at TEXT DEFAULT CURRENT_TIMESTAMP
);


--Maksymalna wartość dla rowid  9223372036854775807
INSERT INTO user (id,first_name, last_name, email, country)
VALUES (9223372036854775807,'Cordia','Dietrich','Clementina75@yahoo.com','United Arab Emirates');

--Próba wstawienia rekordu z rowid wiekszą niż maksymalna
INSERT INTO user (id,first_name, last_name, email)
VALUES (9223372036854775808,'Adam','kluska','Clementina75@yahoo.com');

SELECT * FROM user;