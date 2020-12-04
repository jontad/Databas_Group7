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
get_leafs = """SELECT P.dept_id, P.name, P.price
FROM DEPARTMENTS AS D JOIN PRODUCTS AS P ON D.dept_id=P.dept_id
WHERE P.dept_id = """ + dept_input + """ AND D.leaf = 1"""


mycursor.execute(get_leafs)

# ELSE RETRIEVE CHILDREN
#y = dept_input.replace(dept_input, '')


myresult = mycursor.fetchall()

print("Getleaf: " + str(myresult))

print("EANHotelID\t Name")
for x in myresult:
    print(str(x[0])+"\t"+x[1])

mydb.close()
