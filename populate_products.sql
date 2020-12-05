-- Lägger in produkter i DB

-- Böcker
INSERT INTO PRODUCTS (product_id, dept_id, name, keyword, description, price, discount, vat_fee, stock_qt, link, isFeatured)
VALUES
(1, "home/books/auto-bio/", "Att andas frihet", "Bok,Självbiografi", "En självbiografi om Putin", 149, 0, 25, 73, "/404-not-found", 1),
(7, "home/books/auto-bio/", "Min bod, min hund, mitt liv", "Bok,Självbiografi","En Ernst kirchsteiger Självbiografi", 299, 0, 25, 73, "/404-not-found", 1),
(2, "home/books/diy/", "Löda 101", "Bok, DIY", "En bok för dig som vill löda", 299, 5, 25, 73, "/404-not-found", 0),
(20, "home/books/diy/", "Snickra 102", "Bok, DIY", "En bok för dig som vill bli händig", 250, 5, 25, 73, "/404-not-found", 1),
(3,  "home/books/course/maths/", "Calculus - the complete course!", "Bok, Kurslitteratur", " The must have book for calculus", 1490, 0, 25, 2, "/404-not-found", 0 ),
(6, "home/books/course/maths/", "Ett vadslag med verkligheten", "Bok, Kurslitteratur", "Introduktion till komplexa tal", 149, 0, 25, 2, "/404-not-found", 0),
(10, "home/books/course/it/", "Advanced Microchip Architecture", "Bok, Kurslitteratur", "17th edition", 799, 50, 25, 73, "/404-not-found", 1),
(11, "home/books/course/physics/", "Modern Physics", "Bok, Kurslitteratur", "Pearson New International Edition", 969, 50, 25, 73, "/404-not-found", 1),
(8, "home/books/fiction/historical/", "Spring, som aldrig förr", "Bok, Skönlitteratur", "En historia om ungar på grönbete", 199, 10, 25, 84, "/404-not-found", 1);

-- Elektronik
INSERT INTO PRODUCTS (product_id, dept_id, name, keyword, description, price, discount, vat_fee, stock_qt, link, isFeatured)
VALUES
(4, "home/electronics/computer/desktop/", "Imba-Config X1", "Dator, Desktop", "optimised", 9900, 10, 25, 84, "/404-not-found", 1),
(13, "home/electronics/computer/desktop/", "Taurus Gaming Elite", "Dator, Desktop, Gaming", "Med RTX 3080 - 3700X", 20999, 10, 25, 84, "/404-not-found", 1),
(14, "home/electronics/computer/desktop/", "Taurus Gaming Elite II", "Dator, Desktop, Gaming", "Med RTX 4080 - 3700X", 25999, 10, 25, 84, "/404-not-found", 1),
(15, "home/electronics/computer/desktop/", "Taurus Gaming Elite III", "Dator, Desktop, Gaming", "Med RTX 5080 - 3700X", 30999, 5, 25, 84, "/404-not-found", 1),
(16, "home/electronics/computer/desktop/", "Taurus Gaming Elite IV", "Dator, Desktop, Gaming", "Med RTX 6080 - 3700X", 35999, 10, 25, 84, "/404-not-found", 1),
(17, "home/electronics/computer/desktop/", "Taurus Gaming Elite VV", "Dator, Desktop, Gaming", "Med RTX 8080 - 3700X", 59999, 5, 25, 84, "/404-not-found", 1),
(5, "home/electronics/computer/laptop/", "Alienware 1", "Dator, Laptop", "Imba", 19900, 10, 25, 84, "/404-not-found", 1),
(18, "home/electronics/computer/laptop/", "Alienware 2", "Dator, Laptop", "Ännu bättre", 25000, 20, 25, 84, "/404-not-found", 1),
(19, "home/electronics/computer/laptop/", "Alienware 3", "Dator, Laptop", "Bästa som finns!", 38888, 30, 25, 84, "/404-not-found", 1),
(12, "home/electronics/computer/laptop/", "Macbook Pro 13-in", "Dator, Laptop, Apple", "2020 edition", 14639, 0, 25, 84, "/404-not-found", 1),
(21, "home/electronics/computer/tablet/", "Windows tablet", "Dator, Tablet", "Good", 5900, 0, 25, 84, "/404-not-found", 1),
(9, "home/electronics/computer/tablet/", "Samsung Galaxy Tab G7", "Dator, tablet", "Newest edition", 6990, 10, 25, 84, "/404-not-found", 1);






/*
Måste ändra formatet



INSERT INTO PRODUCTS (product_id, dept_id, name, keyword, description, price, discount, vat_fee, stock_qt, link, isFeatured)
VALUES (3, 5, "Kaos, Entropi och Helvete", "När man totalt tappar kontroll gällande komplexiteten", "bok", 299, 100, 0.25, 73, "/404-not-found", 0);

INSERT INTO PRODUCTS (product_id, dept_id, name, keyword, description, price, discount, vat_fee, stock_qt, link, isFeatured)
VALUES (4, 5, "Det blåser, förrädiskt skönt", "Frisk stillsamhet, strax storm", "bok", 179, 0, 25, 25, "/404-not-found", 0);

INSERT INTO PRODUCTS (product_id, dept_id, name, keyword, description, price, discount, vat_fee, stock_qt, link, isFeatured)
VALUES (5, 6, "Ett vadslag med verkligheten", "Introduktion till komplexa tal", "bok", 149, 0, 25, 2, "/404-not-found", 0);

INSERT INTO PRODUCTS (product_id, dept_id, name, keyword, description, price, discount, vat_fee, stock_qt, link, isFeatured)
VALUES (6, 6, "Matemagiska uppfinnelser", "Vår tids 10 största matematiska påfund", "bok", 50, 0, 25, 14, "/404-not-found", 1);

INSERT INTO PRODUCTS (product_id, dept_id, name, keyword, description, price, discount, vat_fee, stock_qt, link, isFeatured)
VALUES (8, 7, "Advanced Microchip Architecture", "17th edition", "bok", 499, 50, 25, 73, "/404-not-found", 1);

INSERT INTO PRODUCTS (product_id, dept_id, name, keyword, description, price, discount, vat_fee, stock_qt, link, isFeatured)
VALUES (9, 8, "Muskler, Hästar och Metall", "Krafter överallt, när är vad effektivast?", "bok", 1299, 200, 25, 77, "/404-not-found", 0);

INSERT INTO PRODUCTS (product_id, dept_id, name, keyword, description, price, discount, vat_fee, stock_qt, link, isFeatured)
VALUES (10, 8, "Broar och Lyftkranar", "127 bilder på ståtliga ting", "bok", 860, 140, 25, 100, "/404-not-found", 1);

*/
