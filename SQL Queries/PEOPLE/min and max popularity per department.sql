select * from 
(
	select 
			name,
			gender,
			known_for_department,
			popularity,
			row_number() OVER(partition by known_for_department ORDER BY popularity DESC) as dpt_rank,
			min(popularity) OVER(partition by known_for_department) as dpt_min,
			max(popularity) OVER(partition by known_for_department) as dpt_max
	from "people_movie_table"
)
WHERE popularity = dpt_min OR popularity = dpt_max
