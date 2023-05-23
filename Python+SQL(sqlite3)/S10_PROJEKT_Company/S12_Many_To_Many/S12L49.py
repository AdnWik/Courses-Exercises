import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S10_PROJEKT_Company\company.db')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S10_PROJEKT_Company\S12_Many_To_Many\S12L49.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)

conn.commit()
conn.close()
