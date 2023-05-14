import sqlite3


conn = sqlite3.connect('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\esmartdata.sqlite3')
cur = conn.cursor()

with open('Python+SQL(sqlite3)\S4_PROJEKT_Platforma_e-lerningowa\S8_DML\S8L40.sql', 'r', encoding='utf-8') as file:
    sql = file.read()

cur.executescript(sql)

record = {
    'id': 3,
    'first_name': 'Mike',
    'last_name': 'Json',
    'description': 'Software Engineer'
}

record = {
    'id': 3,
    'first_name': 'Mike',
    'last_name': 'Json',
    'description': 'Software Engineer'
}
cur.execute('''
INSERT INTO
  "esmartdata_instructor" ("id", "first_name", "last_name", "description")
VALUES
  (:id, :first_name, :last_name, :description)''', record)

conn.commit()

cur.execute("""
SELECT * FROM esmartdata_instructor
""")

for row in cur.fetchall():
    print(row)

conn.close()
