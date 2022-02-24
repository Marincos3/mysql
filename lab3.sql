/* Завдання 1 */
ALTER TABLE `characteristic` DROP CONSTRAINT `motor_charact`;
/* Завдання 2 */
ALTER TABLE trasm DROP COLUMN brakes;
/* Завдання 3 */
ALTER TABLE buyer MODIFY `name_b` INT UNSIGNED NOT NULL;
/* Завдання 4 */
ALTER TABLE basket ADD COLUMN test int UNSIGNED NOT NULL AFTER `payment`, ADD CONSTRAINT UNIQUE UQ (`test1`);
/* Завдання 5 */
ALTER TABLE characteristic ADD CONSTRAINT `motor_haract ` FOREIGN KEY (`motor`) REFERENCES `motor` (`id_motor`);