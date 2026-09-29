# Write your MySQL query statement below
select p.product_id, COALESCE(ROUND(SUM(p.price * u.units)/SUM(u.units),2),0) as average_price
from Prices p LEFT JOIN UnitsSold u 
on p.product_id = u.product_id
AND u.purchase_date >= p.start_date
AND u.purchase_date <= p.end_date
group by p.product_id;
