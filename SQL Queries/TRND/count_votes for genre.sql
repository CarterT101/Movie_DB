select SUM(vote_count) count_votes, main_genre
from "trnd_movie_table"
group by main_genre
order by count_votes desc
