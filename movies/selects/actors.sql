-- Using IN and NOT IN 

SELECT first_name, last_name FROM actors 
WHERE first_name IN ('Bruce','John');

SELECT first_name, last_name FROM actors 
WHERE first_name IN ('Bruce','John','Peter');

SELECT first_name, last_name FROM actors 
WHERE first_name NOT IN ('Bruce','John','Peter');

SELECT actor_id, first_name, last_name FROM actors 
WHERE actor_id IN (2,3,4,5,6,8);

SELECT actor_id, first_name, last_name FROM actors 
WHERE actor_id NOT IN (2,3,4,5,6,8);

-- Using LIKE with % and _ 

SELECT * FROM actors 
WHERE first_name LIKE 'P%';

SELECT * FROM actors 
WHERE first_name LIKE 'Pe_';

SELECT * FROM actors 
WHERE first_name LIKE '%rl%';

SELECT * FROM actors 
WHERE first_name LIKE '__rl__';

-- Ordering the results returned 

SELECT * FROM actors;

SELECT first_name, last_name, date_of_birth FROM actors 
ORDER BY first_name;

SELECT actor_id, first_name, last_name, date_of_birth FROM actors 
ORDER BY actor_id DESC;

SELECT actor_id, first_name, last_name, date_of_birth FROM actors 
WHERE gender = 'F'
ORDER BY date_of_birth DESC;

-- Using concatenate  

SELECT CONCAT(first_name, last_name) AS full_name FROM actors;

SELECT CONCAT(first_name,':', last_name) AS full_name FROM actors;

SELECT CONCAT_WS(' ', first_name, last_name, date_of_birth) AS full_name FROM actors;

-- Dealing with NULL values 

SELECT * FROM actors
WHERE date_of_birth IS NOT NULL;



