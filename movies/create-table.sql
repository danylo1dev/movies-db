CREATE DATABASE movie_data WITH OWNER = postgres ENCODING = 'UTF8' CONNECTION LIMIT = -1;


CREATE TABLE directors (
    director_id SERIAL PRIMARY_KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    date_of_birth DATE,
    nationality VARCHAR(20)  
    );
CREATE TABLE actors (
	actor_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender CHAR(1),
	date_of_birth DATE 
);

CREATE TABLE movies (
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(50),
	movie_length INT, 
	movie_lang VARCHAR(20),
	release_date DATE,
	age_certificate VARCHAR(5),
	director_id INT REFERENCES directors (director_id)
);

CREATE TABLE movie_revenues (
	revenue_id SERIAL PRIMARY KEY,
	movie_id INT REFERENCES movies (movie_id),
	domestic_takings DECIMAL(6,2),
	international_takings DECIMAL(6,2)
);


CREATE TABLE movies_actors (
	movie_id INT REFERENCES movies (movie_id),
	actor_id INT REFERENCES actors (actor_id),
	PRIMARY KEY (movie_id, actor_id)
);
