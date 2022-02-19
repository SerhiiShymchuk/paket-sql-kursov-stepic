SET foreign_key_checks = 0;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS products_details;
SET foreign_key_checks = 1;
CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    count INTEGER NULL,
    price INTEGER NULL
);
INSERT INTO products (id, name, count, price)
VALUES
    (1, 'Dulux Diamond Matt', 5, 700),
    (2, 'Marshall Maestro', 3, 860),
    (3, 'Dulux Easy', 3, 400),
    (4, 'Marshall Export-2', 2, 450),
    (5, 'Dulux Vinyl Matt', 0, 720);
CREATE TABLE products_details (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INTEGER NULL,
    description TEXT NULL
);
INSERT INTO products_details (id, product_id, description)
VALUES
    (1, 2, 'Выдерживает сухую уборку'),
    (2, 4, 'Долговечное супербелое покрытие'),
    (3, 3, 'Подходит для всех типов обоев'),
    (4, 1, 'Очень прочное покрытие'),
    (5, 5, 'Непревзойденная красота и гладкость покрытия');

select p.id, p.name, pd.description
from products as p, products_details as pd
where p.id = pd.product_id
order by p.price;