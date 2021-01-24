/* renames Zed to Hilarious Guy */
UPDATE person SET first_name = 'Hilarious Guy'
WHERE first_name = 'Zed';

/* renames Fluffy to Fancy Pants */
UPDATE pet SET name = 'Fancy Pants'
WHERE id=0;

/* result should be Hilarious Guy and not Zed */
SELECT * FROM person;

/* result should b e Fancy Pants and not Fluffy */
SELECT * FROM pet;
