SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS calendar;
SET
    foreign_key_checks = 1;
CREATE TABLE calendar (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    city_id INT UNSIGNED NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    date DATETIME NOT NULL
);
CREATE INDEX base_query ON calendar(city_id, date);