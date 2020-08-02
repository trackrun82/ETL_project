# ETL_project

The goal of this project was to form a database out of *at least 2* data sources by **E**xtracting, **T**ransforming and **L**oading the data.

### Project Proposal
[ETL Project Proposal](https://github.com/trackrun82/ETL_project/blob/master/ETL%20Project%20proposal.docx) - initial proposal submitted for approval

### Data Extraction
2 files were downloaded and extracted from [Kaggle website](https://www.kaggle.com/stefanoleone992/imdb-extensive-dataset)
* [IMDb movies.csv](https://www.kaggle.com/stefanoleone992/imdb-extensive-dataset?select=IMDb+movies.csv)
* [IMDb names.csv](https://www.kaggle.com/stefanoleone992/imdb-extensive-dataset?select=IMDb+names.csv)

A folder named 'data' was created in the main project folder and these files were placed in it

### ERD for movie_db
* [Full Movie ERD Diagram](https://github.com/trackrun82/ETL_project/blob/master/Full%20Movie%20ERD%20Diagram.png) - ERD diagram created and exported as PNG image online at [quickdatabasediagrams.com](https://app.quickdatabasediagrams.com/#/d/D9jGD3)
* ERD diagram was also exported as PostgreSQL file - file was renamed schema and placed in main project folder

### Individual Cleaning and Filtering Notebooks
* [Individual_ET_Genre_Production](https://github.com/trackrun82/ETL_project/blob/master/Individual_ET_Genre_Production.ipynb) - Shanker's jupyter notebook for creating and transforming the genre and production company tables
* [Individual_ET_Language_Country](https://github.com/trackrun82/ETL_project/blob/master/Individual_ET_Language_Country.ipynb) - Amy's jupyter notebook for creating and transforming the language and country tables
* [Individual_ET_movie_person_jobtitle](https://github.com/trackrun82/ETL_project/blob/master/Individual_ET_movie_person_jobtitle.ipynb) - Beth's jupyter notebook for creating and transforming the movie, person and job_title talbes

### pgAdmin
* Database 'movies_db' was created in PostgreSQL Server
* Query Tool was opened and [schema](https://github.com/trackrun82/ETL_project/blob/master/schema.sql) file from previously exported [PostgreSQL file](https://app.quickdatabasediagrams.com/#/d/D9jGD3) from ERD was opened
* 'schema.sql' file was modified and then Executed in PostgreSQL to form all necessary tables with primary and foreign keys in the movies_db

### Final Transform and Load Notebook
* 'secret.py' file was created in main project folder to store username and password for PostgreSQL
* [Main_ETL_project2](https://github.com/trackrun82/ETL_project/blob/master/Main_ETL_project2.ipynb) - final combination of transform and load code for movie_db

### Back to pgAdmin 
* Additional Query Tool was opened and [query](https://github.com/trackrun82/ETL_project/blob/master/query.sql) file was opened to verify each table had data
* Simple join was run to verify tables were working properly

### Final Project Report
[Movie_IMDB_Database_ETL_Team5](https://github.com/trackrun82/ETL_project/blob/master/Movie_IMDB_Database_ETL_Team5.docx) - final report detailing how each part of **E**(xtract), **T**(ransform), and **L**(oad) was used to form the relational database 'movies_db'
