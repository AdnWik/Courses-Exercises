PRAGMA foreign_keys;

CREATE TABLE user_group (
    id         INTEGER PRIMARY KEY,
    group_name TEXT    NOT NULL
);

CREATE TABLE user (
    id            INTEGER PRIMARY KEY,
    first_name    TEXT,
    last_name     TEXT,
    email         TEXT    UNIQUE,
    user_group_id INTEGER NOT NULL
);

INSERT INTO user_group (group_name) 
VALUES ('admin'),
       ('user'), 
       ('developer'), 
       ('tester');
	   
SELECT * FROM user_group;	  

INSERT INTO user (first_name, last_name, email, user_group_id)
VALUES ('John', 'Smith', 'john.smith@esmartdata.org', 1),
       ('Mark', 'Smith', 'mark.smith@esmartdata.org', 2);
	  
SELECT * FROM user; 

INSERT INTO user (first_name, last_name, email, user_group_id)
VALUES ('John', 'Doe', 'john.doe@esmartdata.org', 10);

SELECT * FROM user; 

DROP TABLE user;
DROP TABLE user_group;

CREATE TABLE user_group (
    id         INTEGER PRIMARY KEY,
    group_name TEXT    NOT NULL
);

CREATE TABLE user (
    id            INTEGER PRIMARY KEY,
    first_name    TEXT,
    last_name     TEXT,
    email         TEXT    UNIQUE,
    user_group_id INTEGER NOT NULL REFERENCES user_group (id)
);

INSERT INTO user_group (group_name) 
VALUES ('admin'),
       ('user'), 
       ('developer'), 
       ('tester');
	   
SELECT * FROM user_group;	  

INSERT INTO user (first_name, last_name, email, user_group_id)
VALUES ('John', 'Smith', 'john.smith@esmartdata.org', 1),
       ('Mark', 'Smith', 'mark.smith@esmartdata.org', 2);
	  
SELECT * FROM user; 

INSERT INTO user (first_name, last_name, email, user_group_id)
VALUES ('John', 'Doe', 'john.doe@esmartdata.org', 10);

SELECT * FROM user; 

DROP TABLE user;
DROP TABLE user_group;

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
	   
SELECT * FROM user_group;	  

INSERT INTO user (first_name, last_name, email, user_group_id)
VALUES ('John', 'Smith', 'john.smith@esmartdata.org', 1),
       ('Mark', 'Smith', 'mark.smith@esmartdata.org', 2);
	  
SELECT * FROM user; 

INSERT INTO user (first_name, last_name, email, user_group_id)
VALUES ('John', 'Doe', 'john.doe@esmartdata.org', 10);

SELECT * FROM user; 

DROP TABLE user;
DROP TABLE user_group;
