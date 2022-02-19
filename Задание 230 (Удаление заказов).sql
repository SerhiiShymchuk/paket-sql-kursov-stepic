SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS orders;
SET
    foreign_key_checks = 1;
CREATE TABLE orders (
    id INT UNSIGNED NOT NULL PRIMARY KEY,
    user_id INTEGER NULL,
    products_count INTEGER NULL,
    sum INTEGER NULL,
    STATUS VARCHAR(20) NULL
);
INSERT INTO
    orders (id, user_id, products_count, sum, STATUS)
VALUES
    (1, 1, 2, 1300, 'new'),
    (2, 18, 1, 200, 'cancelled'),
    (3, 11, 1, 2140, 'in_progress'),
    (4, 145, 5, 6800, 'new'),
    (5, 23, 1, 999, 'new'),
    (6, 1, 2, 7690, 'cancelled'),
    (7, 17, 1, 1600, 'new'),
    (8, 5, 4, 400, 'delivery'),
    (9, 2355, 1, 1450, 'new'),
    (10, 13, 7, 13000, 'new');
DELETE FROM
    orders
WHERE
    id IN (3, 4, 7);
SELECT
    *
FROM
    orders;