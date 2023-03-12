DROP TABLE IF EXISTS temp.company;

CREATE TEMP TABLE company (
    id           INTEGER     PRIMARY KEY,
    company_name TEXT        NOT NULL,
    country      TEXT        DEFAULT 'Poland'
);

INSERT INTO company (id, company_name, country)
VALUES (1, 'Microsoft', 'USA');

SELECT * FROM company;

INSERT INTO company (company_name)
VALUES ('Playway');

SELECT * FROM company;

DROP TABLE temp.company;