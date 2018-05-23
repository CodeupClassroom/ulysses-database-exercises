-- Where clause (continued)

-- % is the wildcard character, it matches 0 or more characters in the column's
-- value

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
