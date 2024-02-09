select distinct(id), title, release_date, vote_average, curr_date from "trnd_movie_table"
where curr_date is not null;
 