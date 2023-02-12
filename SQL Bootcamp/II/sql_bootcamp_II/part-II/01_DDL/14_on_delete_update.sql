DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS user_group;

CREATE TABLE user_group (
    id         INTEGER PRIMARY KEY,
    group_name TEXT    NOT NULL
);

CREATE TABLE user (
    id            INTEGER PRIMARY KEY,
    first_name    TEXT,
    last_name     TEXT,
    email         TEXT    UNIQUE,
    user_group_id INTEGER NOT NULL,
    FOREIGN KEY (user_group_id)
    REFERENCES user_group (id) 
);

INSERT INTO user_group (group_name) 
VALUES ('admin'),
       ('user'),
       ('developer'), 
       ('tester');
	   
INSERT INTO user (first_name, last_name, email, user_group_id)
VALUES ('John', 'Smith', 'john.smith@esmartdata.org', 1),
       ('Mark', 'Smith', 'mark.smith@esmartdata.org', 2),
       ('John', 'Doe', 'john.doe@esmartdata.org', 4);
	   
SELECT * FROM user_group;
SELECT * FROM user;  

DELETE FROM user_group WHERE id == 4;
DELETE FROM user_group WHERE id == 3;

DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS user_group;

CREATE TABLE user_group (
    id         INTEGER PRIMARY KEY,
    group_name TEXT    NOT NULL
);

CREATE TABLE user (
    id            INTEGER PRIMARY KEY,
    first_name    TEXT,
    last_name     TEXT,
    email         TEXT    UNIQUE,
    user_group_id INTEGER NOT NULL,
    FOREIGN KEY (user_group_id)
    REFERENCES user_group (id) ON DELETE CASCADE
);

INSERT INTO user_group (group_name) 
VALUES ('admin'),
       ('user'),
       ('developer'), 
       ('tester');
	   
INSERT INTO user (first_name, last_name, email, user_group_id)
VALUES ('John', 'Smith', 'john.smith@esmartdata.org', 1),
       ('Mark', 'Smith', 'mark.smith@esmartdata.org', 2),
       ('John', 'Doe', 'john.doe@esmartdata.org', 4);
	   
SELECT * FROM user_group;
SELECT * FROM user;  

DELETE FROM user_group WHERE id == 4;

DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS user_group;

CREATE TABLE user_group (
    id         INTEGER PRIMARY KEY,
    group_name TEXT    NOT NULL
);

CREATE TABLE user (
    id            INTEGER PRIMARY KEY,
    first_name    TEXT,
    last_name     TEXT,
    email         TEXT    UNIQUE,
    user_group_id INTEGER,
    FOREIGN KEY (user_group_id)
    REFERENCES user_group (id) ON DELETE SET NULL
);

INSERT INTO user_group (group_name) 
VALUES ('admin'),
       ('user'),
       ('developer'), 
       ('tester');
	   
INSERT INTO user (first_name, last_name, email, user_group_id)
VALUES ('John', 'Smith', 'john.smith@esmartdata.org', 1),
       ('Mark', 'Smith', 'mark.smith@esmartdata.org', 2),
       ('John', 'Doe', 'john.doe@esmartdata.org', 4);
	   
SELECT * FROM user_group;
SELECT * FROM user;  

DELETE FROM user_group WHERE id == 4;

DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS user_group;

CREATE TABLE user_group (
    id         INTEGER PRIMARY KEY,
    group_name TEXT    NOT NULL
);

CREATE TABLE user (
    id            INTEGER PRIMARY KEY,
    first_name    TEXT,
    last_name     TEXT,
    email         TEXT    UNIQUE,
    user_group_id INTEGER,
    FOREIGN KEY (user_group_id)
    REFERENCES user_group (id) ON UPDATE CASCADE
);

INSERT INTO user_group (group_name) 
VALUES ('admin'),
       ('user'),
       ('developer'), 
       ('tester');
	   
INSERT INTO user (first_name, last_name, email, user_group_id)
VALUES ('John', 'Smith', 'john.smith@esmartdata.org', 1),
       ('Mark', 'Smith', 'mark.smith@esmartdata.org', 2),
       ('John', 'Doe', 'john.doe@esmartdata.org', 4);
	   
SELECT * FROM user_group;
SELECT * FROM user;  

UPDATE user_group SET id = 5 WHERE id == 4;	   
