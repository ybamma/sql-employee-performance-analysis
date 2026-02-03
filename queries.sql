-- 1. Employees in HR department with bonus >= 5000
SELECT e.employee_id, e.employee_name, b.bonus_amount
FROM employee_information e
JOIN last_quarter_bonus b
ON e.employee_id = b.employee_id
WHERE e.department = 'HR'
AND b.bonus_amount >= 5000;

-- 2. Total bonus paid per department
SELECT e.department, SUM(b.bonus_amount) AS total_bonus
FROM employee_information e
JOIN last_quarter_bonus b
ON e.employee_id = b.employee_id
GROUP BY e.department;

-- 3. Average bonus across all employees
SELECT AVG(bonus_amount) AS average_bonus
FROM last_quarter_bonus;

-- 4. Employees who did not receive any bonus
SELECT e.employee_id, e.employee_name
FROM employee_information e
LEFT JOIN last_quarter_bonus b
ON e.employee_id = b.employee_id
WHERE b.employee_id IS NULL;