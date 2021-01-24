/* only drops the person table if it exists */
DROP TABLE IF EXISTS person;

/* create the person table again */
CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

/* rename the person table to peoples */
ALTER TABLE person RENAME TO peoples;

/* add a new column called hatred */
ALTER TABLE peoples ADD COLUMN hatred INTEGER;

/* rename back to the original name */
ALTER TABLE peoples RENAME TO person;

/* output should show the table name as person (not peoples) and include the added column of hatred */
.schema person

/* drops the entire table again */
DROP TABLE person;
