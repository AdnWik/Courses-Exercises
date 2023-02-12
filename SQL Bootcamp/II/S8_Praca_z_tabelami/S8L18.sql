CREATE TABLE user (
	id INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	email TEXT
);

DROP TABLE user;

CREATE TABLE user (
	id          INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name   TEXT,
	email       TEXT
);

CREATE TABLE IF NOT EXISTS user (
	id          INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name   TEXT,
	email       TEXT
);

DROP TABLE IF EXISTS user;

CREATE TABLE IF NOT EXISTS user (
	id          INTEGER,
	first_name TEXT,
	last_name   TEXT,
	email       TEXT,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS user (
	id          INTEGER,
	first_name TEXT,
	last_name   TEXT,
	email       TEXT,
	PRIMARY KEY (first_name, last_name)
);