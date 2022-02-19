SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS products;
SET
    foreign_key_checks = 1;
CREATE TABLE products (
    id INT UNSIGNED NOT NULL,
    name varchar(120) NOT NULL,
    category_id int UNSIGNED NULL,
    price DECIMAL(10, 2) NOT NULL
);
INSERT INTO
    products (id, name, category_id, price)
VALUES
    (1, 'Подгузники (12 шт)', 3, 700.00),
    (2, 'Подгузники (24 шт)', 3, 1250.00),
    (3, 'Спиннер', NULL, 250.40),
    (4, 'Пюре слива', 4, 47.50);
SELECT
    *
FROM
    products;