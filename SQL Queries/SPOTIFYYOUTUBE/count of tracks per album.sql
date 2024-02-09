select "Artist", "Album", count("Track") OVER (PARTITION BY "Album") 
from "spotyou_table"
ORDER BY count DESC