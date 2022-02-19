SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET
    foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    birthday DATE NULL,
    sex VARCHAR(1) NULL
);
INSERT INTO
    users (id, first_name, last_name, birthday, sex)
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
    *
FROM
    users
WHERE
    DAYNAME(birthday) IN ('Saturday', 'Sunday')
ORDER BY
    birthday DESC;