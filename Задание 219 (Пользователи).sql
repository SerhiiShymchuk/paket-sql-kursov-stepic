SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET
    foreign_key_checks = 1;
CREATE TABLE users (
    id int UNSIGNED NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    patronymic VARCHAR(20) NOT NULL DEFAULT '',
    is_active bool DEFAULT TRUE,
    is_superuser bool DEFAULT false
);
INSERT INTO
    users (
        id,
        first_name,
        last_name,
        patronymic,
        is_active,
        is_superuser
    )
VALUES
    (
        1,
        'Дмитрий',
        'Иванов',
        DEFAULT,
        DEFAULT,
        DEFAULT
    ),
    (
        2,
        'Анатолий',
        'Белый',
        'Сергеевич',
        DEFAULT,
        TRUE
    ),
    (3, 'Андрей', 'Крючков', DEFAULT, false, DEFAULT);
SELECT
    *
FROM
    users;