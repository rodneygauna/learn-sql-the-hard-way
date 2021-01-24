/* This should fail because 0 is already taken */
INSERT INTO person (id, first_name, last_name, age)
VALUES (0, 'Frank', 'Smith', 100);

/* We can force it by doing an INSERT OR REPLACE */
INSERT OR REPLACE INTO person (id, first_name, last_name, age)
VALUES (0, 'Frank', 'Smith', 100);

/* result should show Frank Smith instead of Zed Shaw */
SELECT * FROM person;

/* And shorthand is REPLACE */
REPLACE INTO person (id, first_name, last_name, age)
VALUES (0, 'Zed', 'Shaw', 37);

/* result should be Zed Shaw instead of Frank Smith */
SELECT * FROM person;
