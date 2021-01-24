/* results should be Fluffy and Gigantor */
SELECT * FROM pet;

/* update the name of the pet to Zed's Pet on the pet table if the owner's name is Zed by joining the three tables via their ids */
UPDATE pet SET name = 'Zed''s Pet' WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = 'Zed'
);

/* results should show Zed's Pet instead of Zed */
SELECT * FROM pet;
