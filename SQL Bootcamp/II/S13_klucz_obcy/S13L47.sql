DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS user_group;

PRAGMA foreign_keys = ON;
PRAGMA foreign_keys;

CREATE TABLE user_group (
    id                  INTEGER PRIMARY KEY,
    group_name TEXT NOT NULL
);

CREATE TABLE user (
    id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL,
    user_group_id INTEGER ,
    FOREIGN KEY (user_group_id)
    REFERENCES user_group (id) ON UPDATE CASCADE
);

INSERT INTO user_group (group_name)
VALUES ('admin'),
             ('user'),
             ('developer'),
             ('tester');

INSERT INTO user (first_name, last_name, email, user_group_id)
VALUES ('Jovan', 'Vandervort', 'jovan.v@esmartdata.org', 1),
             ('Toby', 'Nicolas', 'toby.n@esmartdata.org', 2),
             ('Addie', 'Harris' , 'addie.h@esmartdata.org', 4);

--DELETE FROM user_group WHERE id == 4;
UPDATE user_group SET id = 5 WHERE id == 4;

SELECT * FROM user_group;
SELECT * FROM user;