SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS products;
SET
    foreign_key_checks = 1;
CREATE TABLE products (
    id INT UNSIGNED NOT NULL,
    category_id INT UNSIGNED NULL DEFAULT NULL,
    name VARCHAR(100) NOT NULL,
    count TINYINT UNSIGNED NOT NULL DEFAULT 0,
    price SMALLINT UNSIGNED NOT NULL DEFAULT 0
);
ALTER TABLE
    products
MODIFY
    price MEDIUMINT UNSIGNED NOT NULL DEFAULT 0;
DESC products;