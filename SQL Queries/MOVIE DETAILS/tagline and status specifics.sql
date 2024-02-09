/* 

*/

select original_title, status, tagline
from "movie_detail_table"
WHERE status = 'Released'
AND tagline LIKE '%love%'
