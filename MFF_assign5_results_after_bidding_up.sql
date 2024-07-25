select 
-- year(created_at) as yr,
-- week(created_at) as wk,
-- device_type,
min(date(created_at)),
count(distinct case when device_type = 'desktop' then website_session_id else null end ) as desktop_session ,
count(distinct case when device_type = 'mobile' then website_session_id else null end ) as mobile_session 

from website_sessions
where created_at < '2012-06-09' and created_at > '2012-04-15'
and utm_source='gsearch'
and utm_campaign='nonbrand'
group by week(created_at),year(created_at)
;
