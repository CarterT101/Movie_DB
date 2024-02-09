select AVG(vote_average) average_voteavg, main_genre
from "trnd_movie_table"
group by main_genre
order by average_voteavg desc
