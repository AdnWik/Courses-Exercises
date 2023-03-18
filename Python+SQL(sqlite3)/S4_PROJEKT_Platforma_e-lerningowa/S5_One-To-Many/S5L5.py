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

cur.executescript("""
DROP TABLE IF EXISTS esmartdata_course;

CREATE TABLE esmartdata_course (
    id              INTEGER NOT NULL,
    title           TEXT    NOT NULL,
    subtitle        TEXT    NOT NULL,
    description     TEXT    NOT NULL,
    category        TEXT    NOT NULL,
    subcategory     TEXT    NOT NULL,
    language        TEXT    NOT NULL,
    length          TEXT    NOT NULL,
    rating          REAL    NOT NULL,
    referral_link   TEXT    NOT NULL,
    instructor_id   INTEGER NOT NULL,
    PRIMARY KEY ('id' AUTOINCREMENT),
    FOREIGN KEY (instructor_id)
    REFERENCES esmartdata_instructor ('id')
    ON DELETE CASCADE ON UPDATE CASCADE
);

""")

con.commit()
con.close()