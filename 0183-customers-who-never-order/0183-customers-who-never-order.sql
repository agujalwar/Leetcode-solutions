# Write your MySQL query statement below

/*
select c.name as Customers
from Customers as c
left join
Orders as o
on c.id = o.customerId
where o.customerId IS null
*/

select name as Customers
from Customers
where Id not in 
(
    select customerId from Orders 
    
    #where Orders.customerId = Customers.id
)