select "Channel",
COUNT("Title"),
SUM("Views"),
AVG("Likes")
from "spotyou_table"
GROUP BY "Channel"
ORDER BY count DESC