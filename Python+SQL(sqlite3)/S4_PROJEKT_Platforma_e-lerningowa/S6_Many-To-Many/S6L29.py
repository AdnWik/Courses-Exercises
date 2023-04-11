import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\esmartdata.sqlite3')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S6_Many-To-Many\S6L29.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)

cur.execute("""
    SELECT  t2.title AS path_title,
            t4. first_name || ' ' || t4.last_name AS instructor,
            COUNT(*) AS num_courses
    FROM esmartdata_learningpath_courses AS t1
    LEFT JOIN esmartdata_learningpath AS t2
    ON t1.learningpath_id == t2.id
    LEFT JOIN esmartdata_course AS t3
    ON t1.course_id == t3.id
    LEFT JOIN esmartdata_instructor AS t4
    ON t3.instructor_id == t4.id
    GROUP BY path_title, instructor
    ORDER BY path_title
""")

for row in cur.fetchall():
    print(row)

conn.commit()
conn.close()
