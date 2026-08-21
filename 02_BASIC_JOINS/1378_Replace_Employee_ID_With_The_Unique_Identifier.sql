# Write your MySQL query statement below
Select e2.Unique_id, e1.name
From Employees as e1
Left JOIN EmployeeUNI as e2
ON e1.id = e2.id
 
