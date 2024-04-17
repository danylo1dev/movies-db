SELECT * FROM movies
WHERE age_certificate = '15';

SELECT * FROM movies
WHERE age_certificate = '15'
AND movie_lang = 'Chinese';

SELECT * FROM movies
WHERE age_certificate = '15'
OR movie_lang = 'Chinese';

SELECT * FROM movies 
WHERE movie_lang = 'English'
AND age_certificate = '15'
AND director_id = 27;

-- Using logical operators (>, >=, <, <=)

SELECT movie_name, movie_length FROM movies
WHERE movie_length > 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length >= 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length < 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length <= 120;

SELECT * FROM movies
WHERE release_date < '1999-12-31';

SELECT * FROM movies
WHERE movie_lang <= 'English';

-- selecting data where a column is between 2 values 

SELECT * FROM movies;

SELECT movie_name, release_date FROM movies 
WHERE release_date BETWEEN '1995-01-01' AND '1999-12-31';

SELECT movie_name, movie_length FROM movies
WHERE movie_length BETWEEN 90 AND 120;

SELECT movie_name, movie_lang FROM movies 
WHERE movie_lang BETWEEN 'Eo' AND 'Portuguese';

SELECT movie_id, movie_name FROM movies 
FETCH FIRST 1 ROW ONLY;

SELECT movie_id, movie_name FROM movies 
FETCH FIRST 10 ROW ONLY;

SELECT movie_id, movie_name FROM movies 
OFFSET 8 ROWS
FETCH FIRST 10 ROW ONLY;

-- Distinct values 

SELECT DISTINCT movie_lang, age_certificate FROM movies 
ORDER BY movie_lang;

SELECT DISTINCT * FROM movies;
