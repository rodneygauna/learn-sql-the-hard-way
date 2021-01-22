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
