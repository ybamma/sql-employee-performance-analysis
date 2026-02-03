CREATE TABLE employee_information (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    joining_date DATE
);

CREATE TABLE last_quarter_bonus (
    employee_id INT,
    bonus_amount DECIMAL(10,2),
    bonus_date DATE
);