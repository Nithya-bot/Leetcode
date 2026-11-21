# Write your MySQL query statement below
select s.user_id,
ROUND(
    SUM(CASE WHEN action = 'confirmed' THEN 1 ELSE 0 END)
    / COUNT(*),
    2
) AS confirmation_rate
FROM Signups s left join Confirmations c on
s.user_id=c.user_id 
group by s.user_id;

/*count(*) after left join 
Imagine this data:

Signups
user_id
1
2
3

Confirmations
user_id	action
1	confirmed
1	timeout
2	confirmed
2	confirmed

After the LEFT JOIN:
s.user_id	c.user_id	action
1	1	confirmed
1	1	timeout
2	2	confirmed
2	2	confirmed
3	NULL	NULL

For user 3, COUNT(*) returns 1, because the LEFT JOIN preserves the unmatched row.

But we need to count only actual confirmation records.

Therefore, use:
COUNT(c.user_id)
*/

*
