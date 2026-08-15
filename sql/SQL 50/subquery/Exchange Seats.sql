https://leetcode.com/problems/exchange-seats/submissions/2107452492/?envType=study-plan-v2&envId=top-sql-50

Select 
    CASE 
    WHEN id%2=1 and id < (Select MAX(id) from Seat)
    THEN id+1
    WHEN id%2=0
    THEN id-1
    ELSE id
    END as id,student
    FROM Seat
    order by id;
