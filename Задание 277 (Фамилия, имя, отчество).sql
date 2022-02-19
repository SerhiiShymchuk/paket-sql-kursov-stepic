SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET
    foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    patronymic VARCHAR(50) NOT NULL DEFAULT ''
);
INSERT INTO
    users (id, first_name, last_name, patronymic)
VALUES
    (1, 'Дмитрий', 'Федьков', 'Владимирович'),
    (2, 'Светлана', 'Иванова', 'Анатольевна'),
    (3, 'Никита', 'Трутнев', ''),
    (4, 'Денис', 'Кац', 'Евгеньевич'),
    (5, 'Алена', 'Сорокина', 'Андреевна'),
    (6, 'Василий', 'Федьков', 'Никитич'),
    (7, 'Яровслав', 'Сорокин', ''),
    (8, 'Денис', 'Белый', 'Антонович'),
    (9, 'Анатолий', 'Дейчман', 'Макcимович'),
    (10, 'Юлия', 'Фёдорова', '');
SELECT
    id,
    CONCAT_WS(' ', last_name, first_name, patronymic)
FROM
    users
WHERE
    patronymic != ''
ORDER BY
    last_name,
    first_name,
    patronymic;