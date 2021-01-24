# Learn SQL The Hard Way

## Things to Remember

"CRUD" stands for Create, Read, Update, Delete

## Exercise 1

Learned about creating a table using `CREATE TABLE`.

Using the info from the exercise, I made the 'person' table with the following 4 columns:

* id
* first_name
* last_name
* age

Make 'id' an INTEGER and the PRIMARY KEY, 'first_name' as TEXT, 'last_name' also as TEXT, and 'age' as an INTEGER.

Also learned about the terminal to turn the SQL file into a database using `sqlite3 ex1.db < ex1.sql`.

## Exercise 2

Similar to exercise 1, I create a new database with 3 tables this time.

## Exercise 3

Learned how to insert data into the database using 'INSERT INTO'.

It's best practice to write out the columns:
```sql
INSERT INTO person (id, first_name, last_name, age) VALUES (0, 'Zed', 'Shaw', 37);
```

Shorthand also works if the values match up to all the table's columns (else it doesn't work):
```sql
INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 1);
```

I did something different for the terminal. This time, I created a new db 'ex3.db' but ran the ex2.sql script. This created the new db and created the 3 tables. Then running the ex3.sql script inserted the values in the newly created tables.

## Exercise 4

Similar to exercise 3, I added values to the person_pet table.
This table shows the relationship between the persons and the pets.

It looks like Zed is the owner of 'Fluffy' and 'Gigantor'.

This time, I used the ex3 database instead of creating a new db. Since ex3.db.

I also used the echo attribute in the terminal command to read out the script and the return from the select statements. It shows me the query plus the output.
`sqlite3 -echo ex3.db < ex5.sql`

## Exercise 5

In order to read the values in the tables, I learned about 'SELECT'.

`SELECT * FROM person;` means "select all columns from the person table and return all rows".

`SELECT name, age FROM pet;` means "select the 'name' and 'age' columns from the pet table and return all rows".

`SELECT name, age FROM pet WHERE dead = 0;` means "select the 'name' and 'age' columns from the pet table and return the rows where there is a '0' value in the 'dead' column".

`SELECT * FROM person WHERE first_name != 'Zed';` means "select all columns from the person table and return the rows that have DO NOT have 'Zed' as a value in the 'first_name' column".

FYI - continued running the script on ex3.db

## Exercise 6

Started learning how to join many tables.

The first select statment is an equality statement - meaning I'm joining the three tables by setting different id columns as equals.

The second select statement does the same thing as the first but it's making the pet table the "master select" becuase I used the IN to start a sub-select to get the pet.id values.

Breaking down the statements:

ex6.sql:2 - get all the id, name, age, and dead columms
ex6.sql:3 - from the pet table and also get the person_pet and person tables
ex6.sql:5 - the id from the pet table is the pet_id from the person_pet talble
ex6.sql:6 - the person_id from the person_pet table is the id from the person table

ex6.sql:10 - get all the ids, names, ages, and deads columns
ex6.sql:11 - from the pet table
ex6.sql:12 - where the id in the pet table is
ex6.sql:14 - the pet_id from the person_pet table and get the person table because
ex6.sql:15 - person_id from the person_pet table is the id in the person table

I then ran the terminal command to create the ex6 database and ran the ex2, ex3, and ex4 scripts to load all the data in the table.

Also, by adding the -column and -header (like -echo) as part of the commmand, sqlite takes the column name and uses it as the headers for the output.

## Exercise 7

Here I learned about delete by using `DELETE FROM`.

### Study Drills

I created the code.sql file that will drop all the tables, recreate the tables, and re-add the old data. This will allow to only have to run 1 script instead of 4.

## Exercise 8

I learned how to delete data from a table by using a join and how to use the `NOT IN` to remove the abandoned pets.

I also learned a terminal command that concatinates my sql files into one file using `cat ex2.sql ex3.sql ex4.sql ex7.sql > catcode.sql`.

## Exercise 9

I learned how to change data by using `UPDATE`.

## Exercise 10

I learned how to update data on a table by joining multiple tables where the data lives on another table.

For this exercise, I needed to rename the pets where owner's name was Zed. In order to do that, I had to join the three tables and have the `WHERE` clause be Zed. Since both pets are owned by Zed, their names should now be Zed's Pet
