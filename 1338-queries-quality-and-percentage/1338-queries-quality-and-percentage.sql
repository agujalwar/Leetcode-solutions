# Write your MySQL query statement below
select 
query_name, 
round( sum(rating/position)/(count(1)),2) as quality,
ifnull(round(sum(case when rating<3 then 1 else 0 end )/count(1)*100,2),0) as poor_query_percentage
from queries
where query_name is not null
group by query_name;