DROP TABLE IF EXISTS user;

CREATE TABLE IF NOT EXISTS user (
    id         INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT
);

CREATE TABLE IF NOT EXISTS user (
    id         INTEGER,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT,
    PRIMARY KEY (id)
);

SELECT * FROM user;

INSERT INTO user (first_name, last_name, email)
VALUES ('Paweł', 'Nowak', 'nowak@gmail.com');

INSERT INTO user (first_name, last_name, email)
VALUES ('Adam', 'Dobry', 'dobry@gmail.com');

INSERT INTO user (id, first_name, last_name, email)
VALUES (NULL, 'Dorian', 'Zly', 'zly@gmail.com');

SELECT * FROM user;