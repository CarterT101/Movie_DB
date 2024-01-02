select DISTINCT ON (trnd.id) trnd.id, trnd.title, trnd.overview 
from trnd_movie_table trnd
WHERE trnd.title LIKE 'Star Wars%'

