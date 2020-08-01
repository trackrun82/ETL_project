DROP TABLE IF EXISTS movie_person_title_junction;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS job_title;

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/D9jGD3
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "movie" (
    "movie_id" VARCHAR(100)   NOT NULL,
    "movie_title" text   NOT NULL,
    "year_published" int,
    "movie_duration" int,
    "description" text,
    "votes_count" int,
    "votes_avg" double precision,
--     "company_id" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_movie" PRIMARY KEY (
        "movie_id"
     )
);

CREATE TABLE "person" (
    "person_id" VARCHAR(100)   NOT NULL,
    "person_name" VARCHAR(255)   NOT NULL,
    "birth_name" VARCHAR(255),
    "birth_year" double precision,
    "death_year" double precision,
    "height" integer,
    CONSTRAINT "pk_person" PRIMARY KEY (
        "person_id"
     )
);

CREATE TABLE "job_title" (
    "job_title_id" VARCHAR(100)   NOT NULL,
    "job_title" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_job_title" PRIMARY KEY (
        "job_title_id"
     )
);

CREATE TABLE "movie_person_title_junction" (
    "movie_id" VARCHAR(100)   NOT NULL,
    "person_id" VARCHAR(100)   NOT NULL,
    "job_title_id" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_movie_person_title_junction" PRIMARY KEY (
        "movie_id","person_id","job_title_id"
     )
);

ALTER TABLE "movie_person_title_junction" ADD CONSTRAINT "fk_movie_person_title_junction_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movie" ("movie_id");

ALTER TABLE "movie_person_title_junction" ADD CONSTRAINT "fk_movie_person_title_junction_person_id" FOREIGN KEY("person_id")
REFERENCES "person" ("person_id");

ALTER TABLE "movie_person_title_junction" ADD CONSTRAINT "fk_movie_person_title_junction_job_title_id" FOREIGN KEY("job_title_id")
REFERENCES "job_title" ("job_title_id");

