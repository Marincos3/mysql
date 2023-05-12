/* Завдання 1 */
ALTER TABLE characteristic DROP CONSTRAINT fk_transm; 
/* Завдання 2 */
ALTER TABLE trasm DROP COLUMN brakes; 
/* Завдання 3 */
ALTER TABLE t_name ADD ric varchar(30) NOT NULL;
/* Завдання 4 */
ALTER TABLE basket 
ADD test1 NUMBER NOT NULL;
ALTER TABLE basket 
  ADD CONSTRAINT uq UNIQUE (test1);
/* Завдання 5 */
ALTER TABLE characteristic
ADD CONSTRAINT fk_transm
  FOREIGN KEY (transm)
  REFERENCES trasm(id_trasm);
