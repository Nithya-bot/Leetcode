SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING SUM(product = 'A') > 0
   AND SUM(product = 'B') > 0
   AND SUM(product = 'C') = 0;
