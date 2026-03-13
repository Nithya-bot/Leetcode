https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50

/* Write your T-SQL query statement below */
select name from Customer
where referee_id!=2 OR referee_id IS null;
