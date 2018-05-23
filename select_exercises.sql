USE codeup_test_db;

SELECT 'Albums by Pink Floyd' as '--->>> Info <<<---';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'Year Sgt. Pepper''s Lonely... was Released' as '--->>> Info <<<---';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre of Nevermind' as '--->>> Info <<<---';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Albums Released in the 90s' as '--->>> Info <<<---';
SELECT release_date, name FROM albums where release_date BETWEEN 1990 and 1999;


SELECT 'Albums w/ < 20 million certified sales' as '--->>> Info <<<---';
SELECT name FROM albums WHERE sales < 20;

SELECT 'Rock Albums' as '--->>> Info <<<---';
SELECT name FROM albums WHERE genre = 'Rock';

-- SELECT name FROM albums WHERE genre LIKE '%rock%';
