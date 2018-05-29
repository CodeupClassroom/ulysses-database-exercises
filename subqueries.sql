-- Codeup records example
SELECT name, github_username
FROM users
WHERE cohort_id = (
    SELECT id FROM cohorts WHERE name = 'Ulysses'
);

-- find all the managerial employees without a JOIN
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

