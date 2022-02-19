SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS books;
SET
    foreign_key_checks = 1;
CREATE TABLE books (
    id int UNSIGNED AUTO_INCREMENT,
    PRIMARY KEY(id),
    name varchar(100),
    description varchar(1000),
    isbn varchar(13)
);
INSERT INTO
    books
SET
    name = 'MySQL 5',
    description = 'Хорошая книга.',
    isbn = '5941579284';
INSERT INTO
    books
SET
    name = 'Изучаем SQL',
    description = 'Полезная книга.',
    isbn = '5932860510';
INSERT INTO
    books
SET
    name = 'Изучаем Python. 4-е издание',
    description = 'Подробная книга о Python.',
    isbn = '9785932861592';
SELECT
    *
FROM
    books;