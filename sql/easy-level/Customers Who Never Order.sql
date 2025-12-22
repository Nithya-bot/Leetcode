/*-------Left join-------*/
SELECT c.name as Customers
FROM Customers AS c
LEFT JOIN Orders AS o ON c.id = o.customerID
WHERE o.customerId IS NULL
 
/*-------Subquery-------*/

Select name as Customers
from Customers
where id NOT IN(Select customerId from Orders) */
