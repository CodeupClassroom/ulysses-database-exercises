USE codeup_test_db;

SELECT name AS 'Albums by Pink Floyd'
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date as "Year when Sgt. Pepper's Lonely Heart Club Band was released"
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre
FROM albums
WHERE name = 'Nevermind';

SELECT name AS "Albums released in the 90s"
FROM albums
WHERE release_date
