USE movies;
-- a
CREATE VIEW title_num AS
SELECT COUNT(DISTINCT title)
FROM movie;

-- b
CREATE VIEW lana_headey_star AS
SELECT m.title,m.year AS 'year of release',m.rating
FROM movie_people mp
JOIN movie m
ON mp.movieID = m.ID
WHERE mp.personID IN (SELECT ID FROM person WHERE name = 'Lana Headey') AND (mp.profession = 'cast');

-- c
CREATE VIEW director_total_gross AS
SELECT p.name, SUM(m.gross_millions) AS total_gross
FROM movie_people mp
LEFT JOIN movie m
ON mp.movieID = m.gross_millions
LEFT JOIN person p
ON mp.personID = p.ID
WHERE profession = 'director' AND m.gross_millions IS NOT NULL
GROUP BY personID
ORDER BY m.gross_millions desc;

-- d
CREATE VIEW top_earn_comedy AS
SELECT m.title, m.year, m.rating, mg.genreID, m.gross_millions
FROM movie_genre mg
LEFT JOIN movie m
ON mg.movieID = m.ID
WHERE mg.genreID IN (SELECT ID FROM genre WHERE genre_name ='Comedy')
ORDER BY m.gross_millions desc
LIMIT 5;

-- e
CREATE VIEW DeNiro_and_Scorsese AS
SELECT m.title, m.year as 'year of release', m.rating
FROM movie_people mp
LEFT JOIN movie m
ON mp.movieID = m.ID
WHERE mp.personID in (SELECT ID from person where name='Martin Scorsese') -- INTERSECT FUNCTION
	AND mp.profession = 'director'
	AND mp.movieID in (SELECT mp.movieID
					   FROM movie_people mp
					   LEFT JOIN movie m
					   ON mp.movieID = m.ID
					   WHERE mp.personID in (SELECT ID from person where name='Robert De Niro')
                       AND mp.profession = 'cast');
-- (SELECT ID from person where name='Martin Scorsese');
