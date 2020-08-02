DROP TABLE IF EXISTS movie_person_title_junction;
DROP TABLE IF EXISTS movie_genre_junction;
DROP TABLE IF EXISTS movie_language_junction;
DROP TABLE IF EXISTS movie_country_junction;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS production_company;
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS job_title;
DROP TABLE IF EXISTS country_origin;
DROP TABLE IF EXISTS language;
DROP TABLE IF EXISTS genre;


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
	"company_id" VARCHAR(100),
	CONSTRAINT "pk_movie" PRIMARY KEY (
        "movie_id"
     )
);

CREATE TABLE "production_company" (
	"company_id" VARCHAR(100)   NOT NULL,
	"company_name" VARCHAR(255),
	CONSTRAINT "pk_production_company" PRIMARY KEY (
		"company_id"
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

CREATE TABLE "genre" (
    "genre_id" VARCHAR(100)   NOT NULL,
    "genre_name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_genre" PRIMARY KEY (
        "genre_id"
     )
);

CREATE TABLE "movie_genre_junction" (
    "movie_id" VARCHAR(100)   NOT NULL,
    "genre_id" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_movie_genre_junction" PRIMARY KEY (
        "movie_id","genre_id"
     )
);

CREATE TABLE "country_origin" (
    "country_id" INT   NOT NULL,
    "country_name" VARCHAR(100),
    CONSTRAINT "pk_country_origin" PRIMARY KEY (
        "country_id"
     )
);

CREATE TABLE "movie_country_junction" (
    "movie_id" VARCHAR(100)   NOT NULL,
    "country_id" INT   NOT NULL,
    CONSTRAINT "pk_movie_country_junction" PRIMARY KEY (
        "movie_id","country_id"
     )
);

CREATE TABLE "language" (
    "language_id" INT   NOT NULL,
    "language" VARCHAR(100),
    CONSTRAINT "pk_language" PRIMARY KEY (
        "language_id"
     )
);

CREATE TABLE "movie_language_junction" (
    "movie_id" VARCHAR(100)   NOT NULL,
    "language_id" INT   NOT NULL,
    CONSTRAINT "pk_movie_language_junction" PRIMARY KEY (
        "movie_id","language_id"
     )
);

ALTER TABLE "movie" ADD CONSTRAINT "fk_movie_company_id" FOREIGN KEY("company_id")
REFERENCES "production_company" ("company_id");

ALTER TABLE "movie_person_title_junction" ADD CONSTRAINT "fk_movie_person_title_junction_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movie" ("movie_id");

ALTER TABLE "movie_person_title_junction" ADD CONSTRAINT "fk_movie_person_title_junction_person_id" FOREIGN KEY("person_id")
REFERENCES "person" ("person_id");

ALTER TABLE "movie_person_title_junction" ADD CONSTRAINT "fk_movie_person_title_junction_job_title_id" FOREIGN KEY("job_title_id")
REFERENCES "job_title" ("job_title_id");

ALTER TABLE "movie_genre_junction" ADD CONSTRAINT "fk_movie_genre_junction_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movie" ("movie_id");

ALTER TABLE "movie_genre_junction" ADD CONSTRAINT "fk_movie_genre_junction_genre_id" FOREIGN KEY("genre_id")
REFERENCES "genre" ("genre_id");

ALTER TABLE "movie_country_junction" ADD CONSTRAINT "fk_movie_country_junction_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movie" ("movie_id");

ALTER TABLE "movie_country_junction" ADD CONSTRAINT "fk_movie_country_junction_country_id" FOREIGN KEY("country_id")
REFERENCES "country_origin" ("country_id");

ALTER TABLE "movie_language_junction" ADD CONSTRAINT "fk_movie_language_junction_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movie" ("movie_id");

ALTER TABLE "movie_language_junction" ADD CONSTRAINT "fk_movie_language_junction_language_id" FOREIGN KEY("language_id")
REFERENCES "language" ("language_id");


