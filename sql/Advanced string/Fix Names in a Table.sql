https://leetcode.com/problems/fix-names-in-a-table/description/?envType=study-plan-v2&envId=top-sql-50
  
SELECT
user_id, UPPER(LEFT(name, 1)) + LOWER(SUBSTRING(name, 2, LEN(name))) AS name
FROM Users order by user_id;
