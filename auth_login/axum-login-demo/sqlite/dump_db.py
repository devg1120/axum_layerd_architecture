
import sqlite3

# TEST.dbを作成する
# すでに存在していれば、それにアスセスする。
dbname = 'users.db'
conn = sqlite3.connect(dbname)
cur = conn.cursor()

cur.execute('SELECT * FROM users')

print(cur.fetchall())

cur.close()
conn.close()
