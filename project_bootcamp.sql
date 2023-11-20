create database bootcamp;
use bootcamp;

#Q1.Weekday Vs Weekend (order purchase timestamp) Payment Statistics.
select Weekday_Type,round(sum(payment_value),2) as Payment_Value
from bootcamp.project__bootcamp
group by Weekday_Type;

create table KPI1 as
select Weekday_Type,round(sum(payment_value),2) as Payment_Value
from bootcamp.project__bootcamp
group by Weekday_Type;



#Q2.Number of orders with review_score 5 and payment type as credit_card.
select Review_Type,count(*) as Orders_Count
from bootcamp.project__bootcamp
group by review_type
order by Orders_count;

create table kpi2 as
select Review_Type,count(*) as Orders_Count
from bootcamp.project__bootcamp
group by review_type
order by Orders_count;

#Q3.Average number of days taken for order_delivered_customer_date for pet shop.
select English_category_name as Category_Name,round(avg(Shipping_Days)) as Average_Shipping_Days
from bootcamp.project_bootcamp
where English_category_name="pet_shop";

create table kpi3 as
select English_category_name as Category_Name,round(avg(Shipping_Days)) as Average_Shipping_Days
from bootcamp.project_bootcamp
where English_category_name="pet_shop";

#Q4.Average price and Payment values from customer of Sao Paulo city.
select customer_city,round(avg(price)) as Price,round(avg(payment_value)) as Payment_Value
from bootcamp.project_bootcamp
where customer_city="sao paulo";

create table kpi4 as
select customer_city,round(avg(price)) as Price,round(avg(payment_value)) as Payment_Value
from bootcamp.project_bootcamp
where customer_city="sao paulo";

#Q5.Relationship between shipping days Vs review score.
select Review_Score,round(avg(Shipping_Days)) as Shipping_Days
from bootcamp.project_bootcamp
group by review_score
order by review_score;

create table kpi5 as
select Review_Score,round(avg(Shipping_Days)) as Shipping_Days
from bootcamp.project_bootcamp
group by review_score
order by review_score;