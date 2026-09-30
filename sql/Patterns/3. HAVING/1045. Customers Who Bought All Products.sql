select customer_id 
from Customer 
group by customer_id
having COUNT(DISTINCT product_key) = (select count(*) from Product);


How do we know a JOIN isn't needed?

Ask yourself:

“Do I need columns from both tables to evaluate the condition?”

Here, you need:

From Customer: customer_id, product_key
From Product: only the total number of products

You're not matching individual rows between Customer and Product.
