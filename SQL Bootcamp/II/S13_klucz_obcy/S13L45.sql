DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS user_group;


PRAGMA foreign_keys = ON;
PRAGMA foreign_keys;



CREATE TABLE user_group(
    id         INTEGER PRIMARY KEY,
    group_name TEXT NOT NULL
);

CREATE TABLE user (
    id            INTEGER PRIMARY KEY,
    first_name    TEXT NOT NULL,
    last_name     TEXT NOT NULL,
    email         TEXT UNIQUE,
    user_group_id INTEGER NOT NULL, --REFERENCES user_group (id)
    FOREIGN KEY (user_group_id)
    REFERENCES user_group (id)
);

INSERT INTO user_group (group_name)
VALUES('admin'),
      ('user'),
      ('developer'),
      ('tester');

INSERT INTO user (first_name, last_name, email, user_group_id)
VALUES ('John', 'Smith', 'john.smith@esmartdata.org', 1),
       ('Mark', 'Smith', 'mark.smith@esmartdata.org', 2);

SELECT * FROM user_group;
SELECT * FROM user;