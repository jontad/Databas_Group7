-- Speciella "homepage" - department
INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES ("home/", NULL, "Homepage", "Welcome to homepage");

-- Toplevel - department:
-- EX:indexering = parent_id (home) & department_id (electronics)  => 01 

INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES ("home/electronics", "home/", "Electronics", "top level");

INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES ("home/apparel", "home/", "Apparel and accessories", "top level");

INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES ("home/books", "home/", "Books", "top level");

INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES ("home/health", "home/", "Health and Beauty", "top level");

INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES (05, "Home decor and furnitures", "top level", 0, "home/decoration");

-- Child - DEPARTMENTS(department_id, parent_id, name, description)parent_id (home/electronics) & department_id (computer and tablets) => 011 

-- Electronics:
INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES ("home/electronics/computer", "home/electronics/", "Computer and tablets", "second level");

INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES ("home/electronics/console", "home/electronics/", "Video game and consoles", "second level"); 

-- Books:
INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES ("home/books/auto-bio", "home/books/", "Autobiographies", "second level"); -- Leaf!

INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES ("home/books/diy", "home/books/", "DIY", "second level"); -- Leaf!

INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES ("home/books/course", "home/books/", "Course Litterature", "second level"); 

-- Child - DEPARTMENTS(department_id, parent_id, name, description)parent_id (home/electronics/computer) & department_id (computer and tablets) => 0111 

-- Electronics:
INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES ("home/electronics/computer/desktop", "home/electronics/computer/", "Desktop", "third level"); -- leaf

INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES ("home/electronics/computer/laptop", "home/electronics/computer/", "laptop", "third level"); -- leaf

INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES ("home/electronics/computer/tablet", "home/electronics/computer/", "tablet", "third level"); -- leaf

-- Books

INSERT INTO DEPARTMENTS(department_id, parent_id, name, description)
VALUES ("home/books/course/maths", "home/books/course/" "Mathmatics", "Third level");





