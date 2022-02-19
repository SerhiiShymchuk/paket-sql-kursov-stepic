SET foreign_key_checks = 0;
DROP TABLE IF EXISTS orders;
SET foreign_key_checks = 1;
CREATE table orders (
    id INT AUTO_INCREMENT,
    state VARCHAR(10),
    amount INT,
    PRIMARY KEY (id)
);

INSERT INTO orders set state='new', amount=345345;
-- update into orders set id=1 where state=new;
insert into orders set state='old', amount=1000;
select * from orders;