DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
        id  INTEGER     PRIMARY KEY,
        first_name  TEXT    NOT NULL,
        last_name   TEXT    NOT NULL,
        age     INTEGER CHECK(age > 0)
);

INSERT INTO customer (id, first_name, last_name, age)
VALUES (1, 'Paul', 'Smith', 40);

SELECT * FROM customer;

INSERT INTO customer (first_name, last_name, age)
VALUES ('John', 'Murphy', 24);

SELECT * FROM customer;

INSERT INTO customer (first_name, last_name, age)
VALUES ('Michaell', 'Scott', 24),
       ('Louis', 'Beck', 37);

SELECT * FROM customer;

UPDATE customer SET age = 25 WHERE id == 3;

SELECT * FROM customer;

DELETE FROM customer WHERE id == 2;

SELECT * FROM customer;

DELETE FROM customer;

SELECT * FROM customer;

DROP TABLE customer;