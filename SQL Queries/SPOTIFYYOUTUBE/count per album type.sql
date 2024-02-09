select "Album_type", COUNT("Track")
from "spotyou_table"
GROUP BY "Album_type"