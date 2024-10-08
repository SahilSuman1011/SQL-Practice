# Write your MySQL query statement below
-- we will use both cross join and inner join 
SELECT s.student_id , s.student_name , sub.subject_name ,
COUNT(e.subject_name) AS attended_exams

FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e
ON s.student_id = e.student_id AND sub.subject_name = e.subject_name

GROUP BY student_id, s.student_name, sub.subject_name
ORDER BY s.student_id , sub.subject_name