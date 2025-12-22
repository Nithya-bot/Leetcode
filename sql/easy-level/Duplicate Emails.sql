/* Write your T-SQL query statement below */

/********Aggregate functiion******/
/* Select email AS Email
from Person GROUP BY email
having COUNT(email)>1 */

/********Inner join******/


SELECT DISTINCT P1.email AS Email
FROM Person AS P1
JOIN Person AS P2
  ON P1.email = P2.email
WHERE P1.id <> P2.id
