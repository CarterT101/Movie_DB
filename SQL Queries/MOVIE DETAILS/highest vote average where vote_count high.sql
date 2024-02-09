select original_title, vote_average, vote_count from "movie_detail_table"
WHERE vote_count > 1000
ORDER BY vote_average DESC