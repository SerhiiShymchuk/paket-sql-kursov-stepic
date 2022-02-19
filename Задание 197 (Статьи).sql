SET
  foreign_key_checks = 0;
DROP TABLE IF EXISTS articles;
SET
  foreign_key_checks = 1;
create table articles(
    id int UNSIGNED not null,
    name VARCHAR(80),
    text TEXT,
    state enum('draft', 'correction', 'public')
  );
INSERT into
  articles (id, name, text, state)
VALUES
  (1, 'Новое в Python 3.6', '', 'draft'),
  (
    2,
    'Оптимизация SQL запросов',
    'При больших объемах данных ...',
    'correction'
  ),
  (
    3,
    'Транзакции в MySQL',
    'По долгу службы мне приходится ...',
    'public'
  );
select
  *
from
  articles;