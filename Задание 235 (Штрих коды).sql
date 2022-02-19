SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS products;
SET
    foreign_key_checks = 1;
CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_id INT UNSIGNED DEFAULT NULL,
    name VARCHAR(100) NOT NULL,
    slug VARCHAR(50) NOT NULL,
    ean13 VARCHAR(13) NOT NULL,
    UNIQUE KEY ean13 (ean13),
    UNIQUE KEY category_slug (category_id, slug)
);
DESC products;