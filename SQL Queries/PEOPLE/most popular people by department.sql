select name, known_for_department, max_pop, rank_pop 
from (SELECT name, known_for_department, 
 max(popularity) OVER(partition by known_for_department order by popularity desc) as max_pop, 
 row_number() OVER(partition by known_for_department) as rank_pop FROM "people_movie_table")
where rank_pop = 1