# Write your MySQL query statement below
SELECT  activity_date  as day, 
COUNT(distinct user_id) as active_users
from activity
where activity_date between date_sub('2019-07-27', interval 29 day) and '2019-07-27'
group by day ;
