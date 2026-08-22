# Write your MySQL query statement below
SELECT v1.customer_id, count(v1.visit_id) as count_no_trans
FROM Visits as v1
Left JOIN Transactions as t1 on 
v1.visit_id = t1.visit_id
where transaction_id is NUll
group by customer_id;
