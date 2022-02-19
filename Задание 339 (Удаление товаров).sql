SET foreign_key_checks = 0;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS products_details;
SET foreign_key_checks = 1;
CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    count INTEGER NULL,
    price INTEGER NULL,
    active BOOLEAN
);
INSERT INTO products (id, name, count, price, active)
VALUES
    (1, 'Dulux Diamond Matt', 5, 700, True),
    (2, 'Marshall Maestro', 3, 860, False),
    (3, 'Dulux Easy', 3, 400, False),
    (4, 'Marshall Export-2', 2, 450, True),
    (5, 'Dulux Vinyl Matt', 0, 720, True);
CREATE TABLE products_details (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT UNSIGNED NOT NULL,
    description TEXT NULL,
    FOREIGN KEY (product_id) REFERENCES products(id)
    ON DELETE CASCADE
);
INSERT INTO products_details (id, product_id, description)
VALUES
    (1, 2, 'Выдерживает сухую уборку'),
    (2, 4, 'Долговечное супербелое покрытие'),
    (3, 3, 'Подходит для всех типов обоев'),
    (4, 1, 'Очень прочное покрытие'),
    (5, 5, 'Непревзойденная красота и гладкость покрытия');

delete from products
where products.active = false or products.count = 0;