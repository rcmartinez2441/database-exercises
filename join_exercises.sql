USE employees;

SELECT d.dept_name                            AS Department_Name,
       CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name
LIMIT 100;

# Find the name of all departments currently managed by women.
SELECT d.dept_name                            AS Department_Name,
       CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d ON d.dept_no = dm.dept_no
WHERE e.gender = 'F'
  AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT title, COUNT(title)
FROM titles
GROUP BY title;

# FROM departments;  d009 - dept_no

# Find the current salary of all current managers.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager,
       d.dept_name                            AS Department_Name,
       s.salary                               AS Manager_Salary
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d ON d.dept_no = dm.dept_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Find the names of all current employees, their department name, and their current manager's name
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee_Full_Name,
        d.dept_name AS Department_Name,
#        CONCAT(e.first_name, ' ', e.last_name) AS Manager
        dm.emp_no AS Manager_Emp_No,
        e.emp_no AS Employee_No,
        (SELECT CONCAT(e.first_name, ' ', e.last_name)
            FROM employees
            WHERE dm.dept_no IN (d.dept_no)) AS Department_Manager
FROM employees e
JOIN dept_emp de on e.emp_no = de.emp_no
JOIN dept_manager dm on de.dept_no = dm.dept_no
JOIN departments d on de.dept_no = d.dept_no and dm.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01'
LIMIT 500;
