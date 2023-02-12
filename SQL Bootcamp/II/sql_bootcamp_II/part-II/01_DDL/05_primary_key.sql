DROP TABLE IF EXISTS user;

CREATE TABLE user (
    id         INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT
);

SELECT * FROM user;

INSERT INTO user (first_name, last_name, email)
VALUES ('Pawel', 'Nowak', 'pawel.nowak@esmartdata.org');

INSERT INTO user (first_name, last_name, email)
VALUES ('Jan', 'Nowak', 'jan.nowak@esmartdata.org');

INSERT INTO user (first_name, last_name, email)
VALUES ('Pawel', 'Kowal', 'pawel.kowal@esmartdata.org');

INSERT INTO user (id, first_name, last_name, email)
VALUES (4, 'Pawel', 'Kowal', 'pawel.kowal@esmartdata.org');

DROP TABLE IF EXISTS user;

CREATE TABLE user (
    id         INTEGER,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT,
    PRIMARY KEY (id)
);

SELECT * FROM user;

INSERT INTO user (first_name, last_name, email)
VALUES ('Pawel', 'Nowak', 'pawel.nowak@esmartdata.org');

INSERT INTO user (first_name, last_name, email)
VALUES ('Jan', 'Nowak', 'jan.nowak@esmartdata.org');

INSERT INTO user (first_name, last_name, email)
VALUES ('Pawel', 'Kowal', 'pawel.kowal@esmartdata.org');

INSERT INTO user (id, first_name, last_name, email)
VALUES (3, 'Pawel', 'Kow', 'pawel.kowal@esmartdata.org');

INSERT INTO user (id, first_name, last_name, email)
VALUES (NULL, 'Pawel', 'Kow', 'pawel.kowal@esmartdata.org');

DROP TABLE IF EXISTS user;

CREATE TABLE user (
    first_name TEXT,
    last_name  TEXT,
    email      TEXT,
    PRIMARY KEY (email)
);

SELECT * FROM user;

INSERT INTO user (first_name, last_name, email)
VALUES ('Pawel', 'Nowak', 'pawel.nowak@esmartdata.org');

INSERT INTO user (first_name, last_name, email)
VALUES ('Jan', 'Nowak', 'jan.nowak@esmartdata.org');

INSERT INTO user (first_name, last_name, email)
VALUES ('Pawel', 'Kowal', 'pawel.kowal@esmartdata.org');

INSERT INTO user (first_name, last_name, email)
VALUES ('Pawel', 'Kow', 'pawel.kowal@esmartdata.org');

INSERT INTO user (first_name, last_name, email)
VALUES ('Pawel', 'Kow', NULL);

DROP TABLE IF EXISTS user;

CREATE TABLE user (
    first_name TEXT,
    last_name  TEXT,
    email      TEXT NOT NULL,
    PRIMARY KEY (email)
);

SELECT * FROM user;

INSERT INTO user (first_name, last_name, email)
VALUES ('Pawel', 'Nowak', 'pawel.nowak@esmartdata.org');

INSERT INTO user (first_name, last_name, email)
VALUES ('Jan', 'Nowak', 'jan.nowak@esmartdata.org');

INSERT INTO user (first_name, last_name, email)
VALUES ('Pawel', 'Kowal', 'pawel.kowal@esmartdata.org');

INSERT INTO user (first_name, last_name, email)
VALUES ('Pawel', 'Kow', 'pawel.kowal@esmartdata.org');

INSERT INTO user (first_name, last_name, email)
VALUES ('Pawel', 'Kow', NULL);

CREATE TABLE stock (
    company        TEXT NOT NULL,
    stock_exchange TEXT NOT NULL,
    price          REAL,
    PRIMARY KEY (company, stock_exchange)
);

DROP TABLE stock;
DROP TABLE user;
