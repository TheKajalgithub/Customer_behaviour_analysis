
select * from customer
select distinct category,item_purchased from customer group by category ;

select distinct age_group, round(sum(purchase_amount),2) as revenue from customer group by age_group order by revenue desc ;

select distinct age_group, round(sum(purchase_amount),2) as revenue from customer group by age_group ;


select * from customer


select distinct age_group, round(sum(purchase_amount),2) as revenue from customer group by age_group ;

select distinct age, round(sum(purchase_amount),2) as revenue from customer group by age ;

select subscription_status,count(customer_id) as repeat_buyers from customer where previous_purchases >=5 group by subscription_status;

select * from customer

with cte as ( select category, item_purchased, count(customer_id) as total_orders, row_number() over(partition by category order by count(customer_id) desc) as item_rank from customer group by category,item_purchased ) select item_rank,category,item_purchased,total_orders from cte where item_rank <= 3;


select distinct category,item_purchased,sum(purchase_amount) as total_revenue from customer group by category ,item_purchased order by total_revenue limit 3;

select distinct category,item_purchased,sum(purchase_amount) as most_sell from customer group by category ,item_purchased order by most_sell limit 3;

select distinct category,sum(purchase_amount) as most_sell from customer group by category order by most_sell limit 3;

 select * from customer

select distinct category,sum(purchase_amount) as most_sell from customer group by category order by most_sell limit 3;


select * from customer
