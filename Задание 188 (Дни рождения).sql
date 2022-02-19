SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET foreign_key_checks = 1;
use test;
create table users (
    id int AUTO_INCREMENT, PRIMARY KEY(id),
    first_name VARCHAR(20),
    last_name VARCHAR(50),
    birthday DATE
);
insert into users set first_name='Дмитрий', last_name='Иванов', birthday='1995-08-12';
insert into users set first_name='Оксана', last_name='Синичкина', birthday='1995-08-11';
select * from users;