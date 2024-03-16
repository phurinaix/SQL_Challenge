CREATE PROCEDURE solution()
BEGIN
    SELECT departments.dep_name, employees.emp_name 
    FROM departments CROSS JOIN employees 
    ORDER BY departments.dep_name, employees.emp_name;
END
