SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS posts;
SET
    foreign_key_checks = 1;
CREATE TABLE posts (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NULL,
    author_id INTEGER NULL,
    comments INTEGER NULL
);
INSERT INTO
    posts (id, title, author_id, comments)
VALUES
    (
        1,
        'Массовая атака на оборудование Cisco',
        43,
        10
    ),
    (
        2,
        'Знакомство с новым элементом dialog',
        218,
        23
    ),
    (3, 'Что такое «Большие данные»', 7361, 37),
    (4, 'Электронные книги и их форматы', 7, 50),
    (
        5,
        'Мангровый лес: крутейший биом планеты',
        245,
        5
    ),
    (
        6,
        'Электроотвёртка своими руками или наш ответ Xiaomi',
        144,
        3
    ),
    (7, 'Реверс инжиниринг процессора ARM1', 116, 8),
    (
        8,
        'Программирование современных микроконтроллеров',
        565,
        113
    ),
    (
        9,
        'Переработка мусора: как уменьшить количество свалок',
        4515,
        6
    ),
    (
        10,
        'Подключаем счетчик воды к умному дому',
        33,
        81
    );
SELECT
    id,
    comments,
    ceiling(comments / 10) AS pages
FROM
    posts;