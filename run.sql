-- Функція
SELECT * FROM get_laur_with_year(50);

-- Процедура
CALL get_laur_from_org('Harvard University');

-- Тригер
INSERT INTO prize (id, year, category) VALUES (1000, 2023, 'Medicine');
INSERT INTO prize (id, year, category) VALUES (1001, 2023, 'Economics');
INSERT INTO prize (id, year, category) VALUES (1002, 2023, 'Chemistry');
INSERT INTO prize (id, year, category) VALUES (1003, 2023, 'Chemistry');
INSERT INTO prize (id, year, category) VALUES (1004, 2023, 'cHemistry');

SELECT * FROM prize;