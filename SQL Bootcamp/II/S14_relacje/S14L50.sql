DROP TABLE IF EXISTS developer;
DROP TABLE IF EXISTS user;

PRAGMA foreign_keys = ON;
PRAGMA foreign_keys;

CREATE TABLE user (
    id                INTEGER PRIMARY KEY,
    first_name  TEXT NOT NULL,
    last_name  TEXT NOT NULL,
    gender       TEXT,
    birth_date TEXT
);

CREATE TABLE developer (
    user_id         INTEGER PRIMARY KEY REFERENCES user (id) ON DELETE CASCADE,
    job_title       TEXT NOT NULL,
    department TEXT NOT NULL
);

INSERT INTO user (first_name, last_name, gender, birth_date)
VALUES ('Tom', 'Cooper', 'M', '1990-01-10'),
             ('John', 'Smith', 'M', '1992-01-10'),
             ('Mike', 'Pond', 'M', '1985-01-10');

INSERT INTO developer (user_id, job_title, department)
VALUES (1, 'Python Developer', 'IT'),
             (2, 'SQL Developer', 'IT'),
             (3, 'JAVA Developer', 'IT');



SELECT * FROM user;
SELECT * FROM developer;
