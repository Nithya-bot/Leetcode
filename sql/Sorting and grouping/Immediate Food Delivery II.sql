https://leetcode.com/problems/immediate-food-delivery-ii/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
select 
Round(sum(
    case
        when order_date=customer_pref_delivery_date then 1 else 0
    end
) * 100.0/count(*), 2) as immediate_percentage
from Delivery
where (order_date, customer_id) IN
(select min(order_date), customer_id from Delivery group by customer_id);
