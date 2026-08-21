https://leetcode.com/problems/delete-duplicate-emails/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
DELETE P1 from Person P1
JOIN Person P2 on
P1.email=P2.email and
P1.id>P2.id;
