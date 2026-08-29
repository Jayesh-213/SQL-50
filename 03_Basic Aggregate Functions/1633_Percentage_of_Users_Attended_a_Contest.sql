# Write your MySQL query statement below
Select  r1.contest_id , 
round(count(distinct r1.user_id)*100 / (select count(*) from users),2) as percentage
From Users as u1
join Register as r1
On u1.user_id = r1.user_id 
group by r1.contest_id
order by percentage DESC, r1.contest_id asc
