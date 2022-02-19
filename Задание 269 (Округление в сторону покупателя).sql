SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS bills;
SET
    foreign_key_checks = 1;
CREATE TABLE bills (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER UNSIGNED NULL,
    amount DECIMAL(8, 2) NULL,
    personal_sale INTEGER NULL
);
INSERT INTO
    bills (id, user_id, amount, personal_sale)
VALUES
    (1, 745, 738.65, 4),
    (2, 1445, 531.12, 5),
    (3, NULL, 800.0, 0),
    (4, NULL, 1349.0, 0),
    (5, 56137, 67.5, 4),
    (6, 171, 245.14, 0),
    (7, NULL, 876.59, 0),
    (8, 6735, 234.0, 3);
SELECT
    id,
    TRUNCATE(amount - amount * personal_sale / 100, 0) AS final_amount
FROM
    bills;