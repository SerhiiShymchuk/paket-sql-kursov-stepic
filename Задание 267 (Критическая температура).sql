SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS experiments;
SET
    foreign_key_checks = 1;
CREATE TABLE experiments (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    temperature INTEGER NOT NULL,
    date DATE NOT NULL
);
INSERT INTO
    experiments (id, temperature, date)
VALUES
    (1, 3, '2017-03-09'),
    (2, -8, '2017-03-09'),
    (3, 4, '2017-03-10'),
    (4, 4, '2017-03-10'),
    (5, 10, '2017-03-10'),
    (6, 24, '2017-03-11'),
    (7, -8, '2017-03-11'),
    (8, 31, '2017-03-13'),
    (9, -18, '2017-03-14'),
    (10, -21, '2017-03-14'),
    (11, 24, '2017-03-16'),
    (12, 3, '2017-03-16'),
    (13, 5, '2017-03-17'),
    (14, -6, '2017-03-18');
SELECT
    id,
    temperature
FROM
    experiments
WHERE
    temperature not BETWEEN -10 and 10;