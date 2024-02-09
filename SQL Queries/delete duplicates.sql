DELETE FROM "up_movie_table" t1
WHERE EXISTS (
    SELECT 1 FROM "up_movie_table" t2
    WHERE t1.id = t2.id AND t1.ctid < t2.ctid
);