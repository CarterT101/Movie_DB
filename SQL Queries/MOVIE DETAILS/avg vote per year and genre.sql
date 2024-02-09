SELECT 
EXTRACT(YEAR FROM release_date) as release_year,
main_genre, 
AVG(vote_count)
from movie_detail_table
WHERE release_date NOTNULL
GROUP BY release_year, main_genre
ORDER BY release_year, main_genre


