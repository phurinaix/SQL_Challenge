CREATE PROCEDURE solution()
BEGIN
    SELECT dep_name FROM departments
    WHERE NOT EXISTS (
        SELECT * FROM employees WHERE employees.department = departments.id
    )
    ORDER BY id;
END
