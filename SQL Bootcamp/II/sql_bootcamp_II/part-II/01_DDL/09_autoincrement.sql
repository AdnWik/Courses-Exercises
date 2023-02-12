DROP TABLE IF EXISTS user;

CREATE TABLE user (
    id         INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT,
    country    TEXT    DEFAULT 'Poland'
);

-- Maksymalna wartość dla rowid 9223372036854775807
INSERT INTO user (id, first_name, last_name, email)
VALUES (9223372036854775807, 'Pawel', 'Nowak', 'pawel.nowak@esmartdata.org');

-- Próba wstawienia rekordu z większą wartością rowid niż maksymalna
INSERT INTO user (id, first_name, last_name, email, country)
VALUES (9223372036854775808, 'John', 'Smith', 'john.smith@esmartdata.org', 'USA');

INSERT INTO user (first_name, last_name, email, country)
VALUES ('John', 'Smith', 'john.smith@esmartdata.org', 'USA');

INSERT INTO user (first_name, last_name, email, country)
VALUES ('Brad', 'Smith', 'brad.smith@esmartdata.org', 'USA');

SELECT * FROM user;

DROP TABLE IF EXISTS user;

CREATE TABLE user (
    id         INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT,
    country    TEXT    DEFAULT 'Poland'
);

-- Maksymalna wartość dla rowid 9223372036854775807
INSERT INTO user (id, first_name, last_name, email)
VALUES (9223372036854775807, 'Pawel', 'Nowak', 'pawel.nowak@esmartdata.org');

-- Próba wstawienia rekordu z większą wartością rowid niż maksymalna
INSERT INTO user (id, first_name, last_name, email, country)
VALUES (9223372036854775808, 'John', 'Smith', 'john.smith@esmartdata.org', 'USA');

INSERT INTO user (first_name, last_name, email, country)
VALUES ('John', 'Smith', 'john.smith@esmartdata.org', 'USA');

INSERT INTO user (first_name, last_name, email, country)
VALUES ('Brad', 'Smith', 'brad.smith@esmartdata.org', 'USA');

SELECT * FROM user;