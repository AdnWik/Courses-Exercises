DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS stock_exchange;

PRAGMA foreign_keys = ON;
PRAGMA foreign_keys;

CREATE TABLE stock_exchange (
        id                          INTEGER     PRIMARY KEY,
        name                    TEXT           NOT NULL,
        country                 TEXT           NOT NULL
);

CREATE TABLE company (
        id                                 INTEGER      PRIMARY KEY,
        company_name           TEXT            NOT NULL,
        country                        TEXT            DEFAULT 'USA',
        stock_exchange_id       INTEGER     NOT NULL REFERENCES stock_exchange (id)
);

INSERT INTO stock_exchange (name, country)
VALUES ('London Stock Exchange Group', 'United Kingdom'),
             ('Nasdaq', 'USA'),
             ('Shanghai Stock Exchange', 'Shanghai'),
             ('New York Stock Exchange', 'USA');

SELECT * FROM stock_exchange;

INSERT INTO company (company_name, country, stock_exchange_id)
VALUES ('Microsoft', 'USA', 2);

INSERT INTO company (company_name, country, stock_exchange_id)
VALUES ('Amazon', 'USA', 2);

INSERT INTO company (company_name, country, stock_exchange_id)
VALUES ('JPMorgan', 'USA', 4);

SELECT * FROM company;

SELECT t1.id,
             t1.company_name,
             t1.country,
             t2.name 
FROM company AS t1
LEFT JOIN stock_exchange AS t2 ON t1.stock_exchange_id = t2.id;