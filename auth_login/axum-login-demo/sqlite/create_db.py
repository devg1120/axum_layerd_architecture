
import sqlite3

dbname = 'users.db'
conn = sqlite3.connect(dbname)
cur = conn.cursor()

cur.execute(
"CREATE TABLE users (id int primary key not null,email text not null, password_hash text not null);")

conn.commit()
conn.close()
