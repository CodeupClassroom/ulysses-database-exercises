use employees;

SELECT concat('fer', '-','mendoza', ' ',13);

SELECT
  concat(first_name, ' ', last_name) AS 'fullName',
  concat(emp_no, 'A'),
  emp_no
FROM employees
LIMIT 10;




-- days in seconds 86400