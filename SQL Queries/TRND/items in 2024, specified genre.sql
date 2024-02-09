SELECT r_year, title, main_genre 
FROM (
	SELECT EXTRACT(YEAR FROM to_date(release_date, 'YYYY-MM-DD')) AS r_year,
	title, main_genre
	FROM "trnd_movie_table"
	WHERE main_genre = 'Drama' OR main_genre = 'Comedy'
)
WHERE r_year >= 2024 
