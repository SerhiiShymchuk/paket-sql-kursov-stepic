SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS orders;
SET
    foreign_key_checks = 1;
CREATE TABLE orders (
    id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id int UNSIGNED NOT NULL,
    state VARCHAR(8) NOT NULL DEFAULT 'new',
    amount MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    INDEX user_index(user_id),
    INDEX state_index(state)
);
DESC orders;
-- CREATE INDEX user_index ON orders(user_id);
-- CREATE INDEX state_index ON orders(state);