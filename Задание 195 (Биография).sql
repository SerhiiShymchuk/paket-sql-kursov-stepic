SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET
    foreign_key_checks = 1;
CREATE TABLE users (
    id int UNSIGNED AUTO_INCREMENT,
    PRIMARY KEY(id),
    first_name VARCHAR(50),
    last_name varchar(60),
    bio TEXT
);
INSERT INTO
    users
SET
    first_name = 'Антон',
    last_name = 'Кулик',
    bio = 'С отличием окончил 39 лицей.
';
INSERT INTO
    users
SET
    first_name = 'Сергей',
    last_name = 'Давыдов',
    bio = '';
INSERT INTO
    users
SET
    first_name = 'Дмитрий',
    last_name = 'Соколов',
    bio = 'Профессиональный программист.
';
SELECT
    *
FROM
    users;