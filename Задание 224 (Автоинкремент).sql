SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS orders;
SET
    foreign_key_checks = 1;
CREATE TABLE orders (
    id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    state VARCHAR(8),
    amount DECIMAL(9, 2)
);
INSERT INTO
    orders (state, amount)
VALUES
    ('new', 1000.50),
    ('new', 3400.10),
    ('delivery', 7300.00);
SELECT
    *
FROM
    orders;