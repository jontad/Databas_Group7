import mysql.connector
import re

group_number = "7"  # FILL IN YOUR GROUP NUMBER

mydb = mysql.connector.connect(
    host="127.0.0.1",
    user="ht20_2_group_" + group_number,
    passwd="pwd_" + group_number,
    database="ht20_2_project_group_" + group_number
)
table_align_format = "{0:30} {1}"
table_align_format2 = "{0:35} {1:30} {2}"
result = []
# Ask for department and make request from DB
mycursor = mydb.cursor()

while not result:
    dept_input = str(input("Please input department ID: "))
    mycursor.execute(f"SELECT name, dept_id FROM DEPARTMENTS WHERE dept_id LIKE '%{dept_input}%'")
    result = mycursor.fetchall()
    result_length = len(result)
    if not result:
        print("Department does not exist!")

if result_length > 1:
# Path is a node - Lists all departments with same path
    print("These are the available departments: ")
    print(table_align_format.format("Department: ","path: "))
    print("-----------------------------------------")
    for name,path in result:
        print(table_align_format.format(name,path))
else:
# Path is a leaf - Lists all products of leafs
    query = f"SELECT P.name,P.dept_id, P.price FROM DEPARTMENTS AS D JOIN PRODUCTS AS P ON D.dept_id=P.dept_id WHERE P.dept_id = '{dept_input}' AND D.leaf = 1"
    mycursor.execute(query)
    products = mycursor.fetchall()
    print("These are the available products: ")
    print(table_align_format2.format("Name: ","Department: ", "Price: "))
    print("-------------------------------------------------------------------------")
    for name, path, price in products:
        print(table_align_format2.format(name, path, price))
###################################
mydb.close()
