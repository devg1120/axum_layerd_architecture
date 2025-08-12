
import sqlite3
import sys
import bcrypt
from passlib.hash import argon2


if len(sys.argv)   != 2:
    print("python3 hash_password.py [password]")
    sys.exit()

password = sys.argv[1]
salt = bcrypt.gensalt()
bcrypt_hash_password = bcrypt.hashpw(password.encode(), salt).decode()
argon2_hash_password = argon2.hash(password)


print("password      :",password);
print("bcrypt_hash_password:",bcrypt_hash_password);
print("argon2_hash_password:",argon2_hash_password);

#Argon2
