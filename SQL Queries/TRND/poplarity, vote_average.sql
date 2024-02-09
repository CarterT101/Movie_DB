SELECT title, popularity, vote_average FROM "trnd_movie_table"
WHERE popularity > 80 OR vote_average > 9
ORDER BY popularity DESC