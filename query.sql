-- Query to check successful load
SELECT * FROM movie;

SELECT * FROM person;

SELECT * FROM job_title;

SELECT * FROM movie_person_title_junction;

-- Join tables on county_id
-- SELECT premise.id, premise.premise_name, county.county_name
-- FROM premise
-- INNER JOIN county
-- ON premise.county_id = county.id;
