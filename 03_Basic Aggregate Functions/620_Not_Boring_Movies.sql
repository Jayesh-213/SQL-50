# Write your MySQL query statement below
Select * 
FROM Cinema as c1
Where c1.id % 2 != 0 AND c1.description != "boring"
order by rating desc;
