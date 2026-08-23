https://leetcode.com/problems/confirmation-rate/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
Select s.user_id,
ROUND(
    COALESCE(
        AVG(
            case when
c.action='confirmed'then 1 else 0
end
        ),
        0
),2
) AS confirmation_rate

FROM Signups s
left join Confirmations c on
s.user_id=c.user_id
group by s.user_id;
