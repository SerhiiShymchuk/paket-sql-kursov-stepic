SET foreign_key_checks = 0;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS products;
SET foreign_key_checks = 1;
CREATE TABLE categories (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    parent_id INTEGER NULL,
    name VARCHAR(50) NULL
);
INSERT INTO categories (id, parent_id, name)
VALUES
    (1, NULL, 'Шоколад'),
    (2, NULL, 'Молочные продкты'),
    (3, NULL, 'Фрукты и овощи'),
    (4, 3, 'Фрукты'),
    (5, NULL, 'Напитки'),
    (6, 2, 'Сметана'),
    (7, 2, 'Молоко'),
    (8, NULL, 'Хлеб'),
    (9, 5, 'Квас'),
    (10, NULL, 'Чай и кофе'),
    (11, 10, 'Кофе'),
    (12, NULL, 'Мясо'),
    (13, 10, 'Чай'),
    (14, 5, 'Вино'),
    (15, 12, 'Рыба'),
    (16, 5, 'Газировка'),
    (17, 12, 'Мясо');
CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    category_id INTEGER NULL,
    count INTEGER NULL,
    price INTEGER NULL
);
INSERT INTO products (id, name, category_id, count, price)
VALUES
    (1, 'Сникерс', 1, 89, 56),
    (2, 'Яблоки, 1 кг', 4, 43, 139),
    (3, 'Сок яблочный', 5, 34, 112),
    (4, 'Бурёнушка', 7, 50, 56),
    (5, 'Якобс', 11, 14, 347),
    (6, 'Забористый', 9, 12, 109),
    (7, 'Ахмад', 13, 40, 108),
    (8, 'Французское, 1 литр', 14, 3, 890),
    (9, 'Alpen Gold', 1, 200, 76),
    (10, 'CocaCola, 1 литр', 16, 34, 78),
    (11, 'Fanta, 2 литра', 16, 39, 99),
    (12, 'Говядина', 17, 45, 170),
    (13, 'Апельсины', 4, 78, 56);

select p.id, p.name, p.price, c.name as category
    from categories as c, products as p
    where 
        p.category_id = c.id
        and c.parent_id = (
            select cat.id from categories as cat
            where cat.name = 'Напитки'
        )
    order by c.name, p.name;    