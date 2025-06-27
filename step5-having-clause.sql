-- 1. Departments with more than 2 employees
SELECT 
    department,
    COUNT(*) AS employee_count,
    ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

-- 2. High-paying departments (avg salary > 60000)
SELECT 
    department,
    COUNT(*) AS employees,
    ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

-- 3. Cities with high total salary costs
SELECT 
    city,
    COUNT(*) AS employees,
    SUM(salary) AS total_salary_cost
FROM employees
GROUP BY city
HAVING SUM(salary) > 150000;

-- 4. WHERE vs HAVING demonstration
-- Find departments with high earners (salary > 60000)
SELECT 
    department,
    COUNT(*) AS high_earners,
    ROUND(AVG(salary), 2) AS avg_salary_of_high_earners
FROM employees
WHERE salary > 60000  -- Filter rows BEFORE grouping
GROUP BY department
HAVING COUNT(*) > 1;  -- Filter groups AFTER grouping
