CREATE TABLE user (
    id         INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT
);

CREATE TEMP TABLE user (
    id         INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT
);

DROP TABLE temp.user;

CREATE TEMPORARY TABLE user (
    id         INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT
);

CREATE TABLE temp.user (
    id         INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name  TEXT,
    email      TEXT
);

DROP TABLE temp.user;