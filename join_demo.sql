# Show Users who have roles
SELECT *
FROM users
JOIN roles on roles.id = users.role_id;

# Show all users, regardless of if they have a role or not
SELECT *
FROM users
LEFT JOIN roles ON roles.id = users.role_id;

SELECT *
FROM roles
RIGHT JOIN users ON roles.id = users.role_id;

# show all roles, whether or not they have a user
SELECT *
FROM roles
LEFT JOIN users ON roles.id = users.role_id;

USE employees;
SELECT *
FROM salaries
JOIN employees ON salaries.emp_no = employees.emp_no
WHERE salaries.to_date > now();

# Many to Many relationship
# one department has many employees
# one employee could have many departments (over time)
# we need a pivot table to associate employees w/ the departments where they work

SELECT concat(e.first_name, " ", e.last_name) as full_name, d.dept_name
FROM departments d
JOIN dept_emp ON d.dept_no = dept_emp.dept_no
JOIN employees e ON dept_emp.emp_no = e.emp_no;

# One employee has many departments
# One department has many employees
# Many-to-Many
# employees -> dept_emp -> departments

# Example:
# posts have many tags
# tags have many posts
# many to many
# to make a place to store this data, we make a 3rd table
# that third table has foreign keys that point to the other 2