/*!1st Task */
SELECT name FROM movies WHERE year = '1995';

/*!2nd Task */
SELECT DISTINCT COUNT(actor_id) FROM
movies JOIN roles ON id=movie_id
WHERE name='Lost in Translation';

/*!3rd Task */
SELECT first_name, last_name FROM
movies JOIN roles ON movies.id=roles.movie_id
JOIN actors ON roles.actor_id=actors.id
WHERE name='Lost in Translation';

/*!4th Task */
SELECT first_name, last_name FROM
movies JOIN movies_directors ON movies.id=movies_directors.movie_id
JOIN directors ON movies_directors.director_id=directors.id
WHERE name='Fight Club';

/*!5th Task */
SELECT COUNT(name) FROM
directors JOIN movies_directors ON directors.id=movies_directors.director_id
JOIN movies ON movies_directors.movie_id=movies.id
WHERE first_name='Clint' AND last_name='Eastwood';

/*!6th Task */
SELECT name FROM
directors JOIN movies_directors ON directors.id=movies_directors.director_id
JOIN movies ON movies_directors.movie_id=movies.id
WHERE first_name='Clint' AND last_name='Eastwood';

/*!7th Task */
SELECT first_name, last_name FROM
movies_genres JOIN movies_directors ON movies_genres.movie_id=movies_directors.movie_id
JOIN directors ON movies_directors.director_id=directors.id
where movies_genres.genre='Horror';

/*!8th Task */
SELECT actors.first_name, actors.last_name FROM
directors JOIN movies_directors ON directors.id=movies_directors.director_id
JOIN roles ON movies_directors.movie_id=roles.movie_id
JOIN actors ON roles.actor_id=actors.id
WHERE directors.first_name='Christopher' AND directors.last_name='Nolan';

