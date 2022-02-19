SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS passports;
SET
    foreign_key_checks = 1;
CREATE TABLE passports(
    id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id int UNSIGNED NOT NULL,
    series VARCHAR(4) NOT NULL,
    number VARCHAR(6) NOT NULL,
    state enum('active', 'expired') NOT NULL DEFAULT 'active',
    UNIQUE KEY passport(series, number),
    INDEX series(series),
    INDEX number(number)
);
DESC passports;