-- traffic source conversion rate
select utm_source, utm_campaign, 
count(distinct website_sessions.website_session_id) as total_session,
count(distinct orders.order_id) as total_orders,
count(distinct orders.order_id)/count(distinct website_sessions.website_session_id) as cvr
from website_sessions
left join orders
	on orders.website_session_id = website_sessions.website_session_id
where website_sessions.created_at < '2012-04-14'
		and utm_source= 'gsearch' 
        and utm_campaign= 'nonbrand';

select * from orders;
        
        
        
