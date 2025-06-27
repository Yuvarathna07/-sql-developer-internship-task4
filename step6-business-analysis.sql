-- 1. Department Performance Dashboard
SELECT 
    department,
    COUNT(*) AS team_size,
    SUM(salary) AS department_budget,
    ROUND(AVG(salary), 2) AS avg_salary,
    MAX(salary) AS top_salary,
    ROUND(SUM(salary) / COUNT(*), 2) AS cost_per_employee
FROM employees
GROUP BY department
ORDER BY department_budget DESC;

-- 2. Salary Analysis by Experience Level
SELECT 
    CASE 
        WHEN DATEDIFF(CURDATE(), hire_date) < 365 THEN 'New (< 1 year)'
        WHEN DATEDIFF(CURDATE(), hire_date) < 1095 THEN 'Experienced (1-3 years)'
        ELSE 'Veteran (3+ years)'
    END AS experience_level,
    COUNT(*) AS employees,
    ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY experience_level
ORDER BY avg_salary DESC;

-- 3. Geographic Cost Analysis
SELECT 
    city,
    COUNT(*) AS employees,
    SUM(salary) AS total_cost,
    ROUND(AVG(salary), 2) AS avg_salary,
    COUNT(DISTINCT department) AS departments_present
FROM employees
GROUP BY city
ORDER BY total_cost DESC;

-- 4. High-Value Departments Analysis
SELECT 
    department,
    COUNT(*) AS employees,
    SUM(salary) AS total_investment,
    ROUND(AVG(salary), 2) AS avg_salary,
    CASE 
        WHEN AVG(salary) > 70000 THEN 'High Value'
        WHEN AVG(salary) > 55000 THEN 'Medium Value'
        ELSE 'Entry Level'
    END AS department_tier
FROM employees
GROUP BY department
HAVING COUNT(*) >= 2
ORDER BY avg_salary DESC;

-- 5. Comprehensive Company Analysis
SELECT 
    'Company Overview' AS analysis_type,
    COUNT(*) AS total_employees,
    COUNT(DISTINCT department) AS departments,
    COUNT(DISTINCT city) AS locations,
    SUM(salary) AS total_salary_cost,
    ROUND(AVG(salary), 2) AS company_avg_salary
FROM employees;
