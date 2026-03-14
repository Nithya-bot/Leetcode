https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50

select p.product_name, S.year, S.price
from sales S
LEFT JOIN Product p on S.product_id=p.product_id;
