SET foreign_key_checks = 0;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
SET foreign_key_checks = 1;
CREATE TABLE categories (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
INSERT INTO categories (id, name)
VALUES
    (1, 'Шоколад'),
    (2, 'Молочные продукты'),
    (3, 'Фрукты и овощи'),
    (4, 'Крупы'),
    (5, 'Напитки'),
    (6, 'Посуда'),
    (7, 'Шампуни'),
    (8, 'Хлеб'),
    (9, 'Консервы'),
    (10, 'Чай и кофе'),
    (11, 'Алкоголь'),
    (12, 'Колбасы'),
    (13, 'Полуфабрикаты'),
    (14, 'Растительное масло'),
    (15, 'Рыба'),
    (16, 'Товары гигиены'),
    (17, 'Мясо');
CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    count INTEGER NULL,
    price INTEGER NULL,
    category_id INTEGER UNSIGNED NULL,
    FOREIGN KEY (category_id)
    REFERENCES categories (id)
    ON DELETE CASCADE
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
    (15, 'Шампунь H&S', 0, 238, 7),
    (16, 'Баунти', 0, 38.9, 1),
    (17, 'Батон купеческий', 5, 34.5, 8),
    (18, 'Говядина', 1, 308, 17),
    (19, 'Помидоры', 8, 46, 3),
    (20, 'Индейка', 2, 534, 17),
    (21, 'Свинина', 0, 349, 17),
    (22, 'Тарелки 12 шт', 0, 780, 6),
    (23, 'Кружки 6 шт', 0, 230, 6);

delete from categories where categories.name in ('Молочные продукты', 'Мясо');