SELECT count(first_name), gender
FROM employees 
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

SELECT CONCAT( first_name,' ',last_name)
FROM employees 
WHERE first_name LIKE 'E%'
	AND last_name LIKE '%e';

SELECT DATEDIFF( CURDATE(),`hire_date`) 
FROM employees 
WHERE (hire_date LIKE '199%')
	AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;
	
	
SELECT last_name, count(last_name)
FROM employees 
WHERE (last_name LIKE '%q%')
	AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY	count(last_name);



