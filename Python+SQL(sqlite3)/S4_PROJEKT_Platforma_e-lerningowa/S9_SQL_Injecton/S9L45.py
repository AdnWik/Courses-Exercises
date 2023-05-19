import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\esmartdata.sqlite3')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S9_SQL_Injecton\S9L45.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)

def insert_row(id, first_name, last_name, description):
    data = {
        'id' : id,
        'first_name' : first_name,
        'last_name' : last_name,
        'description' : description
    }

    cur.execute("""
    INSERT INTO esmartdata_instructor VALUES (
        :id,
        :first_name,
        :last_name,
        :description)
    """, data)

    conn.commit()

insert_row(3, 'Mike', 'Json', 'Software Developer')
insert_row(4, 'Jonathan', 'Parquet', 'SQL Developer')

cur.execute("""
SELECT * FROM esmartdata_instructor
""")

for row in cur.fetchall():
    print(row)

conn.close()
