select
year(created_at) as yr,
week(created_at) as wk,
Min(date(created_at)) as week_started_at,
count(distinct website_session_id) as sessions
from website_sessions
where created_at < '2012-05-10'
And utm_source= 'gsearch'
and utm_campaign= 'nonbrand'
group by year(created_at), week(created_at)
;

