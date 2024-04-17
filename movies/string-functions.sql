-- UPPER AND LOWER FUNCTIONS 

SELECT UPPER('stop shouting');

SELECT first_name, UPPER(last_name) AS last_name FROM actors;

SELECT * FROM actors;

SELECT LOWER('StOP SHoutiNG');

SELECT LOWER(movie_name) FROM movies;

SELECT movie_name FROM movies;

-- INITCAP STRING FUNCTION 

SELECT INITCAP('eXamplE sTRING');

SELECT movie_name FROM movies;

SELECT INITCAP(movie_name) FROM movies;

-- LEFT AND RIGHT STRING FUNCTIONS 

SELECT LEFT('string', 3);

SELECT LEFT(movie_name, 5) FROM movies;

SELECT RIGHT('example', 2);

SELECT RIGHT(first_name, 2) FROM actors;

SELECT * FROM actors;

-- REVERSE FUNCTION

SELECT REVERSE('reverse');

SELECT movie_name, REVERSE(movie_name) FROM movies;

-- SUBSTRING FUNCTION 

SELECT SUBSTRING('long string', 5, 3);

SELECT first_name, SUBSTRING(first_name, 3, 4) FROM actors;

-- REPLACE FUNCTION 

SELECT REPLACE('a cat plays with another cat', 'cat', 'dog');

SELECT * FROM actors;

SELECT first_name, last_name, REPLACE(gender, 'M', 'Male') FROM actors;

SELECT * FROM directors;

UPDATE directors 
SET nationality = REPLACE(nationality, 'Brit', 'Engl')
WHERE nationality = 'British';

-- SPLIT_PART FUNCTION 

SELECT SPLIT_PART('first_name.last_name@gmail.com', '.', 3);

SELECT movie_name, SPLIT_PART(movie_name, ' ', 1) AS first_word,
SPLIT_PART(movie_name, ' ', 2) AS second_word
FROM movies;

-- Using Casting to apply String Functions to Non String Data Types 

SELECT * FROM directors;

SELECT date_of_birth::TEXT FROM directors;

SELECT SPLIT_PART(date_of_birth::TEXT, '-', 1) FROM directors;
