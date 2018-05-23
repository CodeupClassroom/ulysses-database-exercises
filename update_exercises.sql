USE codeup_test_db;

SELECT 'Updating sales...' as '--->>> INFO <<<---';
UPDATE albums
SET sales = sales * 10;
SELECT sales FROM albums;

SELECT 'Updating release_dates...' as '--->>> INFO <<<---';
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;
SELECT release_date FROM albums WHERE release_date < 1980;

SELECT 'Renaming {Michael,Peter} Jackson' as '--->>> INFO <<<---';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT artist FROM albums WHERE artist = 'Michael Jackson';
SELECT artist FROM albums WHERE artist = 'Peter Jackson';
