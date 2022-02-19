SET foreign_key_checks = 0;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS books;
SET foreign_key_checks = 1;
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
    name VARCHAR(50) NULL,
    price INTEGER NULL,
    author_id INTEGER NULL
);
INSERT INTO books (id, name, price, author_id)
VALUES
    (1, 'Одна история', 390, 1),
    (2, 'Изучаем Python, 4-е издание', 2430, 4),
    (3, 'Дизайн для НЕдизайнеров (PDF)', 190, 11),
    (4, 'Дождь в Париже', 476, NULL),
    (5, 'Джоэл о программировании', 650, 8),
    (6, 'Программируем коллективный разум', 1100, 9),
    (7, 'MySQL. Сборник рецептов', 1800, NULL),
    (8, 'Книга утраченных сказаний. Часть Первая', 597, 3),
    (9, 'Кулинарная книга моей бабушки', 470, 10),
    (10, 'MySQL. Оптимизация производительности', 1700, 6),
    (11, 'Властелин Колец. Трилогия', 1200, 3),
    (12, 'Театральные сказки', 1196, 7);

select a.id as author_id, b.id as book_id, a.last_name, a.first_name, b.name
    from authors as a
    left join books as b
    on b.author_id = a.id
    UNION
    select a.id as author_id, b.id as book_id, a.last_name, a.first_name, b.name
    from authors as a
    right join books as b
    on b.author_id = a.id
    order by author_id, book_id;
