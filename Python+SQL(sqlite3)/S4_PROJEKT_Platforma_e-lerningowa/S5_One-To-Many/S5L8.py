import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa/esmartdata.sqlite3')
cur = conn.cursor()

cur.executescript('''DROP TABLE IF EXISTS "esmartdata_instructor";
CREATE TABLE IF NOT EXISTS "esmartdata_instructor" (
  "id" integer NOT NULL,
  "first_name" text NOT NULL,
  "last_name" text NOT NULL,
  "description" text NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT)
);

DROP TABLE IF EXISTS "esmartdata_course";
CREATE TABLE IF NOT EXISTS "esmartdata_course" (
  "id" integer NOT NULL,
  "title" text NOT NULL,
  "subtitle" text NOT NULL,
  "description" text NOT NULL,
  "category" text NOT NULL,
  "subcategory" text NOT NULL,
  "language" text NOT NULL,
  "length" text NOT NULL,
  "rating" real NOT NULL,
  "referral_link" text NOT NULL,
  "instructor_id" integer NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT),
  FOREIGN KEY("instructor_id") REFERENCES "esmartdata_instructor"("id")
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO
  "esmartdata_instructor" ("id", "first_name", "last_name", "description")
VALUES
  (
    1,
    "Paweł",
    "Krakowiak",
    "Data Scientist/Python Developer/Securities Broker"
  );

INSERT INTO
  "esmartdata_instructor" ("id", "first_name", "last_name", "description")
VALUES
  (
    2,
    "takeITeasy",
    "Academy",
    "Akademia Programowania"
  );''')

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S5_One-To-Many\S5L8.sql', 'r', encoding='UTF-8')as file:
    content = file.read()
    #print(content)
cur.executescript(content)

cur.execute("""SELECT COUNT(*) FROM esmartdata_course""")
print(cur.fetchall()[0][0])

conn.commit()
conn.close()