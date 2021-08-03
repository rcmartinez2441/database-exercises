USE employees;

SELECT d.dept_name                            AS Department_Name,
       CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name
LIMIT 100;

#3 Find the name of all departments currently managed by women.
SELECT d.dept_name                            AS Department_Name,
       CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d ON d.dept_no = dm.dept_no
WHERE e.gender = 'F'
  AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

#4 Find the current titles of employees currently working in the Customer Service department.
SELECT title, count(*) AS Total
from titles as t
         join dept_emp de on t.emp_no = de.emp_no
where t.to_date = '9999-01-01'
  and de.to_date = '9999-01-01'
  and de.dept_no = 'd009'
group by title;

# FROM departments;  d009 - dept_no

# 5Find the current salary of all current managers.
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
       d.dept_name                            AS Department,
       (SELECT CONCAT(first_name, ' ', last_name)
        FROM employees emp
        WHERE dm.emp_no = emp.emp_no)         AS Manager
FROM employees e
         JOIN dept_emp de on e.emp_no = de.emp_no
         JOIN departments d on de.dept_no = d.dept_no
         JOIN dept_manager dm on de.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
AND de.to_date = '9999-01-01'
ORDER BY e.first_name, e.last_name;


