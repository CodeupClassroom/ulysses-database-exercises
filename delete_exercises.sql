USE codeup_test_db;

SELECT 'Dropping albums released after 1991....' AS '--->>> INFO <<<---';
DELETE FROM albums WHERE release_date > 1991;
SELECT * FROM albums WHERE release_date > 1991;

SELECT 'Dropping albums with the disco genre' AS '--->>> INFO <<<---';
DELETE FROM albums WHERE genre = 'disco';
SELECT * FROM albums WHERE genre = 'disco';

SELECT 'Dropping albums by the beatles' AS '--->>> INFO <<<---';
DELETE FROM albums WHERE artist = 'The Beatles';
SELECT * FROM albums WHERE artist = 'The Beatles';
