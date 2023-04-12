import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\esmartdata.sqlite3')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S6_Many-To-Many\S6L30.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)

cur.execute("""
    SELECT  t1.category AS category,
            t1.subcategory AS subcategory,
            t2.first_name || ' ' || t2.last_name AS instructor,
            COUNT(*) AS num_courses
    FROM esmartdata_course AS t1
    LEFT JOIN esmartdata_instructor AS t2
    ON t1.instructor_id == t2.id
    GROUP BY category, subcategory, instructor
    ORDER BY num_courses DESC
""")

for row in cur.fetchall():
    print(row)

conn.commit()
conn.close()
