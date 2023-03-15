DROP TABLE IF EXISTS Stock;

CREATE TABLE Stock (
	Id         INTEGER PRIMARY KEY,
	Ticker     TEXT    NOT NULL,
	FullName   TEXT    NOT NULL,
	TradingDay TEXT    NOT NULL,
	Price      REAL    NOT NULL CHECK (Price > 0),
	Sector     TEXT    NOT NULL,
	EPS        REAL
);

INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (1, 'AAPL', 'APPLE INC.', '2021-02-03', 134.99, 'Electronic Technology', 3.74);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (2, 'MSFT', 'MICROSOFT CORP.', '2021-02-03', 240.7, 'Technology Services', 6.78);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (3, 'AMZN', 'AMAZON COM INC', '2021-02-03', 3380.29, 'Retail Trade', 42.60);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (4, 'GOOGL', 'ALPHABET INC (GOOGLE) CLASS A', '2021-02-03', 2040.09, 'Technology Services', 59.26);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (5, 'FB', 'FACEBOOK INC', '2021-02-03', 264.88, 'Technology Services', 10.23);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (6, 'TSLA', 'TESLA INC', '2021-02-03', 864.75, 'Consumer Durables', 0.57);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (7, 'BABA', 'ALIBABA GROUP HOLDINGS LTD.', '2021-02-03', 264.70, 'Retail Trade', 8.63);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (8, 'V', 'VISA INC', '2021-02-03', 202.83, 'Finance', 4.85);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (9, 'PYPL', 'PAYPAL HOLDINGS INC', '2021-02-03', 251.93, 'Technology Services', 2.68);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (10, 'ORCL', 'ORACLE CORP', '2021-02-03', 62.26, 'Technology Services', 3.37);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (11, 'JNJ', 'JOHNSON & JOHNSON', '2021-02-03', 160.5, 'Health Technology', NULL);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (12, 'CMCSA', 'COMCAST CORP', '2021-02-03', 50.47, 'Consumer Services', NULL);

-----------------------------------------------------------------------------------------------------------------------------

SELECT * FROM Stock
ORDER BY Price DESC 
LIMIT 5;