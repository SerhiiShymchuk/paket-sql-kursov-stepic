SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS files;
SET
    foreign_key_checks = 1;
CREATE TABLE files (
    id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    film_id int UNSIGNED NOT NULL,
    size BIGINT UNSIGNED,
    filename VARCHAR(100)
);
INSERT INTO
    files (film_id, size, filename)
VALUES
    (356, 28668906700, 'silicon_valley_s02_1080p.zip'),
    (4514, 2684354560, 'dunkirk.mp4'),
    (87145, 734003200, 'milk.mp4');
SELECT
    *
FROM
    files;