USE test;
SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS films;
SET
    foreign_key_checks = 1;
CREATE TABLE films (
    id int UNSIGNED AUTO_INCREMENT,
    PRIMARY KEY(id),
    name varchar(100),
    rating FLOAT,
    country VARCHAR(2)
);
INSERT INTO
    films
SET
    name = 'Большая буря',
    rating = 3.45,
    country = 'RU';
INSERT INTO
    films
SET
    name = 'Игра',
    rating = 7.5714,
    country = 'US';
SELECT
    *
FROM
    films;