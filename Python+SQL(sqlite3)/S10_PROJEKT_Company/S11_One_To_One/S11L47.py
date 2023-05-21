import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S10_PROJEKT_Company\company.db')
cur = conn.cursor()

cur.executescript('''DROP TABLE IF EXISTS "esmartdata_user";
CREATE TABLE IF NOT EXISTS "esmartdata_user" (
  "id" integer NOT NULL,
  "first_name" text NOT NULL,
  "last_name" text NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT)
);''')

cur.executescript("""
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS esmartdata_developer;

CREATE TABLE IF NOT EXISTS esmartdata_developer (
    user_id INTEGER NOT NULL,
    level   TEXT    NOT NULL,
    PRIMARY KEY(user_id),
    FOREIGN KEY(user_id)
        REFERENCES esmartdata_user (id)
            ON DELETE CASCADE
            ON UPDATE CASCADE);
""")

conn.commit()
conn.close()