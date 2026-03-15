https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50

select * from Cinema
where description!='boring' and id%2=1
ORDER BY rating desc;
