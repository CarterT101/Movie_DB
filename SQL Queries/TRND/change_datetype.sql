ALTER TABLE trnd_movie_table
ALTER COLUMN release_date
SET DATA TYPE date
USING to_date(release_date, 'YYYY-MM-DD');