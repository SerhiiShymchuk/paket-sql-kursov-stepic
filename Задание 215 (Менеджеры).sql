SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    birthday DATE NOT NULL,
    active BOOLEAN NULL,
    sex ENUM('w', 'm') NOT NULL,
    roles SET('programmer', 'designer', 'manager', 'marketer') NOT NULL
);
INSERT INTO users (id, first_name, last_name, birthday, active, sex, roles)
VALUES
    (1, 'Дмитрий', 'Федьков', '2000-01-02', True, 'm', 'manager'),
    (2, 'Светлана', 'Иванова', '1999-03-02', True, 'w', 'designer'),
    (3, 'Никита', 'Трутнев', '2000-08-08', True, 'm', 'programmer'),
    (4, 'Денис', 'Кац', '2000-08-09', True, 'm', 'programmer,manager'),
    (5, 'Алена', 'Сорокина', '2001-01-02', True, 'w', 'designer'),
    (6, 'Василий', 'Федьков', '2001-01-01', False, 'm', 'manager'),
    (7, 'Ярослав', 'Сорокин', '2000-08-01', True, 'm', 'manager,designer'),
    (8, 'Денис', 'Белый', '2000-12-09', True, 'm', 'designer'),
    (9, 'Анатолий', 'Дейчман', '1998-08-08', True, 'm', 'programmer'),
    (10, 'Юлия', 'Фёдорова', '2002-08-08', False, 'w', 'marketer'),
    (11, 'Анастасия', 'Литвинова', '1991-06-01', True, 'w', 'manager');
SELECT first_name, last_name, birthday, roles
FROM users
WHERE sex = 'm' and active = True
ORDER BY last_name, first_name;