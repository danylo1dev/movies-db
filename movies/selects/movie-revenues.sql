-- Limiting the number of records returned 

SELECT * FROM movie_revenues
ORDER BY revenue_id
LIMIT 8 OFFSET 2;

-- Dealing with NULL values 

SELECT * FROM movie_revenues
WHERE domestic_takings IS NOT NULL
ORDER BY domestic_takings DESC;

SELECT * FROM movie_revenues
WHERE international_takings IS NULL; 