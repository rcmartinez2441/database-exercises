# I want employees first and last name
#  I want all managers first and last name


USE employees;

SELECT e.first_name, e.last_name,
       (SELECT CONCAT(first_name, ' ', last_name ) FROM employees manager_emp WHERE dm.emp_no = manager_emp.emp_no) AS Manager
FROM employees e
JOIN  dept_emp de on e.emp_no = de.emp_no
JOIN dept_manager dm on de.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
AND de.to_date = '9999-01-01'