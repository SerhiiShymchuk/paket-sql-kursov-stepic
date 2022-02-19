SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS products;
SET
    foreign_key_checks = 1;
CREATE TABLE products (
    id int UNSIGNED NOT NULL,
    category_id int UNSIGNED NULL DEFAULT NULL,
    name VARCHAR(100) NOT NULL,
    count TINYINT UNSIGNED NOT NULL DEFAULT 0,
    price DECIMAL(10, 2) NOT NULL DEFAULT 0.00
);
INSERT INTO
    products (id, category_id, name, count, price)
VALUES
    (1, 1, 'Кружка', 5, 45.90),
    (2, 17, 'Фломастеры', DEFAULT, 78.00),
    (3, DEFAULT, 'Сникерс', 12, 50.80);
SELECT
    *
FROM
    products;