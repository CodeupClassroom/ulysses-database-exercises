USE employees;
-- Where clause (continued)

-- % is the wildcard character, it matches 0 or more characters in the column's
-- value
USE employees;

SELECT first_name
FROM employees
WHERE first_name LIKE '%Dharmaraja%';

-- what might amazon's backend look like?
SELECT name, id, price
FROM products
WHERE description like '%searchTerm%';

-- we can use the DISTINCT keyword to remove duplicates from our results
SELECT DISTINCT first_name
FROM employees
WHERE first_name LIKE 'a%';

SELECT DISTINCT last_name
FROM employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no BETWEEN 10026 AND 10082;

-- the IN keyword lets us specify a set of values

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

-- later on -- subqueries
-- SELECT first_name, last_name
-- FROM employees
-- WHERE emp_no IN (SELECT emp_no from dept_manager);

SELECT *
FROM employees
WHERE first_name NOT NULL;

SELECT *
FROM employees
WHERE emp_no BETWEEN 12000 AND 13000
AND (birthday LIKE '%-05-23'
OR hire_date LIKE '%-05-23');

SELECT *
FROM employees
WHERE birthday BETWEEN '1970-01-01' AND '1971-01-01';

SELECT *
FROM employees
WHERE hire_date < now();


SELECT first_name
FROM employees;