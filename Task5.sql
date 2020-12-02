use `ht20_2_project_group_7`;

-- visar meddelandet
SELECT description 
FROM DEPARTMENTS
WHERE department_id=0;

-- visar toplevel departments
SELECT name, description, path
FROM DEPARTMENTS
WHERE parent_id=0;

-- Visar produkterna
SELECT name, description, price, link 
FROM PRODUCTS
WHERE isFeatured=1;

-- Givet produktkeyword, lista liknande 
SELECT name, keyword 
FROM PRODUCTS
WHERE keyword LIKE '%dator%'; -- OBS funkar atm inte för multiple keywords! (loop?)

SELECT name, description, price
FROM PRODUCTS
WHERE department_id=111;

SELECT AVG(stars)
FROM Reviews
WHERE product_id=111;

-- Visar alla produkter med rabatt
SELECT name, price, discount 
FROM PRODUCTS
WHERE discount > 0 
ORDER BY price DESC;
