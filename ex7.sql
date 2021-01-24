/* make sure there are dead pets */
SELECT name, age FROM pet WHERE dead = 1;

/* delete the dead pets */
DELETE FROM pet WHERE dead = 1;

/* make sure Gigantor is removed */
SELECT * FROM pet;

/* insert Gigantor back into the pet table */
INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 0);

/* make sure Gigantor is back in the pet table */
SELECT * FROM pet;
