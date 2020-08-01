-- Query to check successful load
SELECT * FROM movie;
SELECT * FROM person;
SELECT * FROM job_title;
SELECT * FROM movie_person_title_junction;
SELECT * FROM country_origin;
SELECT * FROM movie_country_junction;
SELECT * FROM language;
SELECT * FROM movie_language_junction;
SELECT * FROM genre;
SELECT * FROM movie_genre_junction;
SELECT * FROM production_company;

-- Join tables on movie_id
SELECT movie.movie_id, movie.movie_title, movie_person_title_junction.person_id
FROM movie
INNER JOIN movie_person_title_junction
ON movie.movie_id = movie_person_title_junction.movie_id;
