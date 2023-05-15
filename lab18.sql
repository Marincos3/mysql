/* Завдання 1 */
INSERT INTO t_name(brand, tmodel, ric)
VALUES('Yamaha','R1',1);

/* Завдання 1.2 */
INSERT INTO t_name(brand, tmodel, ric) VALUES('Kawasaki', 'Ninja 400', 2019);
INSERT INTO t_name(brand, tmodel, ric) VALUES('Ducati','1199 Panigale S',2014);
INSERT INTO t_name(brand, tmodel, ric) VALUES('BMW','S 1000 RR',2009);
/* Завдання 3 */
UPDATE
    t_name
SET
    ric = 2013
WHERE
    brand = 'BMW';

/* Завдання 3.2 */
UPDATE
    t_name
SET
    brand = 'MOTO'
WHERE
    ric < 2014;

/* Завдання 4 */
DELETE FROM t_name WHERE brand='MOTO'