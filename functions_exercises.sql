USE employees;

# Copy the order_by_exercises.sql script and save it as functions_exercises.sql.

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM employees
WHERE last_name LIKE ('e%')
   OR last_name LIKE ('%e')
ORDER BY emp_no;


# Find all employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAYOFMONTH(birth_date) = 25
ORDER BY YEAR(birth_date);

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAYOFMONTH(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY YEAR(hire_date);

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAYOFMONTH(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date DESC;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT *, datediff(CURDATE(), hire_date)
AS 'Time_Worked'
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAYOFMONTH(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY Time_Worked;
