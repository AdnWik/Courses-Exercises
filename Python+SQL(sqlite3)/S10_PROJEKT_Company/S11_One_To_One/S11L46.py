import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S10_PROJEKT_Company\company.db')
cur = conn.cursor()

cur.executescript("""
DROP TABLE IF EXISTS 'esmartdata_user';

CREATE TABLE IF NOT EXISTS 'esmartdata_user'(
    'id'          INTEGER NOT NULL, 
    'first_name'  TEXT    NOT NULL, 
    'last_name'   TEXT    NOT NULL,
    PRIMARY KEY ('id' AUTOINCREMENT)
    );
""")
conn.commit()
conn.close()
