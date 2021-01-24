/* Add the database name to delete it */
DROP TABLE person;
DROP TABLE pet;
DROP TABLE person_pet;

/* create the person, pet, and person_pet tables */
CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER
);

CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER
);

/* insert the rows/data into the three tables */
/* person */
INSERT INTO person (id, first_name, last_name, age)
VALUES (0, 'Zed', 'Shaw', 37);

/* pet */
INSERT INTO pet (id, name, breed, age, dead)
VALUES
  (0, 'Fluffy', 'Unicorn', 100, 0),
  (1, 'Gigantor', 'Robot', 1, 1);

/* person_pet */
INSERT INTO person_pet (person_id, pet_id)
VALUES
  (0, 0),
  (0, 1);
