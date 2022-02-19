SET foreign_key_checks = 0;
DROP TABLE IF EXISTS products;
SET foreign_key_checks = 1;
CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    count INTEGER NULL,
    price INTEGER NULL
);
INSERT INTO products (id, name, count, price)
VALUES
    (1, ' Стиральная машина', 5, 10000),
    (2, 'Холодильник  ', 0, 10000),
    (3, 'Микроволновка  ', 3, 4000),
    (4, ' Пылесос', 2, 4500),
    (5, '  Вентилятор', 0, 700),
    (6, 'Телевизор', 7, 31740),
    (7, '   Тостер  ', 2, 2500),
    (8, 'Принтер  ', 4, 3000);
update products set name = trim(name);
select * from products;