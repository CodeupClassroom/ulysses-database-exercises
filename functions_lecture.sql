use employees;

SELECT concat('fer', '-','mendoza', ' ',13);

# first name like starts with Par
SELECT
  emp_no,
  concat(first_name, ' ', last_name) AS 'fullName'
FROM employees
  WHERE first_name LIKE 'Par%'
LIMIT 10;

# first name like ends with cia
SELECT
  emp_no,
  concat(first_name, ' ', last_name) AS 'fullName'
FROM employees
WHERE first_name LIKE '%cia'
LIMIT 10;


# first name contains sh no matter where
SELECT
  emp_no,
  concat(first_name, ' ', last_name) AS 'fullName'
FROM employees
WHERE first_name LIKE '%sh%'
LIMIT 10;

SELECT now();

SELECT curdate();

SELECT curtime();

SELECT CONCAT(
    'Teaching people to code for ',
    UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
    ' seconds'
);

# estimated number of years
SELECT CONCAT(
    'Teaching people to code for ',
    (UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04')) / 31536000,
    ' years'
);



-- days in seconds 86400