USE employees;

SELECT DISTINCT title
from titles;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
      AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

# Get 10th page

LIMIT 5 OFFSET 0 -- page 1
LIMIT 5 OFFSET 5 -- PAGE 2
LIMIT 5 OFFSET 10 -- PAGE 3

LIMIT 5 OFFSET ((pageNumb - 1)) * limit) -- page n

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
      AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;
