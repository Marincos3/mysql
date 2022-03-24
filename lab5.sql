/*Саздати таблицю*/
CREATE TABLE lab5
AS SELECT id_name, brand, model, ric FROM name
WHERE ric < '2013';
/* Завдання 1 */
SELECT * FROM lab5
UNION SELECT * FROM lab5_2
/* Завдання 2 */
SELECT * FROM lab5
WHERE ric IN (SELECT ric FROM lab5_2)
/* Завдання 3 */
SELECT * FROM lab5
WHERE ric NOT IN (SELECT ric FROM lab5_2)
/* Завдання 4 */
SELECT * FROM lab5, lab5_2