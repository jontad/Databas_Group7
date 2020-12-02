use `ht20_2_project_group_7`;

-- Index. Create once
/*CREATE INDEX department_id_idx 
ON DEPARTMENTS (dept_id);
*/
-- visar meddelandet
SELECT description 
FROM DEPARTMENTS
WHERE dept_id = 'home/';

-- visar toplevel departments
CREATE TEMPORARY TABLE TOPLEVELDEPT (
  department VARCHAR(50)
);

INSERT INTO TOPLEVELDEPT 
VALUES ("home/electronics/"), ("home/apparel/"), 
("home/books/"), ("home/health/"), ("home/decoration/");

SELECT name, description, dept_id 
FROM DEPARTMENTS AS D JOIN TOPLEVELDEPT AS T ON (T.department LIKE D.dept_id);

DROP TABLE TOPLEVELDEPT;

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
WHERE P.dept_id = "home/electronics/computer/laptop/";

-- Visar alla produkter med rabatt
SELECT name, price, discount 
FROM PRODUCTS
WHERE discount > 0 
ORDER BY discount DESC;
