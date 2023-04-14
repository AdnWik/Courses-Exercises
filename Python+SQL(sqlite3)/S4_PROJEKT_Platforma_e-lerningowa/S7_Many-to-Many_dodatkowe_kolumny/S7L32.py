import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\esmartdata.sqlite3')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S7_Many-to-Many_dodatkowe_kolumny\S7L32.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)

cur.executescript("""
    DROP TABLE IF EXISTS "esmartdata_membership";

    CREATE TABLE IF NOT EXISTS "esmartdata_membership"(
        "id"              INTEGER NOT NULL,
        "created"         TEXT    NOT NULL,
        "course_id"       INTEGER NOT NULL,
        "learningpath_id" INTEGER NOT NULL,
        PRIMARY KEY ("id" AUTOINCREMENT),
        FOREIGN KEY ("course_id") REFERENCES "esmartdata_course"("id"),
        FOREIGN KEY ("learningpath_id") REFERENCES "esmartdata_learningpath"("id")
    );
""")

conn.commit()
conn.close()
