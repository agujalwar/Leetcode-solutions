#Write an SQL query to find the employees who earn more than their managers.
select a.name as Employee
from Employee a
JOIN Employee b
on b.id = a.managerId 
where a.salary > b.salary
