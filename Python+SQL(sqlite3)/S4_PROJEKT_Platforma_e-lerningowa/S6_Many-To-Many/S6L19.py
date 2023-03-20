import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\esmartdata.sqlite3')
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

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S6_Many-To-Many\S6L19_1.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)

cur.execute('''DROP INDEX IF EXISTS "esmartdata_course_instructor_id_idx"''')
cur.execute('''CREATE INDEX IF NOT EXISTS "esmartdata_course_instructor_id_idx" 
ON "esmartdata_course" ("instructor_id")''')

cur.executescript('''DROP TABLE IF EXISTS "esmartdata_learningpath";
CREATE TABLE IF NOT EXISTS "esmartdata_learningpath" (
  "id" integer NOT NULL,
  "title" text NOT NULL,
  "subtitle" text NOT NULL,
  "url" text NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT)
);

DROP TABLE IF EXISTS "esmartdata_learningpath_courses";
CREATE TABLE IF NOT EXISTS "esmartdata_learningpath_courses" (
  "id" integer NOT NULL,
  "learningpath_id" integer NOT NULL,
  "course_id" integer NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT),
  FOREIGN KEY("course_id") REFERENCES "esmartdata_course"("id")
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY("learningpath_id") REFERENCES "esmartdata_learningpath"("id")
  ON DELETE CASCADE ON UPDATE CASCADE
);''')

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S6_Many-To-Many\S6L19_2.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)
cur.execute("""SELECT id, title, url FROM esmartdata_learningpath""")
for row in cur.fetchall():
    print(row)
 

conn.commit()
conn.close()