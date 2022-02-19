SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS tasks;
SET
    foreign_key_checks = 1;
CREATE TABLE tasks (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    planned_date DATE NULL
);
INSERT INTO
    tasks (id, name, planned_date)
VALUES
    (1, 'Прибраться', '2017-12-31'),
    (2, 'Построить дом', '2027-01-01'),
    (3, 'Помыть посуду', '2018-01-03'),
    (4, 'Вырастить сына', '2028-09-01'),
    (5, 'Купить продукты', '2017-12-30'),
    (6, 'Починить кран', '2018-01-05'),
    (7, 'Помыть машину', '2018-03-03'),
    (8, 'Посадить дерево', '2022-05-14'),
    (9, 'Помыть окна', '2018-01-07'),
    (10, 'Покорить Эверест', '2026-04-04');
SELECT
    *
FROM
    tasks
WHERE
    planned_date > NOW()
ORDER BY
    planned_date;