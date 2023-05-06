import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\esmartdata.sqlite3')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S7_Many-to-Many_dodatkowe_kolumny\S7L34.sql') as file:
    sql = file.read()

cur.executescript(sql)

cur.execute('''
            SELECT 
            t1.created,
            t2.title
            FROM esmartdata_membership AS t1
            LEFT JOIN esmartdata_course AS t2
            ON t1.course_id = t2.id
            WHERE t1.created BETWEEN '2021-02-01' AND '2021-03-31'
            ''')

for row in cur.fetchall():
    print(row)

conn.commit()
conn.close()

