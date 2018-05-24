
USE employees;

# use DISTINCT to find the unique titles in the titles table. Your results should look like:

SELECT DISTINCT title
FROM titles;

# query for employees whose last names start and end with 'E'. Update the query find just the unique last names that start and end with 'E' using GROUP BY
SELECT last_name
FROM employees
WHERE last_name like 'E%E'
GROUP BY last_name;

# find unique combinations of first and last name where the last name starts and ends with 'E'
SELECT CONCAT(first_name, " ", last_name) AS full_name
FROM employees
WHERE last_name like 'E%E'
GROUP BY full_name

SELECT last_name
FROM employees
WHERE last_name like '%q%'
AND last_name not like '%qu%'
GROUP BY last_name;

# Add a COUNT() to your results, use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT last_name, count(last_name) as "number of people with this last name"
FROM employees
WHERE last_name like '%q%'
AND last_name not like '%qu%'
GROUP BY last_name;

# Update your query for 'Irena', 'Vidya', or 'Maya'.
# Use count(*) and GROUP BY to find the number of employees
# for each gender with those names.
SELECT count(*) "Number", gender
FROM employees
WHERE first_name IN ('Vidya', 'Irena', 'Maya')
GROUP BY gender;


