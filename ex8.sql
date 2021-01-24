/* delete the ids from the pet table by joining the 3 tables and only if they belong to Zed */
DELETE FROM pet
WHERE id IN (
  SELECT pet.id
  FROM pet, person_pet, person
  WHERE
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id AND
  person.first_name = 'Zed'
);

/* this is bring no results back */
SELECT * FROM pet;

/* this should give an out of the 2 rows, even though that data is abandoned */
SELECT * FROM person_pet;

/* delete the abandoned data */
DELETE FROM person_pet
WHERE pet_id NOT IN (
  SELECT id from pet
);

/* there should be no results because all the pets belonged to Zed */
SELECT * FROM person_pet;
