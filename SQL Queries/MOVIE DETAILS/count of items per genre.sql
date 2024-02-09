select main_genre, COUNT(*) from "movie_detail_table"
GROUP BY main_genre
ORDER BY count DESC
