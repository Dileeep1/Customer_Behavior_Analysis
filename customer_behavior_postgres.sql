--Q1. what is the total revenue genrated by male vs. female customers?
select gender, SUM(purchase_amount)as revenue
from customer
group by gender

--Q2 which customer used a discount but stil more than the average purchase amount?
select customer_id, purchase_amount
from customer
where discount_applied = 'Yes' and purchase_amount >=(select AVG(purchase_amount) from customer)

--Q3 which are the top 5 products with the highest average review rating?
select item_purchased, AVG(review_rating::numeric) as "Average produc Rating"
from customer
group by item_purchased
order by avg(review_rating) desc
limit 5;

--Q4 compare the averge purchase amounts between standard and express shiping.
select shipping_type,
ROUND(AVG(purchase_amount),2)
from customer
where shipping_type in ('Standard', 'Express')
group by shipping_type

--Q5 do subscribe custmers spend more? compare average  spend and total revenue between subscribe and non-subcribe.
select subscription_status,
COUNT(customer_id) as total_customer,
ROUND(AVG(purchase_amount),2) as avg_speed,
ROUND (SUM(purchase_amount),2) as total_revenue
from customer
group by subscripttion_status
order by total_revenue, avg_spend desc;

--Q6 which  5 products have the highest percentage of  purchase with discounts applied?
select item_purchased,
ROUND( 100 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) as discount_rate
from customer 
group by item_purchased
order by discount_rate desc
limit 5;

--Q7segement customers into new, returning and loyal based on their total number of previous puchases, and show the count of each segement.
with customer_type as (
select customer_id, previous_purchases,
CASE
    when previous_purchases = 1 then  'New'
	when previous_purchases BETWEEN 2 AND 10 then 'returning'
	else 'loyal'
	End as customer_segment
	from customer
)
select customer_segment, count(*) as "Number of customer"
from customer_type
group by customer_segment

--Q8 what are the top 3 most puchased products within each category?
with item_counts as (
select category,
item_purchased,
COUNT(customer_id) as total_orders,
ROW_number() over(partition by category order by count (customer_id) DESC) as item_rank
from customer
group by category, item_purchased
)
select item_rank, category,item_purchased,total_orders
from item_counts
where item_rank <3 ;

--Q9 Are customers who are repeat buyers( more than 5 previous purchases) also likly to subscribe?
select  subscription_status,
count(customer_id) as repeat_buyers
from customer
where previous_purchases > 5
group by subscription_status

--Q10 What is the revenue contribution of each age group
select age_group,
SUM(purchase_amount) as total_revenue
from customer
group by age_group
order by total_Revenue desc;

