# Write your MySQL query statement below

select class from
(select class, count(DISTINCT student) as class_count
from Courses
group by class) as temp
where class_count >= 5