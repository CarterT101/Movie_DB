select title, main_genre,
AVG(vote_average) OVER() as avg_vote
from "trnd_movie_table"
