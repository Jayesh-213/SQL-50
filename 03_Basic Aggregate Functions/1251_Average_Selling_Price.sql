# Write your MySQL query statement below
SELECT p1.product_id,
ROUND(COALESCE(SUM(p1.price * s1.units) / SUM(s1.units), 0),2) AS average_price
FROM Prices as p1
LEFT JOIN UnitsSold as s1
ON p1.product_id = s1.product_id
AND s1.purchase_date BETWEEN p1.start_date AND p1.end_date
GROUP BY p1.product_id;
