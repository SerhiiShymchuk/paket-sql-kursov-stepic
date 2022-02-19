SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS articles;
SET
    foreign_key_checks = 1;
CREATE TABLE articles (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(80) NOT NULL,
    text TEXT,
    state ENUM('draft', 'correction', 'public') NOT NULL DEFAULT 'draft'
);
ALTER TABLE
    articles DROP COLUMN state;
DESC articles;