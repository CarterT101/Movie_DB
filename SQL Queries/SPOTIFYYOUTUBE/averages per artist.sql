select "Artist", 
AVG("Danceability") a_d, 
AVG("Energy") a_e, 
AVG("Valence") a_v
from "spotyou_table"
GROUP BY "Artist"
ORDER BY a_d DESC