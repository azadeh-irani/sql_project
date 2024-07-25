

create temporary table first_pageview_per_session
select 
website_session_id,
min(website_pageview_id) as first_page_view

from website_pageviews
where created_at < '2012-06-12'
group by website_session_id;



select 
pageview_url as landing_page,
count(distinct first_page_view) as session_hitting_page
from first_pageview_per_session
left join website_pageviews
on first_pageview_per_session.website_session_id =  website_pageviews.website_session_id
group by landing_page
order by session_hitting_page desc;