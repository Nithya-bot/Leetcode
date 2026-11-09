select p.product_name, sum(o.unit) as unit from 
Products p inner join Orders o 
on p.product_id = o.product_id
where MONTH(o.order_date) = '02' and YEAR(o.order_date) = '2020'
group by p.product_id, p.product_name
having sum(o.unit) >= 100;

/* SELECT
    p.product_name,
    SUM(o.unit) AS unit
FROM Products p
JOIN Orders o
    ON p.product_id = o.product_id
WHERE o.order_date >= '2020-02-01'
  AND o.order_date < '2020-03-01'
GROUP BY p.product_id, p.product_name
HAVING SUM(o.unit) >= 100; */
