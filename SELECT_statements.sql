USE ddl_dml_pratice;
-- BETWEEN operators to select the range
SELECT * FROM movie_metadata 
	WHERE duration BETWEEN 170 AND 200
;
-- IN operators
SELECT duration, gross,language,country FROM movie_metadata 
	WHERE duration IN (170,200)
;
-- Comparision Operators
SELECT country,language FROM movie_metadata 
	WHERE country ='USA'
;
SELECT country,language FROM movie_metadata 
	WHERE country !='USA' 
;
-- Wildcards using LIKE & NOT LIKE
SELECT * FROM movie_metadata;
SELECT movie_title,language,country FROM movie_metadata
	WHERE movie_title LIKE 'Spider%'
;
SELECT movie_title,language,country ,num_user_for_reviews FROM movie_metadata
	WHERE num_user_for_reviews > 5000
;
SELECT movie_title,language,country FROM movie_metadata
	WHERE movie_title LIKE '%Dark Knight%'
;
SELECT country FROM movie_metadata 
	WHERE country IS NULL
;
SELECT country,duration FROM movie_metadata 
	WHERE duration NOT LIKE '9_' AND duration  LIKE 178
;
SELECT country,duration FROM movie_metadata 
	WHERE duration  LIKE 178
;
