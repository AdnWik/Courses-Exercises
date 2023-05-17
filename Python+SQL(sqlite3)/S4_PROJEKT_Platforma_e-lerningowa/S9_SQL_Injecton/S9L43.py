import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\esmartdata.sqlite3')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S9_SQL_Injecton\S9L43.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)

instructor_id = 2

cur.execute('''SELECT * FROM "esmartdata_instructor" WHERE id = ?''', (instructor_id,))

for row in cur.fetchall():
    print(row)

conn.close()
