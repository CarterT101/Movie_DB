-- creating CTE named "ranked_movies"
WITH ranked_movies AS (
  SELECT
    title,
    main_genre,
    popularity,
	-- create unique column with rank number within its genre for each title 
	-- based on popularity in descending order
	-- "PARTITION BY main_genre" ensures it resets per genre
    ROW_NUMBER() OVER (PARTITION BY main_genre ORDER BY popularity DESC) AS rnk
  FROM
    "trnd_movie_table"
)
-- this final query section selects top 5 movies per genre 
-- by filtering rows where "rank" is less than or equal to 5
SELECT
  title,
  main_genre,
  popularity,
  rnk
FROM
  ranked_movies
WHERE
  rnk <= 5;
