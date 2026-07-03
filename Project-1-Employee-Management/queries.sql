-- Employees with Department Names
SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Department Wise Salary
SELECT
    d.DepartmentName,
    SUM(s.Salary) AS TotalSalary
FROM Employees e
JOIN Departments d
ON e.DepartmentID = d.DepartmentID
JOIN Salaries s
ON e.EmployeeID = s.EmployeeID
GROUP BY d.DepartmentName;

-- Highest Paid Employee
SELECT
    EmployeeID,
    Salary
FROM Salaries
ORDER BY Salary DESC
LIMIT 1;
