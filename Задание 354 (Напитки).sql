SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS categories;
SET
    foreign_key_checks = 1;
CREATE TABLE categories (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    parent_id INTEGER NULL,
    name VARCHAR(50) NULL
);
INSERT INTO
    categories (id, parent_id, name)
VALUES
    (1, NULL, 'Шоколад'),
    (2, NULL, 'Молочные продукты'),
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

-- select id, name from categories
-- where categories.parent_id = (
--     select id from categories as cat
--     where cat.name = 'напитки'
-- )
-- order by name;
select categories.id, categories.name from categories,
(
    select categories.id from categories
    where categories.name = 'напитки'
) as cat2
where cat2.id = categories.parent_id
order by categories.name;