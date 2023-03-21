import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\esmartdata.sqlite3')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S6_Many-To-Many\S6L25.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)

cur.execute("""
    SELECT  t1.title,
            t1.rating,
            t2.first_name||' '||t2.last_name AS instructor
    FROM esmartdata_course AS t1
    LEFT JOIN esmartdata_instructor AS t2
    ON t1.instructor_id = t2.id
    ORDER BY t1.rating DESC
    LIMIT 10
""")

for row in cur.fetchall():
    print(row)

conn.commit()
conn.close()
