-- Create database
CREATE DATABASE IF NOT EXISTS company_analysis;
USE company_analysis;

-- Create employees table
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    hire_date DATE NOT NULL,
    city VARCHAR(30) NOT NULL,
    age INT NOT NULL
);

-- Insert sample data for analysis
INSERT INTO employees (name, department, salary, hire_date, city, age) VALUES
('John Smith', 'Sales', 50000.00, '2020-01-15', 'New York', 28),
('Jane Doe', 'Engineering', 75000.00, '2019-03-20', 'San Francisco', 32),
('Mike Johnson', 'Sales', 55000.00, '2021-06-10', 'Chicago', 26),
('Sarah Wilson', 'Engineering', 80000.00, '2018-11-05', 'San Francisco', 35),
('Tom Brown', 'Marketing', 60000.00, '2020-02-28', 'New York', 29),
('Lisa Davis', 'Marketing', 65000.00, '2019-09-12', 'Chicago', 31),
('David Miller', 'Sales', 52000.00, '2022-04-18', 'New York', 24),
('Amy Taylor', 'Engineering', 78000.00, '2021-12-03', 'San Francisco', 33),
('Chris Lee', 'HR', 58000.00, '2020-08-22', 'Chicago', 27),
('Emma Garcia', 'HR', 62000.00, '2019-05-30', 'New York', 30);

-- Verify data insertion
SELECT * FROM employees;
