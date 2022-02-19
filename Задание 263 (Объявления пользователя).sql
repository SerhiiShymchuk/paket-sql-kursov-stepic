SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS advs;
DROP TABLE IF EXISTS closed_advs;
SET
    foreign_key_checks = 1;
CREATE TABLE advs (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    category_id INTEGER NULL,
    date DATETIME NULL,
    text TEXT NULL
);
CREATE TABLE closed_advs (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    category_id INTEGER NULL,
    date DATETIME NULL,
    text TEXT NULL
);
INSERT INTO
    advs (id, user_id, category_id, date, text)
VALUES
    (
        10,
        45,
        6,
        '2018-02-14 22:51:07',
        'Продам компьютер iMac'
    ),
    (
        11,
        1343,
        55,
        '2018-02-14 23:31:11',
        'Куплю шубу норковую'
    ),
    (
        12,
        675,
        14,
        '2018-02-14 23:32:43',
        'Продам шкаф из дуба'
    ),
    (
        13,
        45,
        6,
        '2018-02-15 00:12:45',
        'Продам ноутбук Asus'
    ),
    (
        14,
        874,
        6,
        '2018-02-15 01:45:05',
        'Продам ноутбук Sony'
    ),
    (
        15,
        145,
        12,
        '2018-02-15 06:00:04',
        'Продам детское кресло'
    );
INSERT INTO
    closed_advs (id, user_id, category_id, date, text)
VALUES
    (
        1,
        45,
        6,
        '2018-02-14 22:51:07',
        'Продам видеокарту Asus'
    ),
    (
        2,
        982,
        55,
        '2018-02-14 23:31:11',
        'Куплю жилетку меховую'
    ),
    (
        3,
        675,
        14,
        '2018-02-14 23:32:43',
        'Продам мебель на кухню'
    ),
    (
        4,
        45,
        6,
        '2018-02-15 00:12:45',
        'Продам ПК на базе Intel'
    ),
    (
        5,
        441,
        6,
        '2018-02-15 01:45:05',
        'Продам принтер струйный'
    );
(
    SELECT
        id,
        category_id,
        date,
        text,
        'opened' AS STATUS
    FROM
        advs
    WHERE
        user_id = 45
    UNION
    SELECT
        id,
        category_id,
        date,
        text,
        'closed' AS STATUS
    FROM
        closed_advs
    WHERE
        user_id = 45
)
ORDER BY date, id;