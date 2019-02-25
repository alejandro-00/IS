import django
import mysql.connector

db = mysql.connector.connect(host="localhost", user="mariomanza",
                             passwd="sexymexy45!",
                             database="northwind")

date_sql = "select concat(FirstName,' ', LastName) as Full_name, City, year(HireDate) as year from employees where HireDate between %s and %s;"
id_sql = "select concat(firstname,' ', lastname) as Full_name, City, year(Hiredate) as year from employees where id = %s"
cursor = db.cursor()

ch = int(input('Enter option: '))
if ch == 1:
    cursor.execute("show databases")
elif ch == 2:
    cursor.execute("show tables")
elif ch == 3:
    print(cursor.rowcount)
    print(cursor.lastrowid)
elif ch == 4:
    cursor.execute("select firstname, lastname from employees")
elif ch == 5:
    date_s = input('Enter start date:')
    date_f = input('Enter final date:')
    date = (date_s,date_f)
    cursor.execute(date_sql, date)
else:
    print('select an option')

result = cursor.fetchall()
for x in result:
    print(x)
