SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS domains;
SET
    foreign_key_checks = 1;
CREATE TABLE domains (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    domain VARCHAR(50) NULL
);
INSERT INTO
    domains (id, domain)
VALUES
    (1, 'yandex.ru'),
    (2, 'google.com'),
    (3, 'habrahabr.ru'),
    (4, 'shultais.education'),
    (5, 'fl.ru'),
    (6, 'geektimes.ru'),
    (7, 'facebook.com'),
    (8, 'vk.com'),
    (9, 'github.com'),
    (10, 'tproger.ru'),
    (11, 'wikipedia.org'),
    (12, 'sourceforge.net');
SELECT
    domain
FROM
    domains
WHERE
    domain LIKE '%.___';