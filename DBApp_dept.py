import mysql.connector
import re

group_number = "7"  # FILL IN YOUR GROUP NUMBER

mydb = mysql.connector.connect(
    host="127.0.0.1",
    user="ht20_2_group_" + group_number,
    passwd="pwd_" + group_number,
    database="ht20_2_project_group_" + group_number
)
# Ask for department and make request from DB
mycursor = mydb.cursor()
dept_input = str(input("Department ID: "))
mycursor.execute("SELECT name, dept_id FROM DEPARTMENTS WHERE dept_id LIKE" + "'%"+dept_input+"%'")
result = mycursor.fetchall()
result_length = len(result)

if result_length > 1:
# Path is a node - Lists all departments with same path
    print("These are the available departments: ")
    print("Department\t path")
    for x in result:
        print(str(x[0])+"\t"+str(x[1]))
else:
# Path is a leaf - Lists all products of leafs
    query = "SELECT P.name,P.dept_id, P.price FROM DEPARTMENTS AS D JOIN PRODUCTS AS P ON D.dept_id=P.dept_id WHERE P.dept_id = %s AND D.leaf = 1"
    mycursor.execute(query, (dept_input,))
    products = mycursor.fetchall()
    print("These are the available products: ")
    print("Name\t Department")
    for x in products:
        print(str(x[0])+"\t"+x[1])
###################################
mydb.close()
