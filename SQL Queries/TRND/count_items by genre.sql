select COUNT(title) count_title, main_genre
from "trnd_movie_table"
group by main_genre
order by count_title desc
