SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS orders;
SET
    foreign_key_checks = 1;
CREATE TABLE orders (
    id INT UNSIGNED NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    amount MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    created DATETIME NOT NULL,
    state ENUM('new', 'delivery', 'completed', 'cancelled')
);
ALTER TABLE
    orders
MODIFY
    state ENUM(
        'awaiting_payment',
        'new',
        'delivery',
        'completed',
        'cancelled'
    ) NOT NULL DEFAULT 'new';
DESC orders;