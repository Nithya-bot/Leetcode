https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50

select s.student_id,
s.student_name,
c.subject_name,
COUNT(e.student_id) as attended_exams
from Students s 
CROSS JOIN Subjects c
LEFT JOIN Examinations e on
s.student_id = e.student_id and
c.subject_name = e.subject_name
group by s.student_id, c.subject_name
order by s.student_id, c.subject_name;
