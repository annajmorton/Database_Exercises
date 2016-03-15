FROM employees 
WHERE last_name LIKE '%q%'
	NOT last_name LIKE '%qu%'

SELECT * 
FROM employees 
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
	AND birth_date LIKE '%-12-25'

SELECT * 
FROM employees 
WHERE last_name LIKE 'E%'
	AND last_name LIKE '%e'

SELECT * 
FROM employees 
WHERE (first_name = 'Irena' 
	OR first_name = 'Vidya' 
	OR first_name = 'Maya')
	AND gender = 'M'


SELECT * 
FROM employees 
WHERE first_name = 'Irena' OR 'Vidya' OR 'Maya'

SELECT *
FROM employees 
WHERE last_name LIKE '%q%'

SELECT * 
FROM employees 
WHERE birth_date LIKE '%-12-25'

SELECT * 
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'

SELECT * 
FROM employees 
WHERE hire_date BETWEEN 1990-01-01 AND 1999-12-31

SELECT * 
FROM employees 
WHERE hire_date &gt; 1989-12-31

SELECT * 
FROM employees 
WHERE last_name LIKE 'E%'

SELECT * 
FROM employees 
WHERE first_name IN ('Irena','Vidya','Maya')

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek')

SELECT first_name
FROM employees
WHERE first_name LIKE '%sus%'

SELECT emp_no, first_name, last_name
FROM `employees`
WHERE emp_no BETWEEN 10026 AND 10082

SELECT DISTINCT first_name
FROM employees
WHERE first_name LIKE '%sus%'

SELECT *
FROM employees
WHERE hire_date = '1985-01-01';
