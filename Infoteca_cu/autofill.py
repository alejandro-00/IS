import mysql.connector
import os
import random
import string

def id_gen(size=10, chars=string.ascii_uppercase + string.digits):
    return ''.join(random.choice(chars) for _ in range(size))

def fac_gen():
    return random.randint(1, 10)

def sch_gen():
    return random.randint(1, 10)

def fill(x = 10):
    for i in range(x):
        send = (id_gen(), id_gen(8,'0123456789'), id_gen(20), i%2, fac_gen, sch_gen)
        print('Inserting...',send)
        #cursor.execute(send)
    menu()

def menu():
    print('Options:','1: fill','2: check')
    ch = int(input('Enter option:'))
    if ch == 1:
        x = int(input('num?: '))
        fill(x)
    elif ch == 2:
        print('Getting...')
        #cursor.execute(check)
        #res = cursor.fetchall()
        #for x in res:
        #    print x
        menu()

db = mysql.connector.connect(host="localhost", user="mariomanza",
                             passwd="sexymexy45!",
                             database="northwind")

fill_sql = "insert into registros (id, mat, name, sex, fac, sch) values (%s, %s, %s, %s, %s, %s);"
check_sql = "select * from registros;"
cursor = db.cursor()
menu()