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

product_id = input("Product ID: ")
get_products = """SELECT name, discount
FROM PRODUCTS
WHERE product_id = """ + product_id

mycursor.execute(get_products)
myresult = mycursor.fetchall()
print("Product Name\t Discount")
for x in myresult:
    print(str(x[0])+"\t"+str(x[1]))


answer = input("Change discount? [y/n]: ")

if answer.lower() == 'y':
    discount = input("New discount: ")

    updated_product = """UPDATE PRODUCTS
    SET discount = """ + discount + """
    WHERE product_id = """ + product_id

    mycursor.execute(updated_product)
    mycursor.execute(get_products)
    myresult = mycursor.fetchall()

    print("Product Name\t Discount")
    for x in myresult:
        print(str(x[0])+"\t"+str(x[1]))


mydb.commit()
mydb.close()
