SET foreign_key_checks = 0;
DROP TABLE IF EXISTS reviews;
SET foreign_key_checks = 1;
CREATE Table reviews (
    id int UNSIGNED not null,
    user_id int UNSIGNED not null,
    date DATETIME not null DEFAULT CURRENT_TIMESTAMP,
    course enum('python', 'sql', 'all') not null DEFAULT 'all',
    text TEXT not null,
    public bool not null DEFAULT false
);
insert into reviews (id, user_id, date, course, text, public)
VALUES
(1, 817, '2018-01-11 19:50:01', 'python', 'Это прекрасная возможность получить новые очки в программировании. Доступное объяснение позволяет без проблем изучить желаемый материал', true),
(2, 1289, '2018-02-16 08:55:11', 'python', 'Проект на мой взгляд отличный: 1. Короткие видеоролики без воды 2. Интересные задачи и практика 3. Очень быстрая обратная связь', true);
insert into reviews set id=3, user_id=2914, date='2018-03-19 12:56:12', text='Хорошая затея. Но проект ещё нуждается в развитии.', public=true;
SELECT * from reviews;