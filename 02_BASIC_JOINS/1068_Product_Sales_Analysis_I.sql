-- Write your PostgreSQL query statement below
Select product_name,year,price
From Sales as p1
JOIN Product as s1
ON s1.product_id = p1.product_id;
