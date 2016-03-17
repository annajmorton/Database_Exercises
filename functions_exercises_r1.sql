SELECT count(first_name) AS 'gender count', gender
FROM employees 
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

SELECT CONCAT( first_name,' ',last_name) AS 'full_name'
FROM employees 
WHERE last_name LIKE 'e%e'
GROUP BY full_name;

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name',
DATEDIFF( CURDATE(),`hire_date`) AS 'days_at_company'
FROM employees 
WHERE (hire_date LIKE '199%')
	AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date;
	
	
SELECT CONCAT(first_name, ' ', last_name) AS 'full_name', count(last_name)
FROM employees 
WHERE (last_name LIKE '%q%')
	AND last_name NOT LIKE '%qu%'
GROUP BY full_name
ORDER BY count(last_name) DESC;

SELECT concat(emp_no, ' - ', last_name, ', ', first_name ) AS 'full_name', birth_date AS 'DOB'
FROM employees
LIMIT 10 OFFSET 0;


