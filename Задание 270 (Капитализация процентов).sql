SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS deposits;
SET
    foreign_key_checks = 1;
CREATE TABLE deposits (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    deposit_id INTEGER NULL,
    initial_sum INTEGER NULL,
    percent DECIMAL(3, 1) NULL,
    years INTEGER NULL
);
INSERT INTO
    deposits (
        id,
        user_id,
        deposit_id,
        initial_sum,
        percent,
        years
    )
VALUES
    (1, 11, 1, 50000, 7, 2),
    (2, 817, 2, 30000, 6.7, 1),
    (3, 47, 5, 150000, 8.5, 4),
    (4, 649, 4, 37000, 9, 5),
    (5, 331, 5, 50000, 7, 1),
    (6, 4014, 1, 40000, 7, 2),
    (7, 874, 9, 4000, 8, 3),
    (8, 441, 1, 24500, 7, 2);
SELECT
    id,
    user_id,
    deposit_id,
    initial_sum,
    percent,
    years,
    round(initial_sum * pow(1 + percent / 100, years), 2) AS final_sum
FROM
    deposits;