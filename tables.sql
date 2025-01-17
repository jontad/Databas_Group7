-- Strukturen för databasen - alla tabeller 
use `ht20_2_project_group_7`;

CREATE TABLE DEPARTMENTS (
    dept_id CHAR(255), 
    parent_id CHAR(255), 
    leaf BOOLEAN NOT NULL, 
    name CHAR(255) NOT NULL, 
    description TEXT NOT NULL,
    PRIMARY KEY(dept_id),
    FOREIGN KEY(parent_id) REFERENCES DEPARTMENTS(dept_id) 
     ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE PRODUCTS (
    product_id INT NOT NULL, 
    dept_id CHAR(255), 
    name CHAR(255) NOT NULL,
    description TEXT NOT NULL,
    price INT NOT NULL,
    discount INT,
    vat_fee INT NOT NULL,
    stock_qt INT NOT NULL, 
    link TEXT, 
    isFeatured BOOLEAN NOT NULL, 
    PRIMARY KEY (product_id), 
    FOREIGN KEY (dept_id) REFERENCES DEPARTMENTS(dept_id)
     ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE PRODUCTKEYWORDMAP (
	keyword VARCHAR(255) NOT NULL, 
    product_id INT NOT NULL,
	FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id) 
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE USERS (
	user_id INT NOT NULL, 
    personal_nr INT NOT NULL, 
    name CHAR(255) NOT NULL, 
    address CHAR(255), 
    email CHAR(255) NOT NULL, 
    password CHAR(255) NOT NULL, 
    newsletter BOOLEAN NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE ORDERS (
    order_id INT NOT NULL, 
    user_id INT NOT NULL, 
    payment_ref INT NOT NULL, 
    tracking_no INT NOT NULL, 
    status ENUM("in_checkout", "ordered", "delivered", "archived") NOT NULL,  -- Vilka typer ska Status ENUM ha? 
    created_at DATETIME NOT NULL, 
    updated_at DATETIME NOT NULL, 
    PRIMARY KEY (order_id),
    FOREIGN KEY (user_id) REFERENCES USERS(user_id) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ORDERPRODUCTMAP (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id)  
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE REVIEWS (
    review_id INT NOT NULL, 
    user_id INT NOT NULL, 
    product_id INT NOT NULL, 
    stars INT NOT NULL, 
    comment CHAR(255) NOT NULL,
    PRIMARY KEY (review_id),
    CHECK(stars BETWEEN 0 AND 5),
    FOREIGN KEY (user_id) REFERENCES USERS(user_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id) 
        ON DELETE CASCADE ON UPDATE CASCADE
    
);