import mysql.connector
import re

group_number = "7"  # FILL IN YOUR GROUP NUMBER

mydb = mysql.connector.connect(
    host="127.0.0.1",
    user="ht20_2_group_" + group_number,
    passwd="pwd_" + group_number,
    database="ht20_2_project_group_" + group_number
)

table_align_format = "{0:20} {1:20} {2:10}"
result =[]

mycursor = mydb.cursor()
# Search the DB for product and if found displays them
while not result:
    while True:
        try:
            product_id = int(input("Please input product ID: "))
            break
        except:
            print("That's not a valid option!")

    product_id = str(product_id)
    get_products = """SELECT name, price, discount FROM PRODUCTS WHERE product_id = """ + product_id
    mycursor.execute(get_products)
    result = mycursor.fetchall()
    if not result:
        print("Item does not exist!")

print("This is the sought product: ")
print(table_align_format.format("Product: ", "Price: ","Discount: "))
print("------------------------------------------------------------------------")
for name, price, discount in result:
    print(table_align_format.format(name, price, discount))

# Possibility to change discount - if yes, update DB
answer = input("Would you like to change the discount? [y/n]: ")
if answer.lower() == 'y':
    discount = input("Please input new discount: ")
    updated_product = """UPDATE PRODUCTS SET discount = """ + discount + """ WHERE product_id = """ + product_id
    mycursor.execute(updated_product)
    mycursor.execute(get_products)
    result = mycursor.fetchall()

    print("Discount has been updated!:  ")
    print(table_align_format.format("Product: ", "Price: ", "Discount: "))
    print("-------------------------------------------------------------------------")
    for name, price, discount in result:
        print(table_align_format.format(name, price, discount))
    mydb.commit()
else:
    print("No change has been made!")
mydb.close()
