SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS members;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    age INTEGER NULL,
    sex VARCHAR(1) NULL
);
CREATE TABLE members (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    birthday DATE NULL,
    sex VARCHAR(1) NULL
);
INSERT INTO users (id, first_name, last_name, age, sex)
VALUES
    (1, 'Дмитрий', 'Федьков', 18, 'm'),
    (2, 'Светлана', 'Иванова', 30, 'w'),
    (3, 'Никита', 'Трутнев', 17, 'm');
INSERT INTO members (id, name, birthday, sex)
VALUES
    (1, 'Денис Кац', '1991-04-04', 'm'),
    (2, 'Алена Сорокина', '1998-11-23', 'w'),
    (3, 'Василий Федьков', '2000-10-08', 'm');

SELECT
        (id * 10 + 1) AS id,
        first_name,
        last_name,
        age,
        NULL AS birthday,
        sex
    FROM
        users
    UNION
    SELECT
        (id * 10 + 2) AS id,
        substring_index(name, ' ', 1) AS first_name,
        substring_index(name, ' ', -1) AS last_name,
        NULL AS age,
        birthday,
        sex
    FROM
        members;