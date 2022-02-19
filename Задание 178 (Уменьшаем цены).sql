SET foreign_key_checks = 0;
DROP TABLE IF EXISTS products;
SET foreign_key_checks = 1;
CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NULL,
    count INTEGER NULL,
    price INTEGER NULL
);
INSERT INTO products (id, name, count, price)
VALUES
    (1, 'Стиральная машина', 5, 10000),
    (2, 'Микроволновка', 3, 4000),
    (3, 'Пылесос', 2, 4500),
    (4, 'Вентилятор', 0, 700),
    (5, 'Телевизор', 7, 31740),
    (6, 'iMac', 3, 109990),
    (7, 'iPhone 7', 1, 59990),
    (8, 'iPhone 8', 3, 64990),
    (9, 'iPhone X', 2, 79900),
    (10, 'Холодильник', 0, 10000);

update products set price = price - 5000 ORDER BY price desc limit 5;
select * from products