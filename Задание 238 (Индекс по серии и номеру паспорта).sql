SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS passports;
SET
    foreign_key_checks = 1;
CREATE TABLE passports (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED NOT NULL,
    series VARCHAR(4) NOT NULL,
    number VARCHAR(6) NOT NULL,
    state ENUM('active', 'expired') NOT NULL DEFAULT 'active',
    UNIQUE KEY series (series),
    UNIQUE KEY number (number)
);
DROP INDEX series ON passports;
DROP INDEX number ON passports;
CREATE UNIQUE INDEX series_number ON passports(series, number);