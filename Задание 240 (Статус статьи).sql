SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS articles;
SET
    foreign_key_checks = 1;
CREATE TABLE articles (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(80) NOT NULL,
    text TEXT
);
ALTER TABLE
    articles
ADD
    COLUMN state enum ('draft', 'correction', 'public') NOT NULL DEFAULT 'draft';
DESC articles;