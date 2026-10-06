Select v.customer_id, COUNT(v.customer_id) as count_no_trans
From Visits v LEFT JOIN Transactions t on
v.visit_id = t.visit_id
where t.visit_id is null
group by v.customer_id
order by count_no_trans;
