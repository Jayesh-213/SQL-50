# Write your MySQL query statement below 

SELECT p1.project_id, 
    ROUND(AVG(e1.experience_years), 2) AS average_years 
FROM Project AS p1 
JOIN Employee AS e1 
    ON p1.employee_id = e1.employee_id 
GROUP BY p1.project_id;