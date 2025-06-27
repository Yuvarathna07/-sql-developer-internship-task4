

-- 1. Count employees by department
SELECT 
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department
ORDER BY employee_count DESC;

-- 2. Average salary by department
SELECT 
    department,
    COUNT(*) AS employees,
    ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;

-- 3. Total salary cost by department
SELECT 
    department,
    COUNT(*) AS employees,
    SUM(salary) AS total_budget
FROM employees
GROUP BY department
ORDER BY total_budget DESC;

-- 4. Complete department analysis
SELECT 
    department,
    COUNT(*) AS employee_count,
    SUM(salary) AS total_budget,
    ROUND(AVG(salary), 2) AS avg_salary,
    MAX(salary) AS highest_paid,
    MIN(salary) AS lowest_paid
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;
