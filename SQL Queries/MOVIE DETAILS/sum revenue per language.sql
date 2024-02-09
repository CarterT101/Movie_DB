SELECT original_language, SUM(revenue) from movie_detail_table
GROUP BY original_language