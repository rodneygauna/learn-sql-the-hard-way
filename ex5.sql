SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != 'Zed';

SELECT * FROM pet WHERE age > 10;

SELECT * FROM person WHERE age < 34;

SELECT * FROM person WHERE age > 35;

SELECT * FROM pet WHERE name = 'Gigantor' AND age = 1;

SELECT * FROM pet WHERE name = 'Fluffy' AND 'Gigantor' OR age != 100;
