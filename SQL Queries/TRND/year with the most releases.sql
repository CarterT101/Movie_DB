SELECT EXTRACT(YEAR FROM to_date(release_date, 'YYYY-MM-DD')) AS year,
       COUNT(*) AS title_count
FROM "trnd_movie_table"
GROUP BY year
ORDER BY title_count DESC;
