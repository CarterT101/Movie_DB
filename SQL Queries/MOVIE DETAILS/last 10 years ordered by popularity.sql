/* 
WHERE release_date >= CURRENT_DATE - INTERVAL '10 years': 
This is the crucial part that filters the data based on the release date:
release_date: This references the column containing the date values in your table.
>=: This operator ensures that only rows with release dates greater than or equal to the calculated date are included.
CURRENT_DATE - INTERVAL '10 years': This expression subtracts 10 years from the current date, effectively calculating a date 10 years ago.
*/

select release_date, original_title, popularity from "movie_detail_table"
WHERE release_date >= CURRENT_DATE - INTERVAL '10 year' AND release_date <= CURRENT_DATE
ORDER BY popularity DESC