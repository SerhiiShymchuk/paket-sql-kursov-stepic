SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS passports;
SET
    foreign_key_checks = 1;
CREATE TABLE passports (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED NOT NULL,
    series SMALLINT UNSIGNED NOT NULL,
    number SMALLINT UNSIGNED NOT NULL
);
ALTER TABLE
    passports
MODIFY
    series VARCHAR(4) NOT NULL,
MODIFY
    number VARCHAR(6) NOT NULL;
CREATE UNIQUE INDEX passport ON passports(series, number);
DESC passports;
SHOW INDEXES
FROM
    passports;