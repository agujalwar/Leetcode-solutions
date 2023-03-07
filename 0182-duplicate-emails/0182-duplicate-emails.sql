/*
select email as Email
from
(select email, count(email) as c
from Person
group by email ) as temp
where c > 1
*/

SELECT email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;