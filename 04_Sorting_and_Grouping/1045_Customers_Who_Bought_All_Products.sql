-- LeetCode 1045: Customers Who Bought All Products

-- Approach 1:
-- Group customers by customer_id.
-- count the unique products bought by each customer.
-- Compare it with the total number of products.

select customer_id
from Customer
group by customer_id
having count(distinct product_key) = (
    select count(*)
    from Product
);

-- Approach 2:
-- Join Customer with Product using product_key.
-- Group by customer_id.
-- Count unique products bought by each customer.
-- Compare with the total number of products.

select c1.customer_id
from Customer as c1
join Product as p1
on c1.product_key = p1.product_key
group by c1.customer_id
having count(distinct c1.product_key) = (
    select count(*)
    from Product
);
