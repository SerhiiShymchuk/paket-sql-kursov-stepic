SET foreign_key_checks = 0;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS products_details;
SET foreign_key_checks = 1;
CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    count INTEGER NULL,
    price INTEGER NULL
);
CREATE TABLE products_details (
    id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id int UNSIGNED NOT NULL,
    description text,
    FOREIGN KEY products_details(product_id) REFERENCES products(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
