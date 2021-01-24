/* Add a dead column to person that's like the one in pet. */
ALTER TABLE person ADD COLUMN dead INTEGER;

/* Add a phone_number column to person. */
ALTER TABLE person ADD COLUMN phone_number INTEGER;

/* Add a salary column to person that is float. */
ALTER TABLE person ADD COLUMN phone_number FLOAT;

/* Add a dob column to both person and pet that is a DATETIME. */
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN dob DATETIME;

/* Add a purchased_on column to person_pet of type DATETIME. */
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;

/* Add a parent to pet column that's an INTEGER and holds the id for this pet's parent. */
ALTER TABLE pet ADD COLUMN parent INTEGER;

/* Update the existing database records with the new column data using UPDATE statements. Don't forget about the purchased_on column in person_pet relation table to indicate when that person bought the pet. */

/* Add 4 more people and 5 more pets and assign their ownership and what pets are parents. On this last part remember that you get the id of the parent, then set it in the parent column. */

/* Write a query that can find all the names of pets and their owners bought after 2004. Key to this is to map the person_pet based on the purchased_on column to the pet and parent. */

/* Write a query that can find the pets that are children of a given pet. Again look at the pet.parent to do this. It's actually easy so don't over think it. */
