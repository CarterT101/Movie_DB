/*
the part ~* E'.*Action.*Adventure.*' uses a combination of operators and a string literal to perform a case-insensitive regular expression search within the genres column. 
Let's break it down:
~*: This is the PostgreSQL pattern matching operator. It compares the left operand (the genres column) to the right operand (the regular expression) and returns true if there is a match.
E: This prefix before the single quote identifies the following as an escape string literal. This allows you to include special characters like . within the string without it being interpreted as part of the regular expression syntax.
.*: This is a wildcard character that matches any sequence of zero or more characters. 
*/

select original_title, genres, release_date from "movie_detail_table"
WHERE genres ~* E'.*Action.*Adventure.*'
ORDER BY release_date DESC