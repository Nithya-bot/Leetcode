https://leetcode.com/problems/average-selling-price/description/?envType=study-plan-v2&envId=top-sql-50

select p.product_id, ROUND(ISNULL(SUM(p.price * u.units) * 1.0 / NULLIF(SUM(u.units),0),0),2) as average_price from Prices p left join UnitsSold u
on p.product_id=u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
group by p.product_id; 
