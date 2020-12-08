use `ht20_2_project_group_7`;

-- Welcome text for the Home page 
SELECT description 
FROM DEPARTMENTS
WHERE dept_id = 'home/';

-- List of the top level departments 
CREATE TEMPORARY TABLE TOPLEVELDEPT (
  department VARCHAR(50)
);

INSERT INTO TOPLEVELDEPT 
VALUES ("home/electronics/"), ("home/apparel/"), 
("home/books/"), ("home/health/"), ("home/decoration/");

SELECT name, description, dept_id 
FROM DEPARTMENTS AS D JOIN TOPLEVELDEPT AS T ON (T.department LIKE D.dept_id);

DROP TABLE TOPLEVELDEPT;

-- List of the featured products
EXPLAIN SELECT name, description, price, link 
FROM PRODUCTS
WHERE isFeatured=1;

-- Given a product, list all keyword-related products
-- E.g., with given product_id = 25
SELECT * 
FROM PRODUCTS 
WHERE product_id IN(
	SELECT product_id 
	FROM PRODUCTKEYWORDMAP 
	WHERE keyword IN(
		SELECT keyword 
		FROM PRODUCTKEYWORDMAP 
		WHERE product_id = 25
    )
);

-- Given dep, list all its products (title, description, price) with their average rating
-- E.g., with given dept_id = "home/books/course/maths/"
SELECT P.product_id, P.name, P.description, P.price, AVG(stars) AS average_rating 
FROM (PRODUCTS AS P JOIN REVIEWS AS R ON P.product_id=R.product_id) 
WHERE P.dept_id = "home/books/course/maths/"
GROUP BY P.product_id;

-- List all products on sale sorted by discount %
SELECT name, price, discount 
FROM PRODUCTS
WHERE discount > 0 
ORDER BY discount DESC;
