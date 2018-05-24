SELECT DISTINCT first_name
FROM employees
LIMIT 100;

SELECT first_name
FROM employees
GROUP BY first_name;

SELECT
  first_name, last_name, count(*) AS repeats
FROM employees
-- WHERE first_name LIKE 'e%e'
  GROUP BY first_name, last_name
ORDER BY repeats DESC;

DESCRIBE salaries;

select * from employees where first_name = 'Ebbe' and last_name = 'Blokdijk';
