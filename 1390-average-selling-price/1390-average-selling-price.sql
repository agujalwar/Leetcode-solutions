# Write your MySQL query statement below
select pri.product_id,
ifnull(round((sum(pri.price*uni.units)/sum(uni.units)),2),0) average_price
from Prices pri left join
    UnitsSold uni 
    on pri.product_id=uni.product_id
    and uni.purchase_date between pri.start_date and pri.end_date
group by pri.product_id