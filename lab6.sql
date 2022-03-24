/* Завдання 1 */
CREATE VIEW lab6 AS SELECT DISTINCT id_name , brand, ric
FROM name;
/* Завдання 2 */
SELECT * FROM lab6 WHERE ric >= '2008' AND ric < '2017'
/* Завдання 3 */
SELECT lab6.id_name, lab6.brand,
lab6.ric, lab5_2.model, lab5_2.ric
FROM lab6, lab5_2
WHERE lab6.id_name = lab5_2.id_name
/* Завдання 4 */
SELECT lab6.id_name, lab6.brand, 
lab6.ric, lab5_2.model, lab5_2.ric 
FROM lab6, lab5_2
WHERE lab6.id_name = lab5_2.id_name 
AND lab6.ric < lab5_2.ric