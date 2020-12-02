use `ht20_2_project_group_7`;

-- visar meddelandet
SELECT description 
FROM DEPARTMENTS
WHERE department_id LIKE 'home/'

-- visar toplevel departments
CREATE TEMPORARY TABLE TOPLEVELDEPT (
  department VARCHAR(50)
);
INSERT INTO TOPLEVELDEPT 
VALUES ('%electronics'), ('%apparel'), ('%books'), ('%health');

SELECT name, description, department_id 
FROM DEPARTMENTS AS D JOIN TOPLEVELDEPT AS T ON (T.department LIKE D.department_id);

-- Visar produkterna
SELECT name, description, price, link 
FROM PRODUCTS
WHERE isFeatured=1;

-- Givet produktkeyword, lista liknande 
SELECT name, keyword 
FROM PRODUCTS
WHERE keyword LIKE '%dator%';

SELECT P.name, P.description, P.price,  AVG(R.stars)
FROM (PRODUCTS AS P JOIN REVIEWS AS R ON P.product_id=R.product_id)
WHERE P.department_id = "home/books/auto-bio";

-- Visar alla produkter med rabatt
SELECT name, price, discount 
FROM PRODUCTS
WHERE discount > 0 
ORDER BY price DESC;
