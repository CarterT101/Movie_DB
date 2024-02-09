SELECT original_title, overview, original_language, 
release_date, popularity, vote_average, vote_count, curr_date 
FROM (SELECT DISTINCT(id), * FROM "up_movie_table")