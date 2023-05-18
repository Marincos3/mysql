/* Завдання 1 */
SELECT 
    * 
FROM 
    t_name
UNION 
SELECT 
    * 
FROM t_2name;
/* Завдання 2 */
SELECT
    *
FROM
    t_name
INTERSECT 
SELECT
    *
FROM
    t_2name;
/* Завдання 3 */
SELECT
    *
FROM
    t_name
MINUS 
SELECT
    *
FROM
    t_2name; 
/* Завдання 4 */
SELECT * FROM t_name, t_2name;