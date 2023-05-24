import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S10_PROJEKT_Company\company.db')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S10_PROJEKT_Company\S12_Many_To_Many\S12L50.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)

cur.execute("""
SELECT  t1. first_name,
        t1.last_name,
        t2.level
FROM esmartdata_user AS t1
LEFT JOIN esmartdata_developer AS t2
ON t1.id == t2.user_id
""")

for row in cur.fetchall():
    print(row)

conn.commit()
conn.close()
