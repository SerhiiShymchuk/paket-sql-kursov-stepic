SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS passports;
SET
    foreign_key_checks = 1;
CREATE TABLE passports (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    series INTEGER NULL,
    number INTEGER NULL
);
INSERT INTO
    passports (id, user_id, series, number)
VALUES
    (1, 1, 2301, 148145),
    (2, 5, 801, 4091),
    (3, 145, 3206, 14694),
    (4, 147, 2317, 914),
    (5, 276, 3515, 408145),
    (6, 18, 21, 881511),
    (7, 7, 4515, 9184),
    (8, 1873, 7624, 191744),
    (9, 887, 21, 81400);
SELECT
    user_id,
    CONCAT_ws(' ', LPAD(series, 4, '0'), lpad(number, 6, '0')) AS passport
FROM
    passports
ORDER BY
    series,
    number;