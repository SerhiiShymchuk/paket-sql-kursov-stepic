SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS passports;
SET
    foreign_key_checks = 1;
CREATE TABLE passports (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    series VARCHAR(4) NULL,
    number VARCHAR(6) NULL
);
INSERT INTO
    passports (id, user_id, series, number)
VALUES
    (1, 1, '2301', '148145'),
    (2, 5, '3295', '409144'),
    (3, 145, '3206', '145694'),
    (4, 147, '2317', '998714'),
    (5, 276, '3515', '408145'),
    (6, 18, '8714', '881511'),
    (7, 7, '4515', '009184'),
    (8, 1873, '7624', '191744'),
    (9, 887, '2300', '081400');
SELECT
    id,
    concat(series, number) AS passport
FROM
    passports
ORDER BY
    user_id;