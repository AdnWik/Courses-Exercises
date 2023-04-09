import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\esmartdata.sqlite3')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S6_Many-To-Many\S6L27.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)

cur.execute("""
    SELECT
        t2.title AS path_title,
        COUNT(*) AS num_courses
    FROM esmartdata_learningpath_courses AS t1
    LEFT JOIN esmartdata_learningpath AS t2
    ON t1.learningpath_id = t2.id
    GROUP BY path_title
    ORDER BY num_courses DESC
    """)

for row in cur.fetchall():
    print(row)

conn.commit()
conn.close()