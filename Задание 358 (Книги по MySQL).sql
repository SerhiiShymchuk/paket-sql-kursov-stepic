SET foreign_key_checks = 0;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS books;
SET foreign_key_checks = 1;
CREATE TABLE categories (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
INSERT INTO categories (id, name)
VALUES
    (1, 'Художественная литература'),
    (2, 'Компьютеры и интернет'),
    (3, 'Дом, хобби, спорт'),
    (4, 'Бизнес'),
    (5, 'Маркетинг'),
    (6, 'Детская литература');

CREATE TABLE authors (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL
);
INSERT INTO authors (id, first_name, last_name)
VALUES
    (1, 'Джулиан', 'Барнс'),
    (2, 'Роман', 'Сенчин'),
    (3, 'Джон Рональд Руэл', 'Толкин'),
    (4, 'Марк', 'Лутц'),
    (5, 'Поль', 'Дюбуа'),
    (6, 'Джереми', 'Заводны'),
    (7, 'Илзе', 'Лиепа'),
    (8, 'Джоэл', 'Спольски'),
    (9, 'Шэри', 'Тероу'),
    (10, 'Оксана', 'Путан'),
    (11, 'Робин', 'Вильямс'),
    (12, 'Ларри', 'Ульман');
CREATE TABLE books (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NULL,
    price INTEGER NULL,
    category_id INTEGER NULL,
    author_id INTEGER NULL
);
INSERT INTO books (id, name, price, category_id, author_id)
VALUES
    (1, 'Одна история', 390, 1, 1),
    (2, 'Изучаем Python, 4-е издание', 2430, 2, 4),
    (3, 'Дизайн для НЕдизайнеров (PDF)', 190, 2, 11),
    (4, 'Дождь в Париже', 476, 1, 2),
    (5, 'Джоэл о программировании', 650, 4, 8),
    (6, 'Программируем коллективный разум', 1100, 4, 9),
    (7, 'MySQL. Сборник рецептов', 1800, 2, 5),
    (8, 'Книга утраченных сказаний. Часть Первая', 597, 1, 3),
    (9, 'Кулинарная книга моей бабушки', 470, 3, 10),
    (10, 'MySQL. Оптимизация производительности', 1700, 2, 6),
    (11, 'Властелин Колец. Трилогия', 1200, 1, 3),
    (12, 'Театральные сказки', 1196, 6, 7),
    (13, 'PHP и MySQL: создание интернет-магазинов, 2 издание', 2534, 2, 12);

select b.id, b.name, b.price, concat(a.first_name, ' ', a.last_name) as author
from books as b, authors as a
where b.category_id = a.id and b.name like '%MySQL%'
order by b.name;