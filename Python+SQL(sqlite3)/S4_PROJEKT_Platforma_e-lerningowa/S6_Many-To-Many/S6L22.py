import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\esmartdata.sqlite3')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S6_Many-To-Many\S6L22.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)

cur.executescript("""
    DROP INDEX IF EXISTS esmartdata_learningpath_courses_course_id_idx;

    CREATE INDEX esmartdata_learningpath_courses_course_id_idx
    ON esmartdata_learningpath_courses(course_id);
""")

conn.commit()
conn.close()
