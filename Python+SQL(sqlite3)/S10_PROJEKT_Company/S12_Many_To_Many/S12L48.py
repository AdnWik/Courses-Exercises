import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S10_PROJEKT_Company\company.db')
cur = conn.cursor()

cur.executescript('''DROP TABLE IF EXISTS "esmartdata_user";

CREATE TABLE IF NOT EXISTS "esmartdata_user" (
  "id" integer NOT NULL,
  "first_name" text NOT NULL,
  "last_name" text NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT)
);

DROP TABLE IF EXISTS "esmartdata_developer";

CREATE TABLE IF NOT EXISTS "esmartdata_developer" (
  "user_id" integer NOT NULL,
  "level" text NOT NULL,
  PRIMARY KEY("user_id"),
  FOREIGN KEY("user_id") REFERENCES "esmartdata_user"("id")
  ON DELETE CASCADE ON UPDATE CASCADE
);''')

cur.executescript("""
DROP TABLE IF EXISTS esmartdata_tech;

CREATE TABLE IF NOT EXISTS esmartdata_tech (
    id      INTEGER NOT NULL,
    name    TEXT    NOT NULL,
    PRIMARY KEY(id AUTOINCREMENT)
);

DROP TABLE IF EXISTS esmartdata_developer_techs;

CREATE TABLE IF NOT EXISTS esmartdata_developer_techs (
    id              INTEGER NOT NULL,
    developer_id    INTEGER NOT NULL,
    tech_id         INTEGER NOT NULL,
    PRIMARY KEY(id AUTOINCREMENT),
    FOREIGN KEY(developer_id) REFERENCES esmartdata_developer(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY(tech_id) REFERENCES esmartdata_tech(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

""")

conn.commit()
conn.close()