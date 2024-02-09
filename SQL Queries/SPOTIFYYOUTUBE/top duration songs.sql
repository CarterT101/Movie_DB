select "Artist", "Track", "Duration_ms" 
from "spotyou_table"
WHERE NOT "Duration_ms" IS NULL
ORDER BY "Duration_ms" DESC
