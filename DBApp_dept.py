import mysql.connector
import re

group_number = "7"  # FILL IN YOUR GROUP NUMBER

mydb = mysql.connector.connect(
    host="127.0.0.1",
    user="ht20_2_group_" + group_number,
    passwd="pwd_" + group_number,
    database="ht20_2_project_group_" + group_number
)


mycursor = mydb.cursor()

# Lists all products of leafs. Else lists child departments
dept_input = input("Department ID: ")
query = "SELECT P.dept_id, P.name, P.price FROM DEPARTMENTS AS D JOIN PRODUCTS AS P ON D.dept_id=P.dept_id WHERE P.dept_id = %s AND D.leaf = 1"

mycursor.execute(query, (dept_input,))

myresult = mycursor.fetchall()

print("EANHotelID\t Name")
for x in myresult:
    print(str(x[0])+"\t"+x[1])

###################################

query = "SELECT dept_id, name FROM DEPARTMENTS WHERE dept_id LIKE %s%' AND dept_id != %s"
# mycursor.execute(
#query, (dept_input, dept_input)
# )

print(query % (dept_input, dept_input))

""" myresult = mycursor.fetchall()
print("EANHotelID\t Name")
for x in myresult:
    print(str(x[0])+"\t"+x[1])
 """

mydb.close()
