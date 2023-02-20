DROP TABLE IF EXISTS user;


CREATE TABLE IF NOT EXISTS user (
    first_name TEXT,
    last_name  TEXT,
    email      TEXT NOT NULL,
    PRIMARY KEY (email)
);


INSERT INTO user (first_name, last_name, email)
VALUES ('Paweł', 'Nowak', 'nowak@gmail.com');

INSERT INTO user (first_name, last_name, email)
VALUES ('Adam', 'Dobry', 'dobry@gmail.com');

INSERT INTO user (first_name, last_name, email)
VALUES ('Dorian', 'Zly', 'zly@gmail.com');

INSERT INTO user (first_name, last_name, email)
VALUES ('Dorian', 'Zly', NULL);

SELECT * FROM user;