SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS orders;
SET
    foreign_key_checks = 1;
CREATE TABLE orders (
    id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id int UNSIGNED NOT NULL,
    city_id int UNSIGNED NOT NULL,
    state enum('new', 'cancelled', 'delivered', 'completed') NOT NULL DEFAULT 'new',
    amount MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    INDEX main_search(city_id, state),
    INDEX user_index(user_id)
);
DESC orders;