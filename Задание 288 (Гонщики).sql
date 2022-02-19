SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS drivers;
SET
    foreign_key_checks = 1;
CREATE TABLE drivers (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    birthday DATE NULL,
    sex VARCHAR(1) NULL
);
INSERT INTO
    drivers (id, first_name, last_name, birthday, sex)
VALUES
    (1, 'Дмитрий', 'Федьков', '2000-01-02', 'm'),
    (2, 'Светлана', 'Иванова', '1999-03-02', 'w'),
    (3, 'Никита', 'Трутнев', '2000-08-08', 'm'),
    (4, 'Денис', 'Кац', '2000-08-09', 'm'),
    (5, 'Алена', 'Сорокина', '2001-01-02', 'w'),
    (6, 'Василий', 'Федьков', '2001-01-01', 'm'),
    (7, 'Ярослав', 'Сорокин', '2000-08-01', 'm'),
    (8, 'Денис', 'Белый', '2000-12-09', 'm'),
    (9, 'Анатолий', 'Дейчман', '1998-08-08', 'm'),
    (10, 'Юлия', 'Фёдорова', '2002-08-08', 'w');
SELECT
    last_name,
    first_name,
    birthday
FROM
    drivers
WHERE
    sex = 'm'
    AND DATE_ADD(birthday, INTERVAL 18 year) <= date('2018-8-8')
ORDER BY
    last_name,
    first_name;