SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS posts;
SET
    foreign_key_checks = 1;
CREATE TABLE posts (
    id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id int UNSIGNED NOT NULL,
    name VARCHAR(100) NOT NULL,
    pub_date DATETIME DEFAULT NULL,
    slug VARCHAR(50) NOT NULL,
    UNIQUE KEY uslug(slug, user_id)
);
DESC posts;