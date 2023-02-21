DROP TABLE IF EXISTS user;

CREATE TABLE user (
    id         INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT,
    country    TEXT DEFAULT 'Poland',
    created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO user (first_name, last_name, email, country)
VALUES ('Cordia','Dietrich','Clementina75@yahoo.com','United Arab Emirates');

INSERT INTO user (first_name, last_name, email, country)
VALUES ('Thora','Hills','Margaret_Cole@hotmail.com','Iraq');

INSERT INTO user (first_name, last_name, email, country)
VALUES ('Polly','Deckow','Freeda.Balistreri@gmail.com','Qatar');

INSERT INTO user (first_name, last_name, email)
VALUES ('Polly','Deckow','Freeda.Balistreri@gmail.com');

SELECT * FROM user;