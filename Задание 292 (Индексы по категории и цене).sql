SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS products;
SET
    foreign_key_checks = 1;
CREATE TABLE products (
    id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_id int UNSIGNED DEFAULT NULL,
    name VARCHAR(100) NOT NULL,
    count TINYINT UNSIGNED NOT NULL DEFAULT 0,
    price DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    INDEX category_id(category_id),
    INDEX price(price)
);
DESC products;
-- CREATE INDEX category_id on products(category_id);
-- CREATE INDEX price on products(price);