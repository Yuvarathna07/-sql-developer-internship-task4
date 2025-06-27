

-- 1. COUNT: How many employees do we have?
SELECT COUNT(*) AS total_employees 
FROM employees;

-- 2. SUM: What's our total salary expense?
SELECT SUM(salary) AS total_salary_cost 
FROM employees;

-- 3. AVG: What's the average salary?
SELECT ROUND(AVG(salary), 2) AS average_salary 
FROM employees;

-- 4. MAX: Who gets the highest salary?
SELECT MAX(salary) AS highest_salary 
FROM employees;

-- 5. MIN: What's the lowest salary?
SELECT MIN(salary) AS lowest_salary 
FROM employees;

-- 6. Complete summary in one query
SELECT 
    COUNT(*) AS total_employees,
    SUM(salary) AS total_cost,
    ROUND(AVG(salary), 2) AS avg_salary,
    MAX(salary) AS max_salary,
    MIN(salary) AS min_salary,
    MAX(salary) - MIN(salary) AS salary_range
FROM employees;
