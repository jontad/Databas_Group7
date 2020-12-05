
-- Special "homepage" - department
INSERT INTO DEPARTMENTS(dept_id, parent_id, leaf, name, description)
VALUES ("home/", NULL, 0, "Homepage", "Welcome to homepage");

-- Toplevel - department:
INSERT INTO DEPARTMENTS(dept_id, parent_id, leaf, name, description)
VALUES
("home/electronics/", "home/", 0,"Electronics", "Top level"),
("home/apparel/", "home/", 0, "Apparel and accessories", "Top level"),
("home/books/", "home/", 0, "Books", "Top level"),
("home/health/", "home/", 0, "Health and Beauty", "Top level"),
("home/decoration/", "home/", 0, "Home decor and furnitures", "Top level");


-- Child - DEPARTMENTS

-- Electronics:
INSERT INTO DEPARTMENTS(dept_id, parent_id, leaf, name, description)
VALUES
("home/electronics/computer/", "home/electronics/", 0, "Computer and tablets", "Second level"),
("home/electronics/console/", "home/electronics/", 0, "Video game and consoles", "Second level"),
("home/electronics/computer/desktop/", "home/electronics/computer/", 1, "Desktop", "Third level"), -- leaf
("home/electronics/computer/laptop/", "home/electronics/computer/", 1, "Laptop", "Third level"), -- leaf
("home/electronics/computer/tablet/", "home/electronics/computer/", 1, "Tablet", "Third level"); -- leaf


-- Books:
INSERT INTO DEPARTMENTS(dept_id, parent_id, leaf, name, description)
VALUES
("home/books/course/", "home/books/", 0, "Course Litterature", "Second level"),
("home/books/fiction/", "home/books/", 0, "Fiction", "Second level"),
("home/books/auto-bio/", "home/books/", 1, "Autobiographies", "Second level"), -- Leaf!
("home/books/diy/", "home/books/", 1, "DIY", "Second level"), -- Leaf!
("home/books/course/maths/", "home/books/course/", 1, "Mathematics", "Third level"), -- Leaf!
("home/books/course/biology/", "home/books/course/", 1, "Biology", "Third level"), -- Leaf!
("home/books/course/chemistry/", "home/books/course/", 1, "Chemistry", "Third level"), -- Leaf!
("home/books/course/physics/", "home/books/course/", 1, "Physics", "Third level"), -- Leaf!
("home/books/course/it/", "home/books/course/", 1, "Information tech", "Third level"), -- Leaf!
("home/books/fiction/crime/", "home/books/fiction/", 1, "Fiction-crime", "Third level"), -- Leaf!
("home/books/fiction/historical/", "home/books/fiction/", 1, "Fiction-historical", "Third level"), -- Leaf!
("home/books/fiction/fantasy/", "home/books/fiction/", 1, "Fiction-fantasy", "Third level"), -- Leaf!
("home/books/fiction/romance/", "home/books/fiction/", 1, "Fiction-romance", "Third level"), -- Leaf!
("home/books/fiction/horror/", "home/books/fiction/", 1, "Fiction-horror", "Third level"), -- Leaf!
("home/books/fiction/scifi/", "home/books/fiction/", 1, "Fiction-science fiction", "Third level"); -- Leaf!

-- Apparel and accessories
INSERT INTO DEPARTMENTS(dept_id, parent_id, leaf, name, description)
VALUES
("home/apparel/women/", "home/apparel/", 0, "Women's apparel", "Second level"),
("home/apparel/men/", "home/apparel/", 0, "Men's apparel", "Second level"),
("home/apparel/child/", "home/apparel/", 1, "Children's apparel", "Second level"), -- Leaf!
("home/apparel/accessories/", "home/apparel/", 1, "Accessories", "Second level"), -- Leaf!
("home/apparel/women/dresses/", "home/apparel/women/", 1, "Women's apparel - dresses", "Third level"),-- Leaf!
("home/apparel/women/training/", "home/apparel/women/", 1, "Women's apparel - training", "Third level"),-- Leaf!
("home/apparel/women/indoors/", "home/apparel/women/", 1, "Women's apparel - indoors", "Third level"),-- Leaf!
("home/apparel/men/suits/", "home/apparel/men/", 1, "Men's apparel - suits", "Third level"),-- Leaf!
("home/apparel/men/training/", "home/apparel/men/", 1, "Men's apparel - training", "Third level"),-- Leaf!
("home/apparel/men/indoors/", "home/apparel/men/", 1, "Men's apparel - indoors", "Third level");-- Leaf!

