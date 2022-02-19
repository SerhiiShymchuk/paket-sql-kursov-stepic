SET foreign_key_checks = 0;
DROP TABLE IF EXISTS products;
SET foreign_key_checks = 1;
CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    count INTEGER NULL,
    price DECIMAL(10, 2) NULL,
    category_id INTEGER NULL
);
INSERT INTO products (id, name, count, price, category_id)
VALUES
    (1, 'Сникерс большой', 3, 56, 1),
    (2, 'Сливочное масло Милка', 2, 104.4, 2),
    (3, 'Яблоки ред', 7, 98, 3),
    (4, 'Яблоки голден', 3, 89, 3),
    (5, 'Марс', 7, 36.5, 1),
    (6, 'Сметана 20', 2, 49, 2),
    (7, 'Сметана 15', 4, 45, 2),
    (8, 'Сметана 20 фермерская', 1, 78.9, 2),
    (9, 'Апельсины', 5, 70, 3),
    (10, 'Макароны 1 кг', 4, 56, 4),
    (11, 'Вода 1 л', 12, 18, 5),
    (12, 'Гречка 0,5 кг', 4, 45, 4),
    (13, 'Хлеб белый', 7, 23.4, 8),
    (14, 'Творог 9', 3, 56, 2),
    (15, 'Баунти', 0, 38.9, 1),
    (16, 'Батон купеческий', 5, 34.5, 8),
    (17, 'Говядина', 1, 308, 17),
    (18, 'Помидоры', 8, 46, 3),
    (19, 'Индейка', 2, 534, 17),
    (20, 'Свинина', 0, 349, 17);

SELECT
    category_id,
    round(AVG(price), 2) AS avg_price
FROM
    products
WHERE
    count > 0
GROUP BY
    category_id
ORDER BY avg_price;