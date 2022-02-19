SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET
    foreign_key_checks = 1;
CREATE TABLE users (
    id int UNSIGNED NOT NULL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthday DATE DEFAULT NULL
);
INSERT INTO
    users (id, first_name, last_name)
VALUES
    (1, 'Дмитрий', 'Иванов'),
    (2, 'Анатолий', 'Белый');
INSERT INTO
    users
SET
    id = 3,
    first_name = 'Денис',
    last_name = 'Давыдов',
    birthday = '1995-09-08';
SELECT
    *
FROM
    users;