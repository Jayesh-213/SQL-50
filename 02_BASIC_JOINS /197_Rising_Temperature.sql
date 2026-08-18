# Write your MySQL query statement below
Select t.id
From  Weather as t  # t = today temp, y = yestarday temp 
JOIN Weather as y
On t.recordDate = Date_ADD(y.recordDate , Interval 1 day)
where t.temperature > y.temperature;
