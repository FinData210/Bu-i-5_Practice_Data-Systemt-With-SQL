--Practice 5
--Ex1
select DISTINCT CITY from STATION 
where ID%2=0
--Ex2
SELECT COUNT (CITY) - COUNT (DISTINCT CITY) FROM STATION
--EX3
SELECT DISTINCT candidate_id from candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
--EX4
select 
Round(Cast(sum(item_count * order_occurrences) / sum(order_occurrences) as Decimal),1) as mean
from items_per_order 
--EX5
SELECT candidate_id from candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id 
having count(skill) =3
--EX6 
SELECT user_id,
date(max(post_date))-date(min(post_date)) as days_between
FROM posts
where post_date>= '2021-01-01' and post_date< '2022-01-01'
group by user_id
having count(post_id)>=2
--EX7
select card_name, 
max(issued_amount)-min(issued_amount) as difference 
from monthly_cards_issued
group by card_name
order by difference DESC
--EX8
select manufacturer, 
count(drug) as drug_count,
ABS(SUM(cogs-total_sales)) as total_loss
from pharmacy_sales 
where total_sales<cogs
group by manufacturer 
order by total_loss DESC
--EX9
select * from cinema 
where id%2=1 and description <> 'boring'
order by rating DESC
--EX10
select teacher_id,
count (distinct subject_id) as cnt
from teacher 
group by teacher_id 
--EX11
select user_id, 
count(follower_id) as followers_count 
from Followers 
group by user_id
order by user_id ASC
--EX12
select class 
from Courses 
group by class 
having count(student)>=5
