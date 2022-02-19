SET foreign_key_checks = 0;
DROP TABLE IF EXISTS forum;
SET foreign_key_checks = 1;
CREATE TABLE forum (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    subject VARCHAR(255) NULL,
    author_id INTEGER NULL,
    post TEXT NULL,
    FULLTEXT INDEX forum_text(subject, post)
);
INSERT INTO forum (id, subject, author_id, post)
VALUES
    (1, 'Почему запрос не работает', 43, 'Написал запрос, но он почему-то возвращает не то ...'),
    (2, 'Оптимальное поле для валюты', 218, 'Какое поле лучше подходит для хранения евро и долларов'),
    (3, 'Как запустить сервер', 7361, 'С какими настройками лучше всего запускать сервер ...'),
    (4, 'Версия MySQL', 7, 'На какой версии MySQL работает ваш проверяющий сервер?'),
    (5, 'Не работает поиск', 245, 'Всё делаю как описано в уроке, но поиск не работает'),
    (6, 'Ошибка в Mysql', 144, 'Подскажите, что означает эта ошибка ...'),
    (7, 'Мое решение задачи', 116, 'Скажите, а такое решение подойдет? ...'),
    (8, 'Ошибка в тексте задачи', 565, 'Добрый день, у вас опечатка в условии задачи'),
    (9, 'Запрос с NULL', 4515, 'Почему запрос state = NULL выводит ошибки ...'),
    (10, 'Проблема', 33, 'Пытаюсь выбрать все записи, но постоянно выскакивает ошибка Syntax Error.');
select id, subject from forum
where match(subject, post) against ('ошибка проблема' in boolean mode);