select r.contest_id, round(count(distinct r.user_id)/(Select count(*) from Users)*100,2) as percentage from Users u inner join Register r
on u.user_id=r.user_id
group by r.contest_id
order by percentage desc,
r.contest_id;
