-- Speciella "homepage" - department
INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (0, "Homepage", "Welcome to homepage", NULL, "home/");

-- Toplevel - department:
-- EX:indexering = parent_id (home) & department_id (electronics)  => 01 

INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (01, "Electronics", "top level", 0, "home/electronics");

INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (02, "Apparel and accessories", "top level", 0, "home/apparel");

INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (03, "Books", "top level", 0, "home/books");

INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (04, "Health and Beauty", "top level", 0, "home/health");

INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (05, "Home decor and furnitures", "top level", 0, "home/decoration");

-- Child - departments - första level:
-- EX: indexering = parent_id (home/electronics) & department_id (computer and tablets) => 011 

-- Electronics:
INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (011, "Computer and tablets", "second level", 01, "home/electronics/computer");

INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (012, "Video game and consoles", "second level", 01, "home/electronics/console"); 

-- Books:
INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (031, "Autobiographies", "second level", 03, "home/books/auto-bio"); -- Leaf!

INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (032, "DIY", "second level", 03, "home/books/diy"); -- Leaf!

INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (039, "Course Litterature", "second level", 03, "home/books/course"); 

-- Child - departments - andra level:
-- EX: indexering = parent_id (home/electronics/computer) & department_id (computer and tablets) => 0111 

-- Electronics:
INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (0111, "Desktop", "third level", 011, "home/electronics/computer/desktop"); -- leaf

INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (0112, "laptop", "third level", 011, "home/electronics/computer/laptop"); -- leaf

INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (0113, "tablet", "third level", 011, "home/electronics/computer/tablet"); -- leaf

-- Books

INSERT INTO Departments(department_id, name, description, parent_id, path)
VALUES (0391, "Mathmatics", "Third level", 039, "home/books/course/maths");





