import sqlite3

conn = sqlite3.connect(':memory:')
cur = conn.cursor()

cur.execute('SELECT sqlite_version()')
version = cur.fetchall()[0][0]
print(version)

conn.close()