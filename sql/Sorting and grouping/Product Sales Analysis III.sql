https://leetcode.com/problems/product-sales-analysis-iii/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
select
s.product_id,
f.first_year,
s.quantity,
s.price
from Sales s
JOIN
(Select product_id, MIN(year) as first_year
FROM Sales
group by product_id)f
ON f.first_year=s.year
and
f.product_id=s.product_id;
