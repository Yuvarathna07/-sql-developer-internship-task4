-- 1. Group by department and city
SELECT 
    department,
    city,
    COUNT(*) AS employees,
    ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department, city
ORDER BY department, city;

-- 2. Analyze by city
SELECT 
    city,
    COUNT(*) AS employees,
    COUNT(DISTINCT department) AS departments,
    ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY city
ORDER BY employees DESC;

-- 3. Age group analysis
SELECT 
    CASE 
        WHEN age < 30 THEN 'Young (Under 30)'
        WHEN age BETWEEN 30 AND 35 THEN 'Mid-Career (30-35)'
        ELSE 'Senior (35+)'
    END AS age_group,
    COUNT(*) AS employees,
    ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY age_group
ORDER BY avg_salary DESC;

-- 4. Hiring year analysis
SELECT 
    YEAR(hire_date) AS hire_year,
    COUNT(*) AS new_hires,
    ROUND(AVG(salary), 2) AS avg_starting_salary
FROM employees
GROUP BY YEAR(hire_date)
ORDER BY hire_year;
