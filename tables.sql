-- Strukturen för databasen - alla tabeller 
use `ht20_2_project_group_7`;

CREATE TABLE Departments (
    department_id INT NOT NULL, 
    name CHAR(255) NOT NULL, 
    description TEXT NOT NULL,
	parent_id INT, 
    path TEXT NOT NULL,  -- breadcrumb
    PRIMARY KEY(department_id),
    FOREIGN KEY(parent_id) REFERENCES Departments(department_id)  -- Optional foreign keys? 
);

CREATE TABLE Products (
    product_id INT NOT NULL, 
    department_id INT NOT NULL, 
    name CHAR(255) NOT NULL,
    description TEXT NOT NULL,
    price INT NOT NULL,
    discount INT,
    vat_fee INT NOT NULL,
    stock_qt INT NOT NULL, 
    link TEXT, 
    isFeatured BOOLEAN NOT NULL, 
    PRIMARY KEY (product_id), 
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE ProdutKeywordMap (
    keyword VARCHAR(255) NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Users (
	user_id INT NOT NULL, 
    personal_nr INT NOT NULL, 
    name CHAR(255) NOT NULL, 
    address CHAR(255), 
    email CHAR(255) NOT NULL, 
    password CHAR(255) NOT NULL, 
    newsletter BOOLEAN NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE Orders (
    order_id INT NOT NULL, 
    user_id INT NOT NULL, 
    payment_ref INT NOT NULL, 
    tracking_no INT NOT NULL, 
    status ENUM("in_checkout", "ordered", "delivered", "archived") NOT NULL,  -- Vilka typer ska Status ENUM ha? 
    created_at DATETIME NOT NULL, 
    updated_at DATETIME NOT NULL, 
    PRIMARY KEY (order_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE OrderProductMap (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Reviews (
    review_id INT NOT NULL, 
    user_id INT NOT NULL, 
    product_id INT NOT NULL, 
    stars INT NOT NULL, 
    comment CHAR(255) NOT NULL,
    PRIMARY KEY (review_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);