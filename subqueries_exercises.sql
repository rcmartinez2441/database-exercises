USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery. (69 Rows)
SELECT first_name, last_name, hire_date
FROM employees e
WHERE e.hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

# Find all the titles held by all employees with the first name Aamod. (314 total titles, 6 unique titles)
SELECT t.title, COUNT(*)
FROM titles t
    JOIN employees e on t.emp_no = e.emp_no
WHERE e.first_name IN ('Aamod')
GROUP BY title
ORDER BY title;

# Find all the current department managers that are female.
SELECT CONCAT(e.first_name, ' ', e.last_name ) AS Female_Managers,
       e.gender
FROM employees e
    JOIN dept_manager dm on e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
AND e.gender = 'F';


# Find all the department names that currently have female managers.
SELECT DISTINCT d.dept_name
FROM employees e
    JOIN dept_manager dm on e.emp_no = dm.emp_no
    JOIN departments d on dm.dept_no = d.dept_no
WHERE e.gender = 'F'
AND dm.to_date = '9999-01-01'
GROUP BY d.dept_name
ORDER BY d.dept_name;

# Find the first and last name of the employee with the highest salary.
SELECT e.first_name, e.last_name, s.salary
FROM employees e
    JOIN salaries s on e.emp_no = s.emp_no
WHERE s.salary = (
    SELECT salary
    FROM salaries
    ORDER BY salary DESC
    LIMIT 1
    );
