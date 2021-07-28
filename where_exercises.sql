USE employees
# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY last_name;

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
ORDER BY last_name;

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY first_name;

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT *
FROM employees
WHERE first_name = 'Irena' AND gender = 'M'
   OR first_name = 'Vidya' AND gender = 'M'
   OR first_name = 'Maya' AND gender = 'M'
ORDER BY first_name;

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
FROM employees
WHERE last_name LIKE ('e%')
   OR last_name LIKE ('%e');

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT *
FROM employees
WHERE (
        last_name LIKE ('e%')
        OR last_name LIKE ('%e')
    )
  AND (
        first_name = 'Irena'
        OR first_name = 'Vidya'
        OR first_name = 'Maya'
    )
ORDER BY first_name;

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name LIKE ('%q%')
AND last_name NOT LIKE ('%qu%')
ORDER BY last_name;