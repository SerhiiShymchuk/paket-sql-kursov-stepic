SET foreign_key_checks = 0;
DROP TABLE IF EXISTS products;
SET foreign_key_checks = 1;
CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NULL,
    count INTEGER NULL
);
INSERT INTO products (id, name, count)
VALUES
    (1, 'Баунти', 50),
    (2, 'Твикс', 33),
    (3, 'Сникерс', 4),
    (4, 'Пикник', 25),
    (5, 'Марс', 2),
    (6, 'Милка', 18),
    (7, 'Альпен Голд', 13),
    (8, 'Дав', 31),
    (9, 'Кит-кат', 38),
    (10, 'Зебра', 11);

update products set count = count + 40 where name = 'Сникерс' or name = 'Марс';
delete from products where count = 0;
select * from products;