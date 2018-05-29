-- find all the managerial employees without a JOIN

SELECT e.first_name, e.last_name, e.birth_date
FROM dept_manager dm
JOIN employees e ON dm.emp_no = e.emp_no
LIMIT 10;

-- SELECT first_name, last_name, birth_date
-- FROM employees
-- WHERE emp_no IN (
--     SELECT emp_no
--     FROM dept_manager
-- )
-- LIMIT 10;

































-- Codeup records example -- we have separate tables for students and cohorts
-- Find the names, github usernames, and email addresses for a given cohort

SELECT s.name, s.email, s.github_username
FROM students s
JOIN cohorts c ON s.cohort_id = c.id
WHERE c.name = 'Ulysses';


-- SELECT name, email, github_username
-- FROM students
-- WHERE cohort_id = (
--     SELECT id FROM cohorts WHERE name = 'Ulysses'
-- );





























-- Who manages the customer service department?

SELECT
    CONCAT(e.last_name, ', ', e.first_name) as name
FROM employees e
JOIN dept_manager dm on dm.emp_no = e.emp_no
JOIN departments d on dm.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
    AND dm.to_date > now();





































