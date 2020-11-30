use `ht20_2_project_group_7`;

/*
-- visar meddelandet
SELECT description 
FROM Departments
WHERE department_id=0;

-- visar toplevel departments
SELECT * 
FROM Departments
WHERE department_id > 0 AND department_id < 9;

-- Visar produkterna
SELECT * 
FROM Products;

-- Givet produktkeyword, lista liknande 
SELECT * 
FROM Products
WHERE keyword= "bok"; -- OBS funkar atm inte för multiple keywords! (loop?)

-- Nästa (Recursive find) - Funkar inte , den visar allt
SELECT Products.name,  Departments.department_id,  Products.description, Products.price
FROM Products
INNER JOIN Departments ON Products.department_id=Departments.department_id;


-- Visar alla produkter med rabatt
SELECT * 
FROM Products
WHERE discount > 0 
ORDER BY price;
*/

