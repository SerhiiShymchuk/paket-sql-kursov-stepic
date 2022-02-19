SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS orders;
SET
    foreign_key_checks = 1;
CREATE TABLE orders (
    id int UNSIGNED NOT NULL,
    user_id int UNSIGNED NOT NULL,
    amount int UNSIGNED NOT NULL DEFAULT 0,
    created DATETIME NOT NULL,
    state enum(
        'new',
        'cancelled',
        'in_progress',
        'delivered',
        'completed'
    ) NOT NULL DEFAULT 'new'
);
INSERT INTO
    orders (id, user_id, amount, created)
VALUES
    (1, 56, 5400, '2018-02-01 17:46:59'),
    (2, 90, 249, '2018-02-01 19:13:04'),
    (3, 78, 2200, '2018-02-01 22:43:09');
SELECT
    *
FROM
    orders;