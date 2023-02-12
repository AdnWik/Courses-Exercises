CREATE TABLE user (
    id         INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT,
    country    TEXT
);

INSERT INTO user (first_name, last_name, email, country)
VALUES ('Pawel', 'Nowak', 'pawel.nowak@esmartdata.org', 'Poland');

INSERT INTO user (first_name, last_name, email, country)
VALUES ('John', 'Smith', 'john.smith@esmartdata.org', 'USA');

INSERT INTO user (first_name, last_name, email)
VALUES ('Mat', 'Kovac', 'mat.kovac@esmartdata.org');

SELECT * FROM user;

DROP TABLE user;

CREATE TABLE user (
    id         INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT,
    country    TEXT DEFAULT 'Poland'
);

INSERT INTO user (first_name, last_name, email, country)
VALUES ('Pawel', 'Nowak', 'pawel.nowak@esmartdata.org', 'Poland');

INSERT INTO user (first_name, last_name, email, country)
VALUES ('John', 'Smith', 'john.smith@esmartdata.org', 'USA');

INSERT INTO user (first_name, last_name, email)
VALUES ('Mat', 'Kovac', 'mat.kovac@esmartdata.org');

SELECT * FROM user;

DROP TABLE user;

CREATE TABLE user (
    id         INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT,
    country    TEXT DEFAULT 'Poland',
    created_at TEXT DEFAULT CURRENT_TIME
);

INSERT INTO user (first_name, last_name, email, country)
VALUES ('Pawel', 'Nowak', 'pawel.nowak@esmartdata.org', 'Poland');

INSERT INTO user (first_name, last_name, email, country)
VALUES ('John', 'Smith', 'john.smith@esmartdata.org', 'USA');

INSERT INTO user (first_name, last_name, email)
VALUES ('Mat', 'Kovac', 'mat.kovac@esmartdata.org');

SELECT * FROM user;
