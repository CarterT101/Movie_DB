# Movie_DB
Creating a Movie Database Pipeline;

This database gathers data from The Movie Database APIs.
https://developer.themoviedb.org/reference/intro/getting-started

Using 4 of their APIs.

Movie Data
1. https://developer.themoviedb.org/reference/trending-movies
2. https://developer.themoviedb.org/reference/movie-upcoming-list

Genre Gathering
3. https://developer.themoviedb.org/reference/genre-movie-list
4. https://developer.themoviedb.org/reference/genre-tv-list

It connects to the trending movies, and then upcoming movies. 
After some data cleanup and transformation, it brings them into my local PostgreSQL database.

It has some environmental keys you will have to use to set up the database connection.
READ_ACCESS_KEY = # Movie Database authorization key
SQL_DB_KEY = PostgreSQL database key
ENV_USER = localhost username

This will 2 folders within the repository for Jupyter Notebooks and CSV files to read/write to.
/CSV, /Notebooks

Module requirements:
pandas # for main dataframe processes
psycopg2 # postgresql database connection
os # for environment variables
sqlalchemy # for pandas and postgresql connection
requests # for API connection later
json # for easier API data gathering
re # for searching text
datetime # for gathering dates and times
