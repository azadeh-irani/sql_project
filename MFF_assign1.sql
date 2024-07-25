-- analyzing traffic source

select * from website_sessions;

select utm_source, utm_campaign, http_referer, count(distinct website_session_id) as total_sessions
from website_sessions
where created_at < '2012-04-12'
group by utm_source, utm_campaign, http_referer
order by total_sessions desc;
select * from orders;
