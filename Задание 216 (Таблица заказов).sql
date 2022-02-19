SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS orders;
SET
    foreign_key_checks = 1;
CREATE TABLE orders (
    id int UNSIGNED NOT NULL,
    user_id int UNSIGNED NOT NULL,
    amount DECIMAL(10, 2),
    created DATETIME NOT NULL,
    state enum(
        'new',
        'cancelled',
        'in_progress',
        'delivered',
        'completed'
    ),
    options
    SET
        ('pack', 'fitting', 'call', 'intercom')
);
INSERT INTO
    orders (id, user_id, amount, created, state, options)
VALUES
    (
        456,
        763,
        14299.00,
        '2018-02-01 17:45:59',
        'completed',
        'pack,call'
    ),
    (
        457,
        1987,
        249.50,
        '2018-02-01 18:23:04',
        'delivered',
        'pack,intercom'
    ),
    (
        459,
        78,
        2300.12,
        '2018-02-01 22:12:09',
        'in_progress',
        ''
    );
SELECT
    *
FROM
    orders