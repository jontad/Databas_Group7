-- Special "homepage" - department
INSERT INTO DEPARTMENTS(dept_id, parent_id, leaf, name, description)
VALUES ("home/", NULL, 0, "Homepage", "Welcome to homepage");

-- Toplevel - department:
-- EX:indexing = parent_id (home) & dept_id (electronics)  => 01 

INSERT INTO DEPARTMENTS(dept_id, parent_id, leaf, name, description)
VALUES 
("home/electronics/", "home/", 0,"Electronics", "top level"),
("home/apparel/", "home/", 0, "Apparel and accessories", "top level"),
("home/books/", "home/", 0, "Books", "top level"),
("home/health/", "home/", 0, "Health and Beauty", "top level"),
("home/decoration/", "home/", 0, "Home decor and furnitures", "top level");


-- Child - DEPARTMENTS(dept_id, parent_id, name, description)parent_id (home/electronics) & dept_id (computer and tablets) => 011 

-- Electronics:
INSERT INTO DEPARTMENTS(dept_id, parent_id, leaf, name, description)
VALUES 
("home/electronics/computer/", "home/electronics/", 0, "Computer and tablets", "second level"),
("home/electronics/console/", "home/electronics/", 0, "Video game and consoles", "second level");


-- Books:
INSERT INTO DEPARTMENTS(dept_id, parent_id, leaf, name, description)
VALUES 
("home/books/auto-bio/", "home/books/", 1, "Autobiographies", "second level"), -- Leaf!
("home/books/diy/", "home/books/", 1, "DIY", "second level"), -- Leaf!
("home/books/course/", "home/books/", 0, "Course Litterature", "second level"), 
("home/books/course/maths/", "home/books/course/", 1, "Mathmatics", "Third level");



-- Child - DEPARTMENTS(dept_id, parent_id, name, description)parent_id (home/electronics/computer) & dept_id (computer and tablets) => 0111 

-- Electronics:
INSERT INTO DEPARTMENTS(dept_id, parent_id, leaf, name, description)
VALUES 
("home/electronics/computer/desktop/", "home/electronics/computer/", 1, "Desktop", "third level"), -- leaf
("home/electronics/computer/laptop/", "home/electronics/computer/", 1, "laptop", "third level"), -- leaf
("home/electronics/computer/tablet/", "home/electronics/computer/", 1, "tablet", "third level"); -- leaf



