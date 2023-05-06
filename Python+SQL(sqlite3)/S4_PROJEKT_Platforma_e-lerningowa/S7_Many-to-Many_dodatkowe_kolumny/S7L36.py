import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\esmartdata.sqlite3')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S7_Many-to-Many_dodatkowe_kolumny\S7L36.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)

cur.execute("""
SELECT
CASE
    WHEN CAST(STRFTIME('%m', created) AS INT) BETWEEN 1 AND 3 THEN "Q1"
    WHEN CAST(STRFTIME('%m', created) AS INT) BETWEEN 4 AND 6 THEN "Q2"
    WHEN CAST(STRFTIME('%m', created) AS INT) BETWEEN 7 AND 9 THEN "Q3"
    ELSE "Q4"
    END quarter,
    COUNT(course_id) AS num_courses
FROM esmartdata_membership
GROUP BY quarter
""")

for row in cur.fetchall():
    print(row)

conn.commit()
conn.close()
