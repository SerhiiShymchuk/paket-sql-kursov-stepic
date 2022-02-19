SET foreign_key_checks = 0;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS products;
SET foreign_key_checks = 1;
CREATE TABLE categories (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
INSERT INTO categories (id, name)
VALUES
    (1, 'Джинсы'),
    (2, 'Куртки'),
    (3, 'Платья'),
    (4, 'Жилетки'),
    (5, 'Юбки'),
    (6, 'Комплекты'),
    (7, 'Брюки'),
    (8, 'Водолазки'),
    (9, 'Косухи'),
    (10, 'Джеггинсы'),
    (11, 'Плащи'),
    (12, 'Леггинсы');
CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    category INTEGER NULL,
    count INTEGER NULL,
    price INTEGER NULL
);
INSERT INTO products (id, name, category, count, price)
VALUES
    (1, 'Джинсы Mango Lonny 2', 1, 3, 2990),
    (2, 'Куртка Magno Nico 2', 2, 2, 4999),
    (3, 'Платье Love Republic', 3, 7, 3999),
    (4, 'Джинсы Mango Kim2', 1, 3, 2499),
    (5, 'Жилет Zarina', 4, 7, 2519),
    (6, 'Юбка Mango Park', 5, 0, 3999),
    (7, 'Джинсы Imajeans', 1, 6, 1842),
    (8, 'Брюки OLBE', 7, 5, 2898),
    (9, 'Джинсы Mango Jane2', 1, 4, 200),
    (10, 'Водолазка OPIMU', 8, 12, 1527),
    (11, 'Косуха Mango', 9, 4, 9990),
    (12, 'Джинсы Uptown2 (Mango)', 1, 7, 3499),
    (13, 'Жилет FinFlare', 4, 3, 6999),
    (14, 'Джинсы Mango Soho2', 1, 0, 1999),
    (15, 'Джеггинсы Sasha Rozhdestvenskaya', 10, 5, 1691),
    (16, 'Плащ Mango SHERLOCK', 11, 1, 6499),
    (17, 'Юбка Katomi', 5, 0, 3199),
    (18, 'Джинсы Mango Noa2', 1, 2, 2499),
    (19, 'Леггинсы Oodji', 12, 0, 349);

select с.name as category, sum(p.count) as products
from categories as с
left outer join products as p
on с.id = p.category
group by с.name
order by category;
-- select c.name as category, sum(p.count) as products
-- from products as p
-- right join categories as c
-- on p.category = c.id
-- group by c.name
-- order by c.name;
-- select 
--   c.name as category, 
--   sum(p.count) as goods
-- from products as p
-- left join categories as c on c.id = p.category
-- group by p.category, c.id
-- order by category;
--останні 2 рішення відрізняються трохи по результату