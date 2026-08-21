https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
select p.product_name ,SUM(o.unit) as unit from Products p 
join Orders o on p.product_id=o.product_id
where DATE_FORMAT(o.order_date, '%Y-%m') = '2020-02' 
group by p.product_id, p.product_name
having sum(o.unit)>=100;
