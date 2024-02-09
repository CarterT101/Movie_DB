/* 
vote_average >= 8.0
released in USA. Data ex:
[{'iso_3166_1': 'GB', 'name': 'United Kingdom'}, {'iso_3166_1': 'US', 'name': 'United States of America'}]
budget < 50000000

substring using regular expression substring(prod... from '[input regular_expression]')
*/

select original_title, vote_average, budget, substring(production_countries from 'United S+.*America') as full_country, 
CASE 
	WHEN production_countries LIKE '%United Sta%' THEN 'USA' 
END AS country
from "movie_detail_table"
WHERE vote_average >= 8.0 
AND budget < 500000
AND production_countries LIKE '%United Sta%'

