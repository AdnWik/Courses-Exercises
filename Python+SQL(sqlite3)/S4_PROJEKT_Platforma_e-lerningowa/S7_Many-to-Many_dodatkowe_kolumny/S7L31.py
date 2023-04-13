import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\esmartdata.sqlite3')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S7_Many-to-Many_dodatkowe_kolumny\S7L31.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)


conn.commit()
conn.close()