import sqlite3

con = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa/esmartdata.sqlite3')
cur = con.cursor()

cur.executescript("""
    DROP TABLE IF EXISTS esmartdata_instructor;

    CREATE TABLE esmartdata_instructor (
    id          INTEGER NOT NULL    PRIMARY KEY AUTOINCREMENT,
    first_name  TEXT    NOT NULL,
    last_name   TEXT    NOT NULL,
    description TEXT    NOT NULL
    );
""")

con.commit()
con.close()