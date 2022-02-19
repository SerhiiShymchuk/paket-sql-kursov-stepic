SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS apartments;
SET
    foreign_key_checks = 1;
CREATE TABLE apartments (
    id int UNSIGNED AUTO_INCREMENT,
    PRIMARY KEY(id),
    image varchar(100),
    price int UNSIGNED,
    square TINYINT UNSIGNED
);
INSERT INTO
    apartments
SET
    image = '/apartments/1/cover.jpg',
    price = 5250000,
    square = 90;
INSERT INTO
    apartments
SET
    image = '/apartments/2/cover-3.jpg',
    price = 7500000,
    square = 103;
INSERT INTO
    apartments
SET
    image = '',
    price = 2300000,
    square = 56;
SELECT
    *
FROM
    apartments;