import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\esmartdata.sqlite3')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S8_DML\S8L37.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)

data = (3, "Mike", "Json", "Python Developer")
cur.execute("""
            INSERT INTO esmartdata_instructor VALUES(?,?,?,?)
            """, data)
conn.commit()

cur.execute("""
            SELECT * FROM esmartdata_instructor
            """)

for row in cur.fetchall():
    print(row)

conn.close()

