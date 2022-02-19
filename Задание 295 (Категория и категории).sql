SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS categories;
CREATE TABLE category (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT
);
SET
    foreign_key_checks = 1;
RENAME TABLE category TO categories;
DESC categories;