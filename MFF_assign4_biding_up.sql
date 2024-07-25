SELECT device_type,
count(distinct website_sessions.website_session_id) as device_sessions,
count(distinct orders.order_id) as device_orders,
count(distinct orders.order_id)/count(distinct website_sessions.website_session_id) as cvr
FROM mavenfuzzyfactory.website_sessions
left join orders
on website_sessions.website_session_id = orders.website_session_id
where website_sessions.created_at < '2012-05-11'
and utm_source='gsearch'
and utm_campaign='nonbrand'
Group by device_type
;