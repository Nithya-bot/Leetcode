https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50

select query_name, Round(AVG(rating * 1.0/position),2) as quality,
ROUND(SUM(Case when rating<3 then 1 else 0 end) * 100.0/count(*),2) AS poor_query_percentage From Queries
group by query_name;
