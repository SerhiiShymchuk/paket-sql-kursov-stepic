SET foreign_key_checks = 0;
DROP TABLE IF EXISTS orders;
SET foreign_key_checks = 1;
CREATE TABLE orders (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    products_count INTEGER NULL,
    sum INTEGER NULL,
    status VARCHAR(20) NULL
);
INSERT INTO orders (id, user_id, products_count, sum, status)
VALUES
    (1, 1, 2, 1300, 'new'),
    (2, 18, 1, 10000, 'cancelled'),
    (3, 11, 1, 2140, 'in_progress'),
    (4, 145, 5, 6800, NULL),
    (5, 23, 1, 999, 'new'),
    (6, 1, 2, 7690, 'cancelled'),
    (7, 17, 1, 1600, NULL),
    (8, 5, 4, 400, 'delivery'),
    (9, 2355, 1, 1450, NULL),
    (10, 13, 7, 13000, 'cancelled');

update orders set status = NULL where status = 'in_progress';
select * from orders;