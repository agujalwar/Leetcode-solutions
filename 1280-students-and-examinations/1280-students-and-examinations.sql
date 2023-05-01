# Write your MySQL query statement below
select stu.student_id, stu.student_name,sub.subject_name, count(e.subject_name) as attended_exams
from students as stu
join Subjects as sub
left join Examinations as e
on stu.student_id=e.student_id and sub.subject_name=e.subject_name
group by stu.student_id, sub.subject_name
order by student_id, subject_name;

#SELECT student.student_id,student.student_name,subject.subject_name,COUNT(exam.subject_name) #as attended_exams
#FROM Students as student
#JOIN Subjects as subject
#LEFT JOIN Examinations as exam
#ON student.student_id=exam.student_id AND subject.subject_name=exam.subject_name
#GROUP BY student.student_id,subject.subject_name
#ORDER BY student_id,subject_name;