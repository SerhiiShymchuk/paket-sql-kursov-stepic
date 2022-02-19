use test;
SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET foreign_key_checks = 1;

CREATE table users (
    id int AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    PRIMARY key(id)
);
insert into users set first_name='Ivan', last_name='ivanov';
insert into users set first_name='Ira', last_name='ivanova';
