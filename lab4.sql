/* Завдання 1 */
INSERT INTO `name` VALUES ('1','Yamaha','R1','2003')
/* Завдання 1.2 */
INSERT INTO `name` VALUES ('2','Kawasaki','Ninja 400','2019'),
('3','Ducati','1199 Panigale S','2014'),
('4','BMW','S 1000 RR','2009')
/* Завдання 3 */
UPDATE `name` SET `ric`='2012' WHERE `brand`='BMW'
/* Завдання 3.2 */
UPDATE `name` SET `brand`='MOTO' WHERE `ric`<2013
/* Завдання 4 */
DELETE FROM `name` WHERE `brand`='MOTO'