use `ht20_2_project_group_7`;

-- Index. Create once
/*CREATE INDEX department_id_idx 
ON DEPARTMENTS (department_id);
*/
-- visar meddelandet
SELECT description 
FROM DEPARTMENTS
WHERE department_id = 'home/';

-- visar toplevel departments
DROP TABLE IF EXISTS TOPLEVELDEPT;
CREATE TEMPORARY TABLE TOPLEVELDEPT (
  department VARCHAR(50)
);

INSERT INTO TOPLEVELDEPT 
VALUES ("home/electronics/"), ("home/apparel/"), 
("home/books/"), ("home/health/"), ("home/decoration/");

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

-- Visar produkt med average rating
SELECT P.name, P.description, P.price, AVG(stars) AS average_rating
FROM (PRODUCTS AS P JOIN REVIEWS AS R ON P.product_id=R.product_id)
WHERE P.department_id = "home/electronics/computer/laptop/";

-- Visar alla produkter med rabatt
SELECT name, price, discount 
FROM PRODUCTS
WHERE discount > 0 
ORDER BY discount DESC;
