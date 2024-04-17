--Add an email column to the owners table

ALTER TABLE owners
ADD COLUMN email VARCHAR(50) UNIQUE;

SELECT * FROM owners;

--Change the data type of the last_name column in the owners table to VARCHAR(50).

ALTER TABLE owners
ALTER COLUMN last_name TYPE VARCHAR(50);

SELECT * FROM owners;