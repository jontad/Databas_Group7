use `ht20_2_project_group_7`;

-- visar meddelandet
SELECT description 
FROM Departments
WHERE department_id=0;

-- visar toplevel departments
SELECT name, description, path
FROM Departments
WHERE parent_id=0;

-- Visar produkterna
SELECT name, description, price, link 
FROM Products
WHERE isFeatured=1;

-- Givet produktkeyword, lista liknande 
SELECT name, keyword 
FROM Products
WHERE keyword LIKE '%dator%'; -- OBS funkar atm inte för multiple keywords! (loop?)

SELECT name, description, price
FROM Products
WHERE department_id=111;

SELECT AVG(stars)
FROM Reviews
WHERE product_id=111;

-- Visar alla produkter med rabatt
SELECT name, price, discount 
FROM Products
WHERE discount > 0 
ORDER BY price DESC;
