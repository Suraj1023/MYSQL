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
/* duration is greater than 200 & movie_title start with A or S */
SELECT movie_title, duration FROM movie_metadata
	WHERE  (duration > 200) AND
    (movie_title LIKE 'S%' OR movie_title LIKE'A%')
;
-- SORTING VARIBALES defalut is asc , desc
/* sort duration in acsending order & gross in descending */
SELECT gross, duration FROM movie_metadata
	ORDER BY duration asc , gross desc
;
-- Aggrigation
SELECT COUNT( DISTINCT movie_title) AS COUNT,
	SUM(duration) AS total_duration,
    AVG(duration) AS avg_duration,
    MAX(duration) AS max_duration,
    min( DISTINCT duration) AS min_duration
	FROM movie_metadata 
	WHERE country ='USA'
;

--  GROUPING CLAUSE
SELECT country, language, COUNT(DISTINCT duration) AS COUNT,
	SUM(duration) AS total_duation
	FROM movie_metadata
	GROUP BY country
    HAVING language  = 'English'
;



