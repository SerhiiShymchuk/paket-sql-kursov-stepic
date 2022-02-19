SET foreign_key_checks = 0;
DROP TABLE IF EXISTS products;
SET foreign_key_checks = 1;
CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_id INT UNSIGNED NULL DEFAULT NULL, 
    name VARCHAR(100) NOT NULL,
    count TINYINT UNSIGNED NOT NULL DEFAULT 0, 
    price DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    UNIQUE INDEX category_id (category_id),
    INDEX _count (count),
    INDEX main_search (category_id, price)
);
DROP INDEX _count ON products;
DROP INDEX category_id ON products;