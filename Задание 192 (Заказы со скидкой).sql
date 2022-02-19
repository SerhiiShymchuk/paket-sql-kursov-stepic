use test;
SET foreign_key_checks = 0;
DROP TABLE IF EXISTS orders;
SET foreign_key_checks = 1;
create table orders (
    id int UNSIGNED AUTO_INCREMENT, PRIMARY KEY(id),
    product_id int UNSIGNED,
    sale TINYINT UNSIGNED,
    amount DECIMAL(8, 2)
);
insert into orders set product_id=245, sale=0, amount=230.5;
insert into orders set product_id=12, sale=2, amount=999999.99;
select * from orders;
