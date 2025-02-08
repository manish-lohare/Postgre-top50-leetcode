-- Write your PostgreSQL query statement below
with cte(id) as (
    select accepter_id from RequestAccepted
    union all
    select requester_id from RequestAccepted
)
select distinct id,
count(id) over (partition by id) as num
from cte
order by num desc limit 1;
