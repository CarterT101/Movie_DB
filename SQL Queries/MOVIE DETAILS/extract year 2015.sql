select original_title, release_date from "movie_detail_table"
WHERE EXTRACT(YEAR FROM to_date(release_date, 'YYYY-MM-DD')) = 2015