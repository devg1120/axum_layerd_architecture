
import sqlite3
import sys
import bcrypt

if len(sys.argv)   != 4:
    print("python3 insert_db.py [id]  [email] [password]")
    sys.exit()

id = sys.argv[1]
email = sys.argv[2]
password = sys.argv[3]
salt = bcrypt.gensalt()
hash_password = bcrypt.hashpw(password.encode(), salt).decode()

print("email         :",email);
print("password      :",password);
print("hash_password :",hash_password);

dbname = 'users.db'
conn = sqlite3.connect(dbname)
cur = conn.cursor()

print(f"insert into users (id,email,password_hash) values ({id},'{email}','{hash_password}');")
#cur.execute(
#"insert into users (id,email,password_hash) values (1,'ferris@crab.domain','ferris');")
cur.execute(
f"insert into users (id,email,password_hash) values ({id},'{email}','{hash_password}');")

conn.commit()
conn.close()
